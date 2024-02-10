<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register Src="UserControls/SP_LeftPane.ascx" TagName="SP_LeftPane" TagPrefix="uc3" %>

<%@ Register Src="UserControls/SP_Login.ascx" TagName="SP_Login" TagPrefix="uc2" %>

<%@ Register Src="UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align:center">                   
    <br />
   <uc2:SP_Login ID="SP_Login1" runat="server" />
</div>   
</asp:Content>