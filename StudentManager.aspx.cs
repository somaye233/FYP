using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentManager : System.Web.UI.Page
{
    TaskManager ts = new TaskManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["MAIN"] = "StudentManager.aspx";
        loadData();
    }

    public void loadData()
    {
        List<string> students = ts.getUnAssigneStudent();
        DropDownList1.Items.Clear();
        foreach (string temp in students)
            DropDownList1.Items.Add(temp);
        List<string> supervisors = ts.getSupervisor();
        DropDownList3.Items.Clear();
        foreach (string temp in supervisors)
            DropDownList3.Items.Add(temp);
        List<string> moder = ts.getModerator();
        DropDownList4.Items.Clear();
        foreach (string temp in moder)
            DropDownList4.Items.Add(temp);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label2.Visible = false;
            string userName = DropDownList1.SelectedItem.ToString();
            string superVisor = DropDownList3.SelectedItem.ToString();
            string spe = DropDownList2.SelectedItem.ToString();
            string title = TextBox1.Text;
            string moder = DropDownList4.SelectedItem.ToString();
            if (userName.Length < 1 || superVisor.Length < 1 || title.Length < 1 || moder.Length < 1)
            {
                Label2.Text = "Please Insert/Select All Requierd information.";
                Label2.Visible = true;
                return;
            }
            ts.updateStudentDetails(userName, spe, superVisor, title, moder);
            ts.insertToFYPtables(userName);
            Session["MSG"] = "The Supervisor, Moderator And Project Title Have Been Assigne To The Student Successfully.";
            Response.Redirect("Response.aspx");
        }
        catch(Exception ex)
        {
            Label2.Text = "Please Insert/Select All Requierd information.";
            Label2.Visible = true;
        }
    }
}