using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectImplementation_FYP2 : System.Web.UI.Page
{
    string student = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ST"] != null)
        {
            student = Session["ST"].ToString().Trim();
            Label2.Text = "STUDENT ID:" + student.ToUpper();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TaskManager ts = new TaskManager();
        string sum = Request.Form["SendA"].ToString();
        if (Session["UR"].ToString().Trim().Equals("SU"))
            ts.updateFypImplSup(student, sum);
        else
            ts.updateFypImplMod(student, sum);
        Session["MSG"] = "Implementation Mark For FYP 2 Has Been Submited Successfully.";
        Response.Redirect("Response.aspx");
    }
}