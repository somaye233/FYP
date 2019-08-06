using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["MAIN"] = "Default.aspx";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TaskManager ts = new TaskManager();
        string userName = TextBox1.Text;
        string password = TextBox2.Text;
        int result = ts.login(userName, password);
        switch(result)
        {
            case 0:
                Label2.Text = "Wrong UserName Or Password.";
                Label2.Visible = true;
                return;

            case -1:
                Label2.Text = "The Account Is Not Activated Yet.";
                Label2.Visible = true;
                return;
   
            case 1:
                Session["USR"] = userName;
                Session["TY"] = "AD";
                Response.Redirect("AdminHome.aspx");
                break;
            case 2:
                Session["USR"] = userName;
                Session["TY"] = "SU";
                Response.Redirect("SupervisorPage.aspx");
                break;
            case 3:
                Session["USR"] = userName;
                Session["TY"] = "MO";
                Response.Redirect("ModeratorPage.aspx");
                break;
            case 4:
                Session["USR"] = userName;
                Session["TY"] = "MA";
                Response.Redirect("ManagmentHome.aspx");
                break;
            case 5:
                Session["USR"] = userName;
                Session["TY"] = "ST";
                Response.Redirect("StudentPage.aspx");
                break;
        }

    }
}