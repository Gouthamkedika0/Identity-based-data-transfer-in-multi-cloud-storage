using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Security.Cryptography;
using System.IO; 

public partial class UserRegister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    string mailid = "cloudcomputing96@gmail.com";
    string pwd = "clouddata12345";
    string to, subject = "Secret Key", message,enctext;
    protected void Page_Load(object sender, EventArgs e)
    {
        autoid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
        Label16.Text = "";
    }
    private void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        autoid();
    }
    private void autoid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select max(ID) from UserRegister ", con);
        object result = cmd.ExecuteScalar();
        int ID;
        if (result.GetType() != typeof(DBNull))
        {
            ID = Convert.ToInt32(result);
        }
        else
        {
            ID = 0;
        }
        ID = ID + 1;
        Label1.Text = ID.ToString();

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Random rm = new Random();
        int rno = rm.Next(11,99);

        Encrypt(rno.ToString());
        string kee = enctext;

        string gender = RadioButtonList1.SelectedItem.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into UserRegister values('"+Label1.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+gender+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+kee+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        sendmail();
        Label16.Text = "Registered Successfully....";
        clear();
    }
    private void sendmail()
    {
        try
        {

            to = TextBox3.Text;

            message = "<hr><br>" + "Secret Key:" + enctext + "<br><br>";
            NetworkCredential loginInformation = new NetworkCredential(mailid, pwd);
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(mailid);
            msg.To.Add(new MailAddress(to));
            msg.Subject = subject;
            msg.Body = message;
            msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInformation;
            client.Send(msg);
        }
        catch { }
    }
    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
                enctext = clearText;
            }
        }
        return clearText;
    }
}
