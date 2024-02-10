<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Qry_Status.aspx.cs" Inherits="CustomerPages_Qry_Status" %>

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
                    <table style="width: 325px; height: 139px;" >
                        <tr>
                            <td colspan="5">
                                <asp:Label ID="Label1" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: static"
                                    Text="Defect Status" Width="100%" Font-Names="Verdana" Font-Size="Medium"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 1px; width: 132px; text-align: left;"  >
                                <asp:Label ID="Label3" runat="server" Style="position: static" Text="Defect Id" Width="80px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
                            <td style="height: 1px"  >
                                <asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox></td>
                            <td style="height: 1px" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
                            <td style="height: 1px"  >
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Type a Lesser Value" MaximumValue="429496729" MinimumValue="0" Display="Dynamic" Type="Integer" Width="1px">*</asp:RangeValidator></td>
                            <td style="height: 1px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Integers Only" Width="1px" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Integer" Display="Dynamic">*</asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 132px" >
                            </td>
                            <td align="right" >
                                <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click1" Font-Bold="True" Font-Size="Small" /></td>
                            <td >
                            </td>
                            <td >
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left" colspan="5">
                                <asp:Label ID="Label2" runat="server" Style="position: relative" Width="153px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" colspan="5" style="text-align: left">                              
                                <table >
                                    <tr>
                                        <td  valign="top">
                                            <asp:Label ID="Label4" runat="server" Text="Complaints :" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="37px"></asp:Label></td>
                                        <td align="left" style="width: 301px" >
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <asp:Label ID="Label7" runat="server" Text="Solution :" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
                                        <td align="left" style="width: 301px">
                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        </table>
    
    </div>
    
</asp:Content>