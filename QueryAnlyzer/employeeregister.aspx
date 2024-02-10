<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="employeeregister.aspx.cs" Inherits="employeeregister" %>


<%@ Register Src="UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:#f5fffa" >
      <table width="100%"><tr>
      <td><a href="CusMgr/Cus_Qry_Mgr.aspx">Home</a></td>
      <td><a href="#">Employee Register</a></td>
        <td><a href="CusMgr/viewsolution.aspx">View Solution</a></td>
                <%--<td><a href="../employeeregister.aspx">Employee Register</a></td>--%>
              <td>
                   <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Verdana">Sign Out</asp:LinkButton>
                   </td>  </tr></table>
		<h2>Employee Registration</h2>
		
   
        <table style="width: 476px; height: 502px">
            <tr>
                <td style="width: 120px">
                    Name</td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox1" runat="server" onKeyPress="ValidateAlpha();"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter Name"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter  Name Correctly" ValidationExpression='\w+[a-zA-Z\s]+$' Width="240px"></asp:RegularExpressionValidator></td>
            </tr>
             <tr>
                <td style="width: 120px; height: 26px;">
                    Father Name</td>
                <td style="width: 221px; height: 26px;">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 26px;">
                </td>
            </tr>
             <tr>
                <td style="width: 120px">
                    DOB</td>
                <td style="width: 221px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="41px">
                        <asp:ListItem>DD</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="47px">
                        <asp:ListItem>MM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="56px">
                        <asp:ListItem>YY</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    Gender</td>
                <td style="width: 221px">
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            
           
           
           
            <tr>
                <td style="width: 120px">
                    DOJ</td>
                <td style="width: 221px">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="41px">
                        <asp:ListItem>DD</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList5" runat="server" Width="47px">
                        <asp:ListItem>MM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList6" runat="server" Width="56px">
                        <asp:ListItem>YY</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 21px">
                    Qualification</td>
                <td style="width: 221px; height: 21px">
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Graduate</asp:ListItem>
                        <asp:ListItem>Post graduate</asp:ListItem>
                        <asp:ListItem>Some college not graduate</asp:ListItem>
                        <asp:ListItem>SSC/HSC</asp:ListItem>
                        <asp:ListItem>School 5 to 9 years</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
           
            <tr>
                <td style="width: 120px">
                    Section</td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Enter Section"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px">
                    Designation</td>
                <td style="width: 221px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="Enter Designation" Width="112px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px; height: 27px;">
                    Salary Monthly</td>
                <td style="width: 221px; height: 27px;">
                    <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged" onkeypress='validate(event)'></asp:TextBox></td>
                <td style="width: 100px; height: 27px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="Enter Monthly Salary" Width="192px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px; height: 26px;">
                    Daily Salary</td>
                <td style="width: 221px; height: 26px;">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 26px;">
                </td>
            </tr>
             <tr>
                <td style="width: 120px; height: 21px">
                    Password</td>
                <td style="width: 221px; height: 21px">
                    <asp:TextBox ID="TextBox14" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox14"
                        ErrorMessage="Enter Password"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px; height: 21px">
                    Confirm Password</td>
                <td style="width: 221px; height: 21px">
                    <asp:TextBox ID="TextBox15" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox14"
                        ControlToValidate="TextBox15" ErrorMessage="Password Not match"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 120px">
                </td>
                <td style="width: 221px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                </td>
                <td style="width: 221px">
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /></td>
                <td style="width: 100px">
                </td>
            </tr>
             <tr>
                <td style="width: 120px; height: 21px">
                    </td>
                <td style="width: 221px; height: 21px">
                    <asp:TextBox ID="TextBox13" runat="server" Visible="False" 
                       ></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    </td>
            </tr>
        </table>
    
   
  </div>
    
</asp:Content>