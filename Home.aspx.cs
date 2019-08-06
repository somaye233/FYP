using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["TY"]!=null)
        {
            string ty = Session["TY"].ToString().Trim();
            if(ty.Equals("AD"))
                Response.Redirect("AdminHome.aspx");
            else if(ty.Equals("SU"))
                Response.Redirect("SupervisorPage.aspx");
            else if (ty.Equals("MO"))
                Response.Redirect("ModeratorPage.aspx");
            else if (ty.Equals("MA"))
                Response.Redirect("ManagmentHome.aspx");
            else if (ty.Equals("ST"))
                Response.Redirect("StudentPage.aspx");
        }
        Response.Redirect("Default.aspx");
    }
}