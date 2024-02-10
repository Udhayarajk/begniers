<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="SignOut.aspx.cs" Inherits="SignOut" %>

<%@ Register Src="UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc2" %>

<%@ Register Src="UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >

        <table>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Purple"
                        Style="position: relative" Width="281px" Font-Names="Verdana" Font-Size="Small">You Have Successfully Signed Out</asp:Label></td>
            </tr>
            <tr>
                <td>
                    </td>
            </tr>
            <tr>
                <td style="height: 18px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="False"
                        Font-Size="Small" ForeColor="#000040" OnClick="LinkButton1_Click" Style="left: 4px;
                        position: relative; top: 0px" Width="114px" Font-Names="Verdana">Back To Home</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
    
</asp:Content>