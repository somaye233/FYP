using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Response : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MSG"] != null)
            Label1.Text = Session["MSG"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Session["MAIN"]!=null)
        {
            string link = Session["MAIN"].ToString().Trim();
            Response.Redirect(link);
        }
    }
}