using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Visible = false;
        if(!TextBox2.Text.Equals(TextBox3.Text))
        {
            Label2.Text = "Passwords Are Not Match";
            Label2.Visible = true;
            return;
        }
        string userName = TextBox1.Text;
        string password = TextBox2.Text;
        string fullName = TextBox4.Text;
        string type = DropDownList1.SelectedItem.ToString();
        if(userName.Length<1 || password.Length<1 || fullName.Length<1)
        {
            Label2.Text = "Please Fill All Fields";
            Label2.Visible = true;
            return;
        }

        TaskManager ts = new TaskManager();
        if(!ts.checkUserName(userName))
        {
            Label2.Text = "UserName Already Exist";
            Label2.Visible = true;
            return;
        }
        ts.registeruser(userName, password, type, fullName);
        Session["MSG"] = "The Request Has Been Submited Successfuly.\nThe Account Will Be Activated After Admin Approval.";
        Response.Redirect("Response.aspx");
    }
}