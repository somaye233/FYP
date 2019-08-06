using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Poster_FYP2 : System.Web.UI.Page
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
    public void calc1(bool up)
    {
        int score = Int32.Parse(Label4.Text);
        if (up)
            score++;
        else
            score--;
        Label4.Text = score.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TaskManager ts = new TaskManager();
        if (Session["UR"].ToString().Trim().Equals("SU"))
            ts.updateFyp2PosSup(student, Label4.Text);
        else
            ts.updateFyp2PosMod(student, Label4.Text);
        Session["MSG"] = "Poster Mark For FYP 2 Has Been Submited Successfully.";
        Response.Redirect("Response.aspx");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox1.Checked);
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox2.Checked);
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox3.Checked);
    }

    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox4.Checked);
    }

    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox5.Checked);
    }

    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox6.Checked);
    }

    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox7.Checked);
    }

    protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox8.Checked);
    }

    protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox9.Checked);
    }

    protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox10.Checked);
    }

    protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox11.Checked);
    }

    protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox12.Checked);
    }
}