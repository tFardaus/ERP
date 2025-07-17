<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AttendenceEntry.aspx.cs" Inherits="HR.UI.AttendenceEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 74px;">
    
        <tr>
        <td>&nbsp;</td>
         <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td class="modal-sm" style="width: 295px">Employee ID</td>
        <td>
            <asp:TextBox ID="txtAttendanceEmpID" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Employee Name</td>
        <td>
            <asp:TextBox ID="txtAttendanceEmpName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Date</td>
        <td>
            <asp:TextBox ID="txtAttendanceDate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">Time</td>
        <td>
            <asp:TextBox ID="txtAttendanceTime" runat="server" TextMode="Time"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 295px">&nbsp;</td>
        <td>
            <asp:Button ID="btnSaveAttendance" runat="server" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


</asp:Content>
