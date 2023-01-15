using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Net.Mail;


public partial class Userfiles : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    string decryptmsg,fileID;
    public static bool dec1, dec2, dec3;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label18.Text = Session["ffnam"].ToString();
        fileID = Session["ffid"].ToString();
        Label21.Text = Session["usernam"].ToString();
        Label25.Text = Session["Email"].ToString();
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select Server1 from splitbl where Filename = '" + Label18.Text + "'", con);
            SqlCommand cmd2 = new SqlCommand("select Server2 from splitbl where Filename = '" + Label18.Text + "'", con);
            SqlCommand cmd3 = new SqlCommand("select Server3 from splitbl where Filename = '" + Label18.Text + "'", con);
            TextBox1.Text = (string)cmd1.ExecuteScalar();
            TextBox2.Text = (string)cmd2.ExecuteScalar();
            TextBox3.Text = (string)cmd3.ExecuteScalar();
            con.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Decrypting(TextBox1.Text);
        TextBox1.Text = decryptmsg;
        dec1 = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Decrypting(TextBox2.Text);
        TextBox2.Text = decryptmsg;
        dec2 = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Decrypting(TextBox3.Text);
        TextBox3.Text = decryptmsg;
        dec3 = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (dec1 == true && dec2 == true && dec3 == true)
        {
            send();
            Button1.Visible = false;
            Panel2.Visible = true;
        }
        else
        {
            Label16.Text = "Decrypt All the File Blocks";
        }
    }
    public void send()
    {
        con.Open();
        SqlCommand cmm = new SqlCommand("select SecretKey from UserRegister where Username = '" + Label21.Text + "'", con);
        Label26.Text = (string)cmm.ExecuteScalar();
        con.Close();

        SmtpClient sc = new SmtpClient();

        MailMessage Msg = new MailMessage();
        // Sender e-mail address.
        Msg.From = new MailAddress(Label25.Text);
        // Recipient e-mail address.
        Msg.To.Add(Label25.Text);
        Msg.Subject = "Your Secret key Details";
        Msg.Body = "Hi, <br/>Hello.., Mail From Admin.. <br/><br/>" + Label26.Text;
        Msg.IsBodyHtml = true;
        // your remote SMTP server IP.
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("chintugoutham1122@gmail.com", "@Goutham112233");
        smtp.EnableSsl = true;
        smtp.Send(Msg);
    }
    private string Decrypting(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
                decryptmsg = cipherText;
            }
        }
        return cipherText;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmm = new SqlCommand("select SecretKey from UserRegister where Username = '" + Label21.Text + "'", con);
        string seckee = (string)cmm.ExecuteScalar();
        con.Close();

        if (TextBox4.Text == seckee)
        {
            con.Open();
            SqlCommand com = new SqlCommand("select FileID,Subject,Filename,Filedata from fileupload where FileID=@FileID", con);
            com.Parameters.AddWithValue("@FileID", fileID);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = dr["Filename"].ToString();
                Response.AddHeader("content-disposition", "Filedata;Filename=" + dr["Filename"].ToString());     // to open file prompt Box open or Save file         
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])dr["Filedata"]);
                Response.End();
            }
            con.Close();
            Panel2.Visible = false;
            Button1.Visible = true;
        }
        else
        {
            Label16.Text = "Incorrect Key..";
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
