<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainMasterPage.master" CodeFile="viewsolution.aspx.cs" Inherits="CusMgr_viewsolution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >

        <table width="100%">
            <tr>
                <td colspan="3" align="right">
                <table><tr>
                 <td><a href="#">Home</a></td>
                <td><a href="../employeeregister.aspx">Employee Register</a></td>
                  <td><a href="viewsolution.aspx">View Solution</a></td>
                <%--<td><a href="../employeeregister.aspx">Employee Register</a></td>--%>
              <td>
                   <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Verdana">Sign Out</asp:LinkButton>
                   </td>  </tr></table>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label3" runat="server" BackColor="#C0C0FF"  Font-Bold="True" Style="position: static"
                        Text="View Solution" Width="360px" Font-Names="Verdana" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 21px" style="display:none;">

                  <asp:DropDownList ID="DropDownList1" runat="server" Width="41px">
                        <asp:ListItem>DD</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="47px">
                        <asp:ListItem>MM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="56px">
                        <asp:ListItem>YY</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
                   </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 270px" >
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                   
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    <asp:Label ID="Label8" runat="server" Style="position: static" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Width="324px"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>