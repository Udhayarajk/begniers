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


public partial class CusMgr_viewsolution : System.Web.UI.Page
{
    string s = "select Qry_Text as complaint,DeptCode as Department_Code,Qry_Dt as Date from tblqrydetails where DeptCode is not null";
    BLPrevSoln b;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        b = new BLPrevSoln();
        if (!IsPostBack)
        {
            ds = b.Ex_DRL(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (int i = 2005; i <= 2023; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }
    }
    public void GetData(string s)
    {
        try
        {
            ds = b.Ex_DRL(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void GridView1_Paging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            GetData(s);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/SignOut.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dta= DropDownList1.SelectedItem.Text +'/'+ DropDownList2.SelectedItem.Text +'/'+ DropDownList3.SelectedItem.Text;

        s = "select Qry_Text as complaint,DeptCode as Department_Code,Qry_Dt as Date from tblqrydetails where DeptCode is not null and Qry_Dt='"+dta.Trim()+"'";
        ds = b.Ex_DRL(s);
        GridView1.DataSource = ds;
        GridView1.DataBind(); 
    }
}