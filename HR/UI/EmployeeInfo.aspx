<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="HR.UI.EmployeeInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


   
        <div>
        	<table class="auto-style4">
                <tr>
					<td class="auto-style2"   style="width: 232px">
						&nbsp;</td>
					<td class="auto-style6"  >
						&nbsp;</td>
					<td class="auto-style3"   style="width: 210px">&nbsp;</td>
				</tr>

                <tr>
					<td class="auto-style2"   style="width: 232px">
						&nbsp;</td>
					<td class="auto-style6"  >
						&nbsp;</td>
					<td class="auto-style3"   style="width: 210px">&nbsp;</td>
				</tr>

				<tr>
					<td class="auto-style2"   style="width: 232px">
						&nbsp;</td>
					<td class="auto-style6"  >
						&nbsp;</td>
					<td class="auto-style3"   style="width: 210px">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style2"   style="width: 232px">
						<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
					</td>
					<td class="auto-style6"  >
						<asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style3"   style="width: 210px"></td>
				</tr>
				<tr>
					<td class="auto-style1"   style="width: 232px">
						<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
					</td>
					<td class="auto-style7"  >
						<asp:TextBox ID="txtEmployeeEmail" runat="server"></asp:TextBox>
					</td>
					<td   style="width: 210px">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1"   style="width: 232px">Age</td>
					<td class="auto-style7"  >
						<asp:TextBox ID="txtEmployeeAge" runat="server"></asp:TextBox>
					</td>
					<td   style="width: 210px">&nbsp;</td>
				</tr>
			</table>
			<table  style="width:100%;">
				<tr>
					<td   class="auto-style1">City</td>
					<td   class="auto-style5">
						<asp:DropDownList ID="dropdownListEmployeeCity" runat="server" CssClass="col-xs-offset-0">
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
					<td   class="auto-style5">
						<asp:Button ID="btnShowEmployeeData"  runat="server" OnClick="btnShowEmployeeData_Click" Text="Submit" />
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
			<table style="width:100%;" >
				<tr>
					<td class="auto-style8" style="width: 241px">&nbsp;</td>
					<td>
						<asp:Label ID="lblShowEmployeeEmail" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style8" style="width: 241px">&nbsp;</td>
					<td>
						<asp:Label ID="lblShowEmployeeAge" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style8" style="width: 241px">&nbsp;</td>
					<td>
						<asp:Label ID="lblShowEmployeeCity" runat="server"></asp:Label>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
        </div>
  
</asp:Content>

