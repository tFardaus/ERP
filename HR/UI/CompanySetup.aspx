<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompanySetup.aspx.cs" Inherits="HR.UI.CompanySetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%; height: 74px;">
        <tr>
        <td </td>
        <td>
           
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Company Name</td>
        <td>
            <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Description</td>
        <td>
            <asp:TextBox ID="txtCompanyDescription" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Location</td>
        <td>
            <asp:TextBox ID="txtCompanyLocation" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">&nbsp;</td>
        <td>
            <asp:Button ID="btnSaveCompany" runat="server" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


</asp:Content>
