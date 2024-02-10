<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<%@ Register Src="UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>
<%@ Register Src="UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center; max-height:100px;">         
    <table width="100%"><tr>
      <td><a href="HomePage.aspx">Home</a></td>
      <td><a href="login1.aspx" shape="default">Login</a></td>
      <td><a href="customerregistration.aspx">Customer Registration</a></td>
      
                <%--<td><a href="../employeeregister.aspx">Employee Register</a></td>--%>
             </tr></table>          
             <table style="width: 100%; background-color:"  >
                        <tr>
                            <td colspan="1" style="width: 397px; text-align: left">
                                &nbsp;</td>
                            <td colspan="4" style="text-align: left" >
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome...." Font-Names="Verdana"></asp:Label></td>
                            <td colspan="1" style="text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1" style="width: 397px; text-align: left">
                            </td>
                            <td colspan="4" style="text-align: left">
                                &nbsp;</td>
                            <td colspan="1" style="text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 397px; text-align: left" valign="bottom">
                            </td>
                            <td  valign="bottom" style="width: 266px; text-align: left;">
                                </td>
                            <td  valign="bottom" style="width: 287px">
                            </td>
                            <td  valign="bottom" colspan="2">
                            </td>
                            <td colspan="1" valign="bottom">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1" style="width: 397px" valign="bottom">
                            </td>
                            <td colspan="4" valign="bottom">
                                &nbsp;</td>
                            <td colspan="1" valign="bottom">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 397px; text-align: center; height: 88px;">
                                <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                            </td>
                            <td style="width: 266px; text-align: center; height: 88px;" >
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="84px" ImageUrl="~/Resources/smd5.jpg"
                                     ToolTip="Post a Complaint"
                                    Width="142px" /></td>
                            <td style="width: 287px; text-align: center; height: 88px;" >
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="84px" ImageUrl="~/Resources/marketing.jpg"
                                    ToolTip="Emp Login" Width="142px" /></td>
                            <td colspan="2" style="text-align: center; height: 88px;" >
                                </td>
                            <td colspan="1" style="text-align: center; height: 88px;">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 397px; text-align: center">
                            </td>
                            <td style="width: 266px; text-align: center" >
                    <asp:LinkButton ID="lnkPostQry" runat="server" Font-Bold="True" Font-Size="Small"
                        OnClick="lnkPostQry_Click" Width="102px" Font-Names="Verdana">Customer Login</asp:LinkButton></td>
                            <td style="width: 287px; text-align: center">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Font-Bold="True" Font-Names="Verdana" Font-Size="Small">Employee Login</asp:LinkButton></td>
                            <td colspan="2" style="text-align: center" >
                                &nbsp;</td>
                            <td colspan="1" style="text-align: center">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1" style="width: 397px; text-align: center">
                            </td>
                            <td colspan="4" style="text-align: center">
                                &nbsp;</td>
                            <td colspan="1" style="text-align: center">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 397px; text-align: left" valign="bottom">
                            </td>
                            <td  valign="bottom" style="width: 266px; text-align: left;">
                                &nbsp;</td>
                            <td  valign="bottom" style="width: 287px">
                            </td>
                            <td  valign="bottom" colspan="2">
                            </td>
                            <td colspan="1" valign="bottom">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1" style="width: 397px" valign="bottom">
                            </td>
                            <td colspan="4" valign="bottom">
                                &nbsp;</td>
                            <td colspan="1" valign="bottom">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 397px; text-align: center">
                            </td>
                            <td style="width: 266px; text-align: center" >
                                &nbsp;</td>
                            <td style="width: 287px" >
                            </td>
                            <td colspan="2" >
                            </td>
                            <td colspan="1">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 397px; text-align: center">
                            </td>
                            <td style="width: 266px; text-align: center" >
                                &nbsp;</td>
                            <td style="width: 287px" >
                            </td>
                            <td >
                            </td>
                            <td style="width: 369px" >
                            </td>
                            <td style="width: 369px">
                            </td>
                    </tr>
                                        </table>
        </div>
   </asp:Content>