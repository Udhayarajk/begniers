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


public partial class employeeregister : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    int m,m1;
    string loginname1;

    protected void Page_Load(object sender, EventArgs e)
    {


        con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
        con.Open();

        if (!IsPostBack)
        {
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (int i = 1950; i <= 2018; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 31; i++)
            {
                DropDownList4.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                DropDownList5.Items.Add(i.ToString());
            }
            for (int i = 1950; i <= 2018; i++)
            {
                DropDownList6.Items.Add(i.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from employeeregister ", con);

        DataSet ds = new DataSet();

        sda.Fill(ds, "employeeregister");



        //this condition checks that table is empty

        // or not if table is empty that bill id is BIL001 other wise else par is run

        if (ds.Tables[0].Rows.Count == 0)
        {

            loginname1 = "1001";
            TextBox13.Text = loginname1.ToString();

        }

        else
        {

            string s = ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1]["loginname"].ToString();
           

            int num = Convert.ToInt32(s);

            num++;
            loginname1 = num.ToString();
            TextBox13.Text = loginname1.ToString();
            Session["empid1"] = TextBox13.Text;

        }


        
        
        
        cmd = new SqlCommand("insert into employeeregister values('" + TextBox1.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','"+TextBox13.Text+"','"+TextBox14.Text+"','"+TextBox15.Text+"','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "'+'/'+'" + DropDownList2.SelectedItem.Text + "'+'/'+'" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "'+'/'+'" + DropDownList5.SelectedItem.Text + "'+'/'+'" + DropDownList6.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','')");
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Saved');</script>");


        Response.Redirect("CusMgr/Cus_Qry_Mgr.aspx");

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        m=Convert.ToInt32(TextBox4.Text);
        m1=m / 30;
        TextBox5.Text = m1.ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/SignOut.aspx");
    }
 
}
