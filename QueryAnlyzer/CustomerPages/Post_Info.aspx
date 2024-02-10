<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"  CodeFile="Post_Info.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >
   
       <table width="100%"><tr>
      <td><a href="CCHome.aspx">Home</a></td>
      <td><a href="Post_Qry.aspx">Complaint</a></td>
      <td><a href="Qry_Status.aspx">Complaint Status</a></td>
       <td><a href="Qry_Soln.aspx">Solution</a></td>
                <%--<td><a href="../employeeregister.aspx">Employee Register</a></td>--%>
              <td>
                   <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Verdana">Sign Out</asp:LinkButton>
                   </td>  </tr></table>
        <table style="width: 324px">
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 342px" >
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Purple" Width="335px" Font-Names="Verdana" Font-Size="Small">You Have Successfully Posted A complaint</asp:Label></td>
            </tr>
            <tr>
                <td style="width: 342px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td valign="top" style="width: 342px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Blue" Width="336px" Font-Names="Verdana" Font-Size="Small"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Blue" Width="337px" Font-Names="Verdana" Font-Size="Small">* Please Note the complaint Id For Future Reference</asp:Label></td>
            </tr>
            <tr>
                <td valign="top" style="width: 342px">
                    </td>
            </tr>
            <tr>
                <td style="width: 342px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="False"
                        Font-Size="Small" ForeColor="#000040" OnClick="LinkButton1_Click"
                        Width="130px" Font-Names="Verdana">Back To Home</asp:LinkButton></td>
            </tr>
        </table>
       </div>
    </asp:Content>
