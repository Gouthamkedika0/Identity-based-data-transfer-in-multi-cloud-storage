using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerifierLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "verifier" && TextBox2.Text == "verifier")
        {
            Response.Redirect("verifierfiles.aspx");
        }
        else
        {
            Label16.Text = "Incorrect Login";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label16.Text = "";
    }
}
