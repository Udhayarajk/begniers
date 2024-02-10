<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CCHome.aspx.cs" Inherits="CustomerPages_CCHome" Title="QUERY ANALYZER AND SOLUTION PROVIDER APPLICATION" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
     
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
    <table style="background-color: mintcream;">
        <tr>
            <td valign="bottom" style="text-align: left">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Customer Home" Width="132px" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
            <td valign="bottom">
            </td>
            <td valign="bottom">
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="bottom">
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:ImageButton ID="ImageButton1" runat="server" Height="84px" ImageUrl="~/Resources/smd5.jpg"
                    OnClick="ImageButton1_Click" ToolTip="Post a Complaint"
                    Width="142px" /></td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="84px" ImageUrl="~/Resources/graphics.jpg"
                    OnClick="ImageButton2_Click"
                    ToolTip="Complaint Status" Width="142px" /></td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="84px" ImageUrl="~/Resources/pf3.jpg"
                    OnClick="ImageButton3_Click" ToolTip="Previous Solutions"
                    Width="141px" /></td>
        </tr>
        <tr>
            <td >
                <asp:LinkButton ID="lnkPostQry" runat="server" Font-Bold="True" Font-Size="Small"
                    OnClick="lnkPostQry_Click" Width="102px" Font-Names="Verdana">Defects </asp:LinkButton></td>
            <td >
                <asp:LinkButton ID="lblQrySt" runat="server" Font-Bold="True" Font-Size="Small"
                    OnClick="lblQrySt_Click" Width="114px" Font-Names="Verdana">Defects Status</asp:LinkButton></td>
            <td>
                <asp:LinkButton ID="lblPrevSol" runat="server" Font-Bold="True" Font-Size="Small"
                    OnClick="lblPrevSol_Click" Width="135px" Font-Names="Verdana">Solutions</asp:LinkButton></td>
        </tr>
    </table>
    </div>
</asp:Content>

