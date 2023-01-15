using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class OwnerRegister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        autoid();
    }
    private void autoid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select max(ID) from OwnerRegister ", con);
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
    private void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        autoid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear();
        Label16.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = RadioButtonList1.SelectedItem.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into OwnerRegister values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + gender + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label16.Text = "Registered Successfully....";
        clear();
    }
}
