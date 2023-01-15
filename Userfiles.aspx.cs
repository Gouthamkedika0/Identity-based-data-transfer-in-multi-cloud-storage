using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userfiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label21.Text = Session["usernam"].ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[x];
            string fid = row.Cells[0].Text;
            string fnam = row.Cells[1].Text;
            Session["ffid"] = fid;
            Session["ffnam"] = fnam;
            Response.Redirect("Userdecrypt.aspx");
        }
    }
}
