<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Qry_Soln.aspx.cs" Inherits="CustomerPages_Qry_Soln" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div  style="text-align:center">
       <table width="100%"><tr>
      <td><a href="CCHome.aspx">Home</a></td>
      <td><a href="Post_Qry.aspx">Defect</a></td>
      <td><a href="Qry_Status.aspx">Defect Status</a></td>
       <td><a href="Qry_Soln.aspx">Solution</a></td>
                <%--<td><a href="../employeeregister.aspx">Employee Register</a></td>--%>
              <td>
                   <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Verdana">Sign Out</asp:LinkButton>
                   </td>  </tr></table>
        <table style="background-color:#f5fffa" width="600px">
            <tr>
                <td colspan="3" style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <span style="font-size: 13pt; font-family: Verdana"><strong>Search Defect Based on
                        Department</strong></span></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td rowspan="1" colspan="1" style="text-align: left; width: 15%; height: 46px;" >
                    <asp:Label ID="Label2" runat="server" Text="Select Department:                                                            "
                        Width="164px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
                        <td colspan="2" style="text-align: left; height: 46px;" >
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DDl_dept"
                        DataTextField="DeptName" DataValueField="DeptCode" OnSelectedIndexChanged="SIC_DDL1" Width="146px">
                    </asp:DropDownList><asp:SqlDataSource ID="DDl_dept" runat="server" ConnectionString="<%$ ConnectionStrings:SP_OnlineCCConnectionString %>"
                        SelectCommand="SELECT [DeptCode],[DeptName] FROM [tblDept]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td valign="top" colspan="3">
                    <asp:GridView ID="GridView1" runat="server"
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                        CellPadding="3" PageSize="3" GridLines="Vertical" OnPageIndexChanging="GridView1_Paging" Width="100%" Font-Bold="True" Font-Names="Verdana" Font-Size="Small">
                        <FooterStyle BackColor="Lavender" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="Lavender" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#C0C0FF" Font-Bold="True" ForeColor="Black" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <AlternatingRowStyle BackColor="GhostWhite" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="368px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
            </tr>
        </table>
       </div>
    
</asp:Content>