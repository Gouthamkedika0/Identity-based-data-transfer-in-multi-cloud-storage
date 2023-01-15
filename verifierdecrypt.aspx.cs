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

public partial class verifierdecrypt : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    string decryptmsg;
    public static bool dec1, dec2, dec3;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label18.Text = Session["filenam"].ToString();

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
        con.Open();
        SqlCommand cmd = new SqlCommand("select S1Key from splitbl where Filename = '" + Label18.Text + "'", con);
        string Ser1 = (string)cmd.ExecuteScalar();
        con.Close();

        if (Ser1 == TextBox4.Text)
        {
            Decrypting(TextBox1.Text);
            TextBox1.Text = decryptmsg;
            dec1 = true;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select S2Key from splitbl where Filename = '" + Label18.Text + "'", con);
        string Ser2 = (string)cmd.ExecuteScalar();
        con.Close();
        if (Ser2 == TextBox5.Text)
        {
            Decrypting(TextBox2.Text);
            TextBox2.Text = decryptmsg;
            dec2 = true;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select S3Key from splitbl where Filename = '" + Label18.Text + "'", con);
        string Ser3 = (string)cmd.ExecuteScalar();
        con.Close();
        if (Ser3 == TextBox6.Text)
        {
            Decrypting(TextBox3.Text);
            TextBox3.Text = decryptmsg;
            dec3 = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (dec1 == true && dec2 == true && dec3 == true)
        {
            Response.Redirect("verifieraccept.aspx");
        }
        else
        {
            Response.Redirect("verifieraccept.aspx");
            //Label16.Text = "Decrypt All the File Blocks";
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select S1Key from splitbl where Filename = '"+Label18.Text+"'",con);
        TextBox4.Text = (string)cmd.ExecuteScalar();
        con.Close();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select S2Key from splitbl where Filename = '" + Label18.Text + "'", con);
        TextBox5.Text = (string)cmd.ExecuteScalar();
        con.Close();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select S3Key from splitbl where Filename = '" + Label18.Text + "'", con);
        TextBox6.Text = (string)cmd.ExecuteScalar();
        con.Close();
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
}
