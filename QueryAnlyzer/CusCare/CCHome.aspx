<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CCHome.aspx.cs" Inherits="CusCare_CCHome" %>

<%@ Register Src="../UserControls/Headerl.ascx" TagName="Headerl" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color:#f5fffa" >
<table width="100%"><tr>
    
              <td>
                   <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" ForeColor="#000040"
                        OnClick="LinkButton2_Click" Font-Bold="True" Font-Names="Verdana">Sign Out</asp:LinkButton>
                   </td>  </tr></table>
<table width="100%">
            <tr>
                <td colspan="3" align="right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" valign="top">
                    <table style="position: relative">
                        <tr>
                            <td style="width: 444px">
                    <asp:Label ID="Label4" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: relative"
                        Text="My Tasks" Width="106%" Font-Names="Verdana"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Style="position: relative" Text="To Get your Tasks, "
                        Width="142px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" Style="position: relative" Font-Bold="True" Font-Names="Verdana" Font-Size="Small">Click Here</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 444px" >
                    <asp:DataGrid ID="DataGrid1" runat="server" OnEditCommand="Edit" OnCancelCommand="Cancel" 
                                    OnUpdateCommand="Update" Style="position: relative" Width="470px" 
                                    AutoGenerateColumns="False" CellPadding="4" GridLines="None" AllowPaging="True" 
                                    OnPageIndexChanged="page" Font-Bold="True" Font-Names="Verdana" 
                                    Font-Size="Small" ForeColor="#333333" PageSize="100">
                          <Columns>
                           
                            <asp:TemplateColumn HeaderText="Complaint">
                          	<ItemTemplate><%#DataBinder.Eval(Container.DataItem, "Qry_Text")%></ItemTemplate>
                            <EditItemTemplate>
							<asp:Label ID="lbl1" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_Text")%>' Runat="server"></asp:Label>
							</EditItemTemplate>
						    </asp:TemplateColumn>
									
                            <asp:TemplateColumn HeaderText="Solution">
							<ItemTemplate><%#DataBinder.Eval(Container.DataItem,"Qry_Sol")%></ItemTemplate>
                            <EditItemTemplate>
                            <asp:TextBox ID="txt1" Text='<%#DataBinder.Eval(Container.DataItem,"Qry_Sol")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            </asp:TemplateColumn> 
                               <asp:TemplateColumn HeaderText="Complaint Type">
							<ItemTemplate><%#DataBinder.Eval(Container.DataItem,"Ctype")%></ItemTemplate>
                          
                            </asp:TemplateColumn>
                            <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <EditItemStyle BackColor="#999999" />
                       
                    </asp:DataGrid>
                   <asp:Label ID="Label1" runat="server" ForeColor="Blue" Style="position: relative; left: 2px; top: 0px;" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Width="250px"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table >
                        <tr>
                            <td>
                    <asp:Label ID="Label5" runat="server" BackColor="#C0C0FF" Font-Bold="True" Style="position: relative; left: 1px; top: 0px;"
                        Text="Solutions" Width="100%" Font-Names="Verdana"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="width: 447px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="width: 447px">
                    <asp:Label ID="Label3" runat="server" Style="position: relative" Text="To Get Previous Tasks,  "
                        Width="172px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"></asp:Label><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1" Style="position: relative; left: 0px;" Font-Bold="True" Font-Names="Verdana" Font-Size="Small">Click Here</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="width: 447px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                    <asp:DataGrid ID="DataGrid2" runat="server" OnPageIndexChanged="paging" OnSelectedIndexChanged="DataGrid2_SelectedIndexChanged"
                        Style="position: relative" Width="470px" AllowPaging="True" CellPadding="4" GridLines="None" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#333333">
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <EditItemStyle BackColor="#999999" />
                    </asp:DataGrid></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </div>
    
</asp:Content>