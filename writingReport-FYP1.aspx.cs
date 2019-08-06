using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class writingReport : System.Web.UI.Page
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
            ts.updateFyp1WritingSup(student, sum);
        else
            ts.updateFyp1WritingMod(student, sum);
        Session["MSG"] = "Writing Mark For FYP 1 Has Been Submited Successfully.";
        Response.Redirect("Response.aspx");
    }
}