<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SP_Login.ascx.cs" Inherits="UserControls_SP_Login" %>
<table style="background-color:mintcream; width: 238px;">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="Label3" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: static"
                Text="Users Login Area" Width="100%" Font-Names="Verdana" Font-Size="Small" Height="22px"></asp:Label></td>
    </tr>
    <tr>
        <td style="width: 114px; text-align: left;" >
            <asp:Label ID="Label1" runat="server" Text="User Name" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:Label></td>
        <td >
            <asp:TextBox ID="TextBox1" runat="server" Width="157px"></asp:TextBox></td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="Enter Username" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 114px; text-align: left;" >
            <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"></asp:Label></td>
        <td >
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="156px"></asp:TextBox></td>
        <td >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="Enter Password" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 114px" >
            </td>
        <td align="left" colspan="1" style="text-align: right">            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                Text="Login" Font-Bold="True" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click"
                Text="Back" CausesValidation="False" /></td><td></td>
    </tr>
    <tr>
        <td style="height: 21px; text-align: center" colspan="3">
            <asp:Label ID="Label4" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Verdana" Font-Size="XX-Small" Width="261px"></asp:Label></td>
    </tr>
</table>
