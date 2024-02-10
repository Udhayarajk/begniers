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


public partial class customerregistration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();
        for (int i = 1; i <= 31; i++)
        {
            DropDownList2.Items.Add(i.ToString());
        }
        for (int i = 1; i <= 12; i++)
        {
            DropDownList3.Items.Add(i.ToString());
        }
        for (int i = 1950; i <= 2016; i++)
        {
            DropDownList4.Items.Add(i.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into customerregister values( '" + TextBox1.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "'+'/'+'" + DropDownList3.SelectedItem.Text + "'+'/'+'" + DropDownList4.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','')");
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Saved');</script>");
        Response.Redirect("HomePage.aspx");
    }
   
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}
