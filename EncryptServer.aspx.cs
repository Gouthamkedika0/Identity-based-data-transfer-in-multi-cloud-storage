using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Net;
using System.Net.Sockets;
using System.Data.SqlClient;
using System.Configuration;

public partial class EncryptServer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    public FileStream fs;
    List<string> Packets = new List<string>();
    int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        autoid();
        Label21.Text = Session["Ownername"].ToString();
        if (!IsPostBack)
        {       
            Label18.Text = Session["filename"].ToString();
            string fname = Server.MapPath("~/upload/") + Label18.Text;

            string fnamwoex = Path.GetFileNameWithoutExtension(fname);
            string ext = Path.GetExtension(fname);

            fs = new FileStream(fname, FileMode.Open, FileAccess.Read);
            int FileLength = (int)fs.Length / 1024;
            string name = Path.GetFileName(fname);

            SplitFile(fname, Convert.ToInt32(3));
            ListBox1.Items.Add(Packets[0].ToString());
            ListBox1.Items.Add(Packets[1].ToString());
            ListBox1.Items.Add(Packets[2].ToString());

            TextBox1.Text = File.ReadAllText(Server.MapPath("~/upload/split/") + fnamwoex + ".0" + ext);
            TextBox2.Text = File.ReadAllText(Server.MapPath("~/upload/split/") + fnamwoex + ".1" + ext);
            TextBox3.Text = File.ReadAllText(Server.MapPath("~/upload/split/") + fnamwoex + ".2" + ext);
        }       
    }
    private void autoid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select max(FileID) from splitbl ", con);
        object result = cmd.ExecuteScalar();
        
        if (result.GetType() != typeof(DBNull))
        {
            ID = Convert.ToInt32(result);
        }
        else
        {
            ID = 0;
        }
        ID = ID + 1;        
        con.Close();
    }
    public bool SplitFile(string SourceFile, int nNoofFiles)
    {
        bool Split = false;
        try
        {
            FileStream fs = new FileStream(SourceFile, FileMode.Open, FileAccess.Read);
            int SizeofEachFile = (int)Math.Ceiling((double)fs.Length / nNoofFiles);

            for (int i = 0; i < nNoofFiles; i++)
            {
                string baseFileName = Path.GetFileNameWithoutExtension(SourceFile);
                string Extension = Path.GetExtension(SourceFile);

                string splitfname = Server.MapPath("~/upload/split/") + Label18.Text;
                FileStream outputFile = new FileStream(Path.GetDirectoryName(splitfname) + "\\" + baseFileName + "." +
                    i.ToString().PadLeft(1, Convert.ToChar("0")) + Extension, FileMode.Create, FileAccess.Write);

                //mergeFolder = Path.GetDirectoryName(SourceFile);

                int bytesRead = 0;
                byte[] buffer = new byte[SizeofEachFile];

                if ((bytesRead = fs.Read(buffer, 0, SizeofEachFile)) > 0)
                {
                    outputFile.Write(buffer, 0, bytesRead);           

                    string packet = baseFileName + "." + i.ToString().PadLeft(3, Convert.ToChar("0")) + Extension.ToString();
                    Packets.Add(packet);
                }
                outputFile.Close();
            }
            fs.Close();
        }
        catch (Exception Ex)
        {
            throw new ArgumentException(Ex.Message);
        }
        return Split;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Encrypt(TextBox1.Text);
        TextBox1.Text = enctext;
        Random rm1 = new Random();
        int rno = rm1.Next(11,99);
        Encrypt1(rno.ToString());
        string key1 = enctext1;       
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into splitbl values('" + ID + "','" + Label21.Text + "','" + Label18.Text + "','" + TextBox1.Text + "','" + txt2 + "','" + txt3 + "','" + ser1 + "','" + ser2 + "','" + ser3 + "','" + filever + "','" + key1 + "','" + key2 + "','" + key3 + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    } 
    string txt2,txt3,key2,key3 = "";
    protected void Button4_Click(object sender, EventArgs e)
    {
        Encrypt(TextBox2.Text);
        TextBox2.Text = enctext; 
        Random rm2 = new Random();
        int rno2 = rm2.Next(11, 99);
        Encrypt1(rno2.ToString());
        key2 = enctext1;
        con.Open();
        SqlCommand cmd = new SqlCommand("update splitbl set Server2 = '"+TextBox2.Text+"',S2Key = '"+key2+"' where Filename = '"+Label18.Text+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Encrypt(TextBox3.Text);
        TextBox3.Text = enctext;
        Random rm3 = new Random();
        int rno3 = rm3.Next(11, 99);
        Encrypt1(rno3.ToString());
        key3 = enctext1;
        con.Open();
        SqlCommand cmd = new SqlCommand("update splitbl set Server3 = '" + TextBox3.Text + "',S3Key = '" + key3 + "' where Filename = '" + Label18.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    string ser1 = "NO", ser2 = "NO", ser3 = "NO", filever = "NO";
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label16.Text = "File Blocks are Encrypted & Uploaded to Multi Cloud Server";
    }
    string enctext, enctext1, enctext2;
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
    private string Encrypt1(string clearText1)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText1);
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
                clearText1 = Convert.ToBase64String(ms.ToArray());
                enctext1 = clearText1;
            }
        }
        return clearText1;
    }
    //private string Encrypt2(string clearText2)
    //{
    //    string EncryptionKey = "MAKV2SPBNI99212";
    //    byte[] clearBytes = Encoding.Unicode.GetBytes(clearText2);
    //    using (Aes encryptor = Aes.Create())
    //    {
    //        Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
    //        encryptor.Key = pdb.GetBytes(32);
    //        encryptor.IV = pdb.GetBytes(16);
    //        using (MemoryStream ms = new MemoryStream())
    //        {
    //            using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
    //            {
    //                cs.Write(clearBytes, 0, clearBytes.Length);
    //                cs.Close();
    //            }
    //            clearText2 = Convert.ToBase64String(ms.ToArray());
    //            enctext2 = clearText2;
    //        }
    //    }
    //    return clearText2;
    //}
}
