<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaveEntry.aspx.cs" Inherits="HR.UI.LeaveEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table width: 100%; height: 74px;">
        <tr>
            <td class="modal-sm" style="width: 295px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="modal-sm" style="width: 295px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td   class="modal-sm" style="width: 295px">&nbsp;</td>
            <td>&nbsp;</td >
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td   class="modal-sm" style="width: 295px">Employee ID</td>
            <td  >
                <asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td   class="modal-sm" style="width: 295px">No of Days</td>
            <td  >
                <asp:TextBox ID="txtNoOfDays" runat="server"></asp:TextBox>
            </td>
            <td  >&nbsp;</td>
        </tr>
        <tr>
            <td   class="modal-sm" style="width: 295px">From</td>
            <td  >
                <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
            </td>
            <td  >&nbsp;</td>
        </tr>
        <tr>
            <td   class="modal-sm" style="width: 295px">To</td>
            <td  >
                <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
            </td>
            <td  >&nbsp;</td>
        </tr>
        <tr>
            <td   class="modal-sm" style="width: 295px">&nbsp;</td>
            <td  >
                <asp:Button ID="btnSave" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
