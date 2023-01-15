using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "server1" && TextBox2.Text == "server1" && DropDownList1.SelectedItem.ToString() == "Server1")
        {
            Response.Redirect("Server1.aspx");
        }
        else if (TextBox1.Text == "server2" && TextBox2.Text == "server2" && DropDownList1.SelectedItem.ToString() == "Server2")
        {
            Response.Redirect("Server2.aspx");
        }
        else if (TextBox1.Text == "server3" && TextBox2.Text == "server3" && DropDownList1.SelectedItem.ToString() == "Server3")
        {
            Response.Redirect("Server3.aspx");
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
    }
}
