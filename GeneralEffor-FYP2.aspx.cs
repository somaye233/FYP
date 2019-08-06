using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralEffor_FYP2 : System.Web.UI.Page
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
            ts.updateFyp2GeneralSup(student, sum);
    
        Session["MSG"] = "General Effort Mark For FYP 2 Has Been Submited Successfully.";
        Response.Redirect("Response.aspx");
    }
}