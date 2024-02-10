<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Post_Qry.aspx.cs" Inherits="CustomerPages_Post_Qry" %>


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
                    <table style="background-color:#f5fffa" >
                        <tr>
                            <td colspan="5" >
                                <asp:Label ID="Label2" runat="server" BackColor="#C0C0FF" Font-Bold="True" Font-Size="Large"
                                    Style="position: static" Text="Post a Defect Here" Width="100%" Font-Names="Verdana"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="Label3" runat="server" Text="Customer Name"
                                    Width="105px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:Label></td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 11px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
                            <td style="text-align: left">
                                </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="Label4" runat="server" Text="EmailId" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:Label></td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            <td style="width: 100px; text-align: left;" >
                                <span style="font-size: 8pt; font-family: Verdana"><strong>
                               </strong></span></td>
                            <td style="width: 11px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
                            <td style="text-align: left">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                                    ErrorMessage="Invalid Entry" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Width="78px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="Label5" runat="server" Text="Contact No" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:Label></td>
                            <td style="text-align: left">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                            <td style="width: 100px" >
                            </td>
                            <td style="width: 11px; text-align: left;" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
                            <td style="text-align: left" >
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox4"
                                    ErrorMessage="CompareValidator" Operator="DataTypeCheck"
                                    Type="Integer" Width="82px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Only Integers</asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td  valign="top" style="text-align: left">
                                <asp:Label ID="Label6" runat="server" Text="Complaint" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:Label></td>
                            <td colspan="2" valign="top" style="text-align: left">
                                <asp:TextBox ID="TextBox5" runat="server" Height="77px"
                                    TextMode="MultiLine" Width="261px"></asp:TextBox></td>
                            <td valign="top" style="width: 11px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
                            <td valign="top">
                            </td>
                        </tr>
                        <tr>
                            <td  valign="top" style="text-align: left">
                                Type</td>
                            <td colspan="2" valign="top" style="text-align: left">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Warranty</asp:ListItem>
                                    <asp:ListItem>Paid</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td valign="top" style="width: 11px; text-align: left;">
                                &nbsp;</td>
                            <td valign="top">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                </td>
                            <td  style="height: 21px;" align="right" colspan="2">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                                    Text="Post Defect" Font-Bold="True" />
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click"
                                    Text="Back" CausesValidation="False" /></td>
                            <td style="width: 11px">
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: left" >
                                <asp:Label ID="Label7" runat="server" ForeColor="Blue" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Width="376px"></asp:Label>
                                </td>
                            <td style="width: 11px">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" style="text-align: left">
                                <asp:Label ID="Label8" runat="server" ForeColor="Blue" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Height="7px" Width="463px">Please Note The Defect Id Displayed For Future Reference</asp:Label></td>
                        </tr>
                    </table>
        </div>
    
</asp:Content>