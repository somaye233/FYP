using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OralPresentation_FYP1 : System.Web.UI.Page
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
        int score = Int32.Parse(Label3.Text);
        if (up)
            score++;
        else
            score--;
        Label3.Text = score.ToString();
    }
    public void calc2(bool up)
    {
        int score = Int32.Parse(Label4.Text);
        if (up)
            score++;
        else
            score--;
        Label4.Text = score.ToString();
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

    protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox13.Checked);
    }

    protected void CheckBox14_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox14.Checked);
    }

    protected void CheckBox15_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox15.Checked);
    }

    protected void CheckBox16_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox16.Checked);
    }

    protected void CheckBox17_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox17.Checked);
    }

    protected void CheckBox18_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox18.Checked);
    }

    protected void CheckBox19_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox19.Checked);
    }

    protected void CheckBox20_CheckedChanged(object sender, EventArgs e)
    {
        calc1(CheckBox20.Checked);
    }

    protected void CheckBox30_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox30.Checked);
    }

    protected void CheckBox29_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox29.Checked);
    }

    protected void CheckBox28_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox28.Checked);
    }

    protected void CheckBox27_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox27.Checked);
    }

    protected void CheckBox26_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox26.Checked);
    }

    protected void CheckBox25_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox25.Checked);
    }

    protected void CheckBox24_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox24.Checked);
    }

    protected void CheckBox23_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox23.Checked);
    }

    protected void CheckBox22_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox22.Checked);
    }

    protected void CheckBox21_CheckedChanged(object sender, EventArgs e)
    {
        calc2(CheckBox21.Checked);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TaskManager ts = new TaskManager();
        int total = Int32.Parse(Label3.Text) + Int32.Parse(Label4.Text);
        if (Session["UR"].ToString().Trim().Equals("SU"))
            ts.updateFyp1OralSup(student, total.ToString());
        else
            ts.updateFyp1OralMod(student, total.ToString());
        Session["MSG"] = "Oral Presentation For FYP 1 Has Been Submited Successfully.";
        Response.Redirect("Response.aspx");
    }
}