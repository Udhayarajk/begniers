<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderAdRotator.ascx.cs" Inherits="UserControls_HeaderAdRotator" %>
<table width="100%">
    <tr>
        <td align="left"  valign="middle" >
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Resources/XML_Header_Rotator.xml"
                Height="60px" Width="100%"  />
        </td>
      
        <td align="left"  valign="middle">
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/Resources/XmlForAdRr1.xml"
                Height="62px" Width="100%"  />
        </td>
    </tr>
</table>
