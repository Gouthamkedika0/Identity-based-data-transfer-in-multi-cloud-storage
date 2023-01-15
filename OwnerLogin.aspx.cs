using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class OwnerLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label16.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select Username from OwnerRegister where Username = '" + TextBox1.Text + "'", con);
        SqlCommand cmd1 = new SqlCommand("select Password from OwnerRegister where Username = '" + TextBox1.Text + "'", con);
        string uname = (string)cmd.ExecuteScalar();
        string pwd = (string)cmd1.ExecuteScalar();
        con.Close();

        if (TextBox1.Text == uname && TextBox2.Text == pwd)
        {
            Session["Ownername"] = TextBox1.Text;
            Response.Redirect("Fileupload.aspx");
        }
        else
        {
            Label16.Text = "Invalid Login";
        }
    }
}
