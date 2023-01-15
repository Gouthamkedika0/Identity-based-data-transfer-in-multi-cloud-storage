using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class verifieraccept : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       //Response.AppendHeader("Refresh", 1 + "; URL=verifieraccept.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[x];
            string fid = row.Cells[0].Text;

            con.Open();
            SqlCommand cmd = new SqlCommand("update splitbl set FileVerify = 'YES' where FileID='" + fid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("verifieraccept.aspx");
        }
    }
}
