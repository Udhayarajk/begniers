<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >
			<h2>Login Page</h2>
   
        <table>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Login Name/Id</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="Enter User Name" Width="109px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Password</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        User Type</td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="109px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                            
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
    
   
  </div>
    
</asp:Content>
