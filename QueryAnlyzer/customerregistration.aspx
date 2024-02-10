<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="customerregistration.aspx.cs" Inherits="customerregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
        <br />
        <br />
    <h2>Customer Registration</h2>
    
        <table style="height: 314px; width: 648px;">
            
             <tr>
                <td style="width: 148px; height: 28px">
                    </td>
                <td style="width: 175px; height: 28px">
                    </td>
                <td style="width: 100px; height: 28px">
                    <br />
                    </td>
            </tr>
            <tr>
                <td style="width: 148px">
                  Customer Name</td>
                <td style="width: 175px">
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter customer name" Width="169px"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter Customer Name Correctly" ValidationExpression='\w+[a-zA-Z\s]+$'
                        Width="240px"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 148px">
                    Login Name</td>
                <td style="width: 175px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6"
                        ErrorMessage="Enter Login Name" Width="155px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 148px">
                    Password</td>
                <td style="width: 175px">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7"
                        ErrorMessage="Enter Password" Width="123px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 148px; height: 21px">
                    Confirm Password</td>
                <td style="width: 175px; height: 21px">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7"
                        ControlToValidate="TextBox8" ErrorMessage="Password Not Match" Width="168px"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 148px">
                    Gender</td>
                <td style="width: 175px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 148px; height: 28px">
                    DOB</td>
                <td style="width: 175px; height: 28px">
                    &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Width="41px">
                        <asp:ListItem>DD</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="47px">
                        <asp:ListItem>MM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="56px">
                        <asp:ListItem>YY</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 28px">
                </td>
            </tr>
           
            <tr>
                <td style="width: 148px">
                    Address</td>
                <td style="width: 175px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 148px">
                    Mobile No</td>
                <td style="width: 175px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="Enter Correct mobile No" ValidationExpression="^([7-9]{1})([0-9]{9})$" Width="189px"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="Enter Mobile No" Width="150px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 148px">
                    Email</td>
                <td style="width: 175px">
                    <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5"
                        ErrorMessage="Enter Correct Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="192px"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
                        ErrorMessage="Enter Email Id" Width="142px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 148px">
                </td>
                <td style="width: 175px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 148px">
                </td>
                <td style="width: 175px">
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 148px">
                </td>
                <td style="width: 175px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 148px">
                </td>
                <td style="width: 175px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
