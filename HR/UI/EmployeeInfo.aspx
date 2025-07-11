<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="HR.UI.EmployeeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 121px;
		}
		.auto-style2 {
			width: 121px;
			height: 29px;
		}
		.auto-style3 {
			height: 29px;
		}
		.auto-style4 {
			width: 100%;
		}
		.auto-style5 {
			width: 278px;
		}
		.auto-style6 {
			height: 29px;
			width: 280px;
		}
		.auto-style7 {
			width: 280px;
		}
		.auto-style8 {
			width: 122px;
		}
	</style>
</head>
<body style="height: 401px">
    <form id="form1" runat="server">
        <div>
        	<table class="auto-style4">
				<tr>
					<td class="auto-style2">
						<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
					</td>
					<td class="auto-style6">
						<asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style3"></td>
				</tr>
				<tr>
					<td class="auto-style1">
						<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
					</td>
					<td class="auto-style7">
						<asp:TextBox ID="txtEmployeeEmail" runat="server"></asp:TextBox>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">Age</td>
					<td class="auto-style7">
						<asp:TextBox ID="txtEmployeeAge" runat="server"></asp:TextBox>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<table style="width:100%;">
				<tr>
					<td class="auto-style1">City</td>
					<td class="auto-style5">
						<asp:DropDownList ID="dropdownListEmployeeCity" runat="server">
							<asp:ListItem>Dhaka</asp:ListItem>
							<asp:ListItem>Comilla</asp:ListItem>
							<asp:ListItem>Chittagong</asp:ListItem>
							<asp:ListItem>Else</asp:ListItem>
						</asp:DropDownList>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">&nbsp;</td>
					<td class="auto-style5">
						<asp:Button ID="btnShowEmployeeData" runat="server" OnClick="btnShowEmployeeData_Click" Text="Submit" />
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">&nbsp;</td>
					<td class="auto-style5">
						<asp:Label ID="lblShowEmployeeName" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<table style="width:100%;">
				<tr>
					<td class="auto-style8">&nbsp;</td>
					<td>
						<asp:Label ID="lblShowEmployeeEmail" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style8">&nbsp;</td>
					<td>
						<asp:Label ID="lblShowEmployeeAge" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style8">&nbsp;</td>
					<td>
						<asp:Label ID="lblShowEmployeeCity" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
