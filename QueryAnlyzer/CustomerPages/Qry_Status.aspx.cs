using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CustomerPages_Qry_Status : System.Web.UI.Page
{
    BLQrySt b;
    string[] t;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label4.Visible = false;
            Label7.Visible = false;
            b = new BLQrySt();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            Label8.Text = "";
            Label9.Text = "";            
            b.QueryId = Convert.ToInt64(TextBox1.Text.Trim());
            string y = b.Gt_St();            
            if (y != null)            
                t = y.Split('*');               
            if (y != null && t[1] == "")
            {
                Label4.Visible = true;
                Label7.Visible = true;
                Label8.Text = t[0];
                Label9.Text = "Complaint not answered yet";
            }
            else if (y != null && t[1] != "")
            {
                Label4.Visible = true;
                Label7.Visible = true;
                Label8.Text = t[0];
                Label9.Text = t[1];
            }
            else if(y==null)
                Label2.Text = "No Such Complaint";
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/SignOut.aspx");
    }
}
