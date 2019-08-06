using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccountManagment : System.Web.UI.Page
{
    TaskManager ts = new TaskManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["MAIN"] = "AccountManagment.aspx";
        if (!IsPostBack)
            loadUser();
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
            Button1.Text = "Approve";
        else
            Button1.Text = "Remove";
        loadUser();
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
            Button1.Text = "Approve";
        else
            Button1.Text = "Remove";
        loadUser();
    }
    public void loadUser()
    {
        Label2.Text = string.Empty;
        Label3.Text = string.Empty;
        int status = 0;
        if (RadioButton2.Checked)
            status = 1;
        List<string> users = ts.getUserNames(status);
        DropDownList1.Items.Clear();
        foreach (string temp in users)
            DropDownList1.Items.Add(temp);
        try
        {
            string userName = DropDownList1.SelectedItem.ToString();
            List<string> details = ts.getUserDetails(userName);
            Label2.Text = details[0];
            Label3.Text = details[1];
        }
        catch (Exception ex) { }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Button1.Text.Equals("Approve"))
        {
            ts.approveUser(DropDownList1.SelectedItem.ToString());
            Session["MSG"] = "The Account Has Been Approved Successfully.";
            Response.Redirect("Response.aspx");
        }
        else
        {
            ts.removeUser(DropDownList1.SelectedItem.ToString());
            Session["MSG"] = "The Account Has Been Deleted Successfully.";
            Response.Redirect("Response.aspx");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string userName = DropDownList1.SelectedItem.ToString();
        List<string> details = ts.getUserDetails(userName);
        Label2.Text = details[0];
        Label3.Text = details[1];
    }
}