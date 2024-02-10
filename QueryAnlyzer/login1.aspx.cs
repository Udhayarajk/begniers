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
using System.Data.SqlClient;

public partial class login1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataReader dr1;
    BLLogin b;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Visible = true;
            Label1.Text = "Select User Type";

        }
        else if (DropDownList1.SelectedIndex == 1)
        {

            cmd = new SqlCommand("select password from admin where adminname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Redirect("CusMgr/Cus_Qry_Mgr.aspx");
                dr.Close();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "User name and Password Not Matched";
            }
            dr.Close();
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            cmd = new SqlCommand("select password from customerregister where loginname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["cuname"] = TextBox1.Text;
                Response.Redirect("CustomerPages/CCHome.aspx");
                dr.Close();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "User name and Password Not Matched";
            }
            dr.Close();
        }

        else if (DropDownList1.SelectedIndex == 3)
        {
            cmd = new SqlCommand("select password,name from employeeregister where loginname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["emname"] =dr[1].ToString().Trim();
                Response.Redirect("CusCare/CCHome.aspx");

                dr.Close();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "User name and Password Not Matched";
            }
            dr.Close();
        }
    }

}
