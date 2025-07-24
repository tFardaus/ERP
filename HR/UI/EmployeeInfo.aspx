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
					<td   class="auto-style1" style="width: 235px">City</td>
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
					<td   class="auto-style1" style="width: 235px">EmployeeID</td>
					<td   class="auto-style5">
						<asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1" style="width: 235px">&nbsp;</td>
					<td   class="auto-style5">
						<asp:Button ID="btnShowEmployeeData"  runat="server" OnClick="btnShowEmployeeData_Click" Text="Submit" />
                         <asp:Button ID="btnShowEmployee" runat="server" OnClick="btnShowEmployee_Click" Text="Show" />
					    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1" style="width: 235px">&nbsp;</td>
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

                 <tr>
                    <td colspan="3">
                        <asp:GridView ID="grdEmployeeRecords" runat="server" Width="100%" AutoGenerateColumns="False" OnRowCommand="grdEmployeeRecords_RowCommand" OnRowDeleting="grdEmployeeRecords_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>' ></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Employee ID">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEmployeeID" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                </table>
        </div>
  
</asp:Content>

