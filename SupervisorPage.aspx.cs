using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupervisorPage : System.Web.UI.Page
{
    string userName = string.Empty;
    TaskManager ts = new TaskManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["MAIN"] = "SupervisorPage.aspx";
        Session["UR"] = "SU";
        if(Session["USR"]!=null)
        {
            userName = Session["USR"].ToString().Trim();
            List<string> students = ts.getSupStudent(userName);
            DropDownList1.Items.Clear();
            foreach (string temp in students)
                DropDownList1.Items.Add(temp);
      
            loadFypDetails();
        }
        Button1.Click += Button1_Click;
        Button2.Click += Button2_Click;
        Button3.Click += Button3_Click;
        Button4.Click += Button4_Click;
        Button5.Click += Button5_Click;
        Button6.Click += Button6_Click;
        Button7.Click += Button7_Click;
    }

    private void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Poster-FYP2.aspx");
    }

    private void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProjectImplementation-FYP2.aspx");
    }

    private void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("WritingReport-FYP2.aspx");
    }

    private void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("GeneralEffor-FYP2.aspx");
    }

    private void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("OralPresentation-FYP1.aspx");
    }

    private void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("GeneralEffor-FYP1.aspx");
    }

    private void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("writingReport-FYP1.aspx");
    }

    public void loadFypDetails()
    {
       
        try
        {

            string student = DropDownList1.SelectedItem.ToString();
            Session["ST"] = student;
            bool final = ts.isFinal(student);
            if(final)
            {
                Button1.Enabled = Button2.Enabled = Button3.Enabled = Button4.Enabled =
                    Button5.Enabled = Button6.Enabled = Button7.Enabled = Button8.Enabled = false;
                Label2.Visible = true;
            }
            else
            {
                Button1.Enabled = Button2.Enabled = Button3.Enabled = Button4.Enabled =
                    Button5.Enabled = Button6.Enabled = Button7.Enabled = Button8.Enabled = true;
                Label2.Visible = false;
            }

            List<string> fyp1 = ts.loadFyp1(student);
            List<string> fyp2 = ts.loadFyp2(student);

            ///
            Table1.Rows[1].Cells[1].Text = fyp1[2];
            Table1.Rows[1].Cells[2].Text = "-";
            Table1.Rows[1].Cells[3].Text = fyp1[2];
            Table1.Rows[1].Cells[4].Text = fyp1[2];

            Double s_w = Double.Parse(fyp1[0]);
            Double m_w = Double.Parse(fyp1[3]);
            Table1.Rows[2].Cells[1].Text = s_w.ToString();
            Table1.Rows[2].Cells[2].Text = m_w.ToString();
            Table1.Rows[2].Cells[3].Text = (s_w + m_w).ToString();
            Table1.Rows[2].Cells[4].Text = ((s_w + m_w) / 2).ToString();

            Double s_o = Double.Parse(fyp1[1]);
            Double m_o = Double.Parse(fyp1[4]);
            Table1.Rows[3].Cells[1].Text = s_o.ToString();
            Table1.Rows[3].Cells[2].Text = m_o.ToString();
            Table1.Rows[3].Cells[3].Text = (s_o + m_o).ToString();
            Table1.Rows[3].Cells[4].Text = ((s_o + m_o) / 2).ToString();

            Double sum = Double.Parse(Table1.Rows[1].Cells[4].Text) + Double.Parse(Table1.Rows[2].Cells[4].Text) +
                Double.Parse(Table1.Rows[3].Cells[4].Text);
            Table1.Rows[4].Cells[4].Text = sum.ToString();
            double total = sum / 100 * 30;

            Table1.Rows[5].Cells[4].Text = total.ToString();
            Table1.Rows[6].Cells[4].Text = total.ToString();
            ////////////////////////////////////////////////////////////

            Table2.Rows[1].Cells[1].Text = fyp2[3];
            Table2.Rows[1].Cells[2].Text = "-";
            Table2.Rows[1].Cells[3].Text = fyp2[3];
            Table2.Rows[1].Cells[4].Text = fyp2[3];

            s_w = Double.Parse(fyp2[0]);
            m_w = Double.Parse(fyp2[4]);
            Table2.Rows[2].Cells[1].Text = s_w.ToString();
            Table2.Rows[2].Cells[2].Text = m_w.ToString();
            Table2.Rows[2].Cells[3].Text = (s_w + m_w).ToString();
            Table2.Rows[2].Cells[4].Text = ((s_w + m_w) / 2).ToString();

            Double s_i = Double.Parse(fyp2[1]);
            Double m_i = Double.Parse(fyp2[5]);
            Table2.Rows[3].Cells[1].Text = s_i.ToString();
            Table2.Rows[3].Cells[2].Text = m_i.ToString();
            Table2.Rows[3].Cells[3].Text = (s_i + m_i).ToString();
            Table2.Rows[3].Cells[4].Text = ((s_i + m_i) / 2).ToString();

            Double s_p = Double.Parse(fyp2[2]);
            Double m_p = Double.Parse(fyp2[6]);
            Table2.Rows[4].Cells[1].Text = s_p.ToString();
            Table2.Rows[4].Cells[2].Text = m_p.ToString();
            Table2.Rows[4].Cells[3].Text = (s_p + m_p).ToString();
            Table2.Rows[4].Cells[4].Text = ((s_p + m_p) / 2).ToString();




            sum = Double.Parse(Table2.Rows[1].Cells[4].Text) + Double.Parse(Table2.Rows[2].Cells[4].Text) +
                Double.Parse(Table2.Rows[3].Cells[4].Text)+ Double.Parse(Table2.Rows[4].Cells[4].Text);
            Table2.Rows[5].Cells[4].Text = sum.ToString();
            total = sum / 100 * 30;

            Table2.Rows[6].Cells[4].Text = total.ToString();
            Table2.Rows[7].Cells[4].Text = total.ToString();
        }
        catch (Exception ex) { }


    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadFypDetails();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        ts.finalize(DropDownList1.SelectedItem.ToString(), Table1.Rows[6].Cells[4].Text, Table2.Rows[7].Cells[4].Text);
        Session["MSG"] = "The FYP Marks Are Finalized And May Not Be Modified Any More.";
        Response.Redirect("Response.aspx");
    }
}