<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentSetup.aspx.cs" Inherits="HR.UI.DepartmentSetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%; height: 74px;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Department ID</td>
        <td>
            <asp:TextBox ID="txtDeptID" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Department Name</td>
        <td>
            <asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Number of Employees</td>
        <td>
            <asp:TextBox ID="txtNoOfEmployees" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">&nbsp;</td>
        <td>
            <asp:Button ID="btnSaveDepartment" runat="server" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


</asp:Content>
