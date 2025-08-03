using HR.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class EmployeeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowEmployeeData_Click(object sender, EventArgs e)
        {
            try
            {             
                String Name = txtEmployeeName.Text;
                String Email = txtEmployeeEmail.Text;
                string Age = txtEmployeeAge.Text;
                string City = dropdownListEmployeeCity.Text;
                

                string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();
                var sql = "INSERT INTO [Employee] ([Name], [Email], [Age], [City]) " +
                     "VALUES ('" + Name + "', '" + Email + "', '" + Age + "', '" + City + "')";


                EmployeeInfoController employeeInfoController=new EmployeeInfoController();
                employeeInfoController.SaveEmployee(connectionString, sql);

               // SaveEmployee(connectionString, sql);
                lblShowEmployeeName.Text = "Data save successfully";
               

            }
            catch (Exception msgError)
            {

                lblShowEmployeeName.Text = msgError.ToString();
            }

           


        }

        private static void SaveEmployee(string connectionString, string sql)
        {
            try
            {
                var myConnection = new SqlConnection(connectionString);
                myConnection.Open();
                new SqlCommand(sql, myConnection).ExecuteNonQuery();
                myConnection.Close();
            }
            catch (Exception msgError)
            {

                throw msgError;
            }
        }

        protected void btnShowEmployee_Click(object sender, EventArgs e)
        {
            ShowEmployees();
        }

        private void ShowEmployees()
        {
            try
            {

                string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();
                var sql = @"SELECT * FROM Employee";

                var myConnection = new SqlConnection(connectionString);
                myConnection.Open();

                var myCommand = myConnection.CreateCommand();
                myCommand.CommandText = sql;
                myCommand.ExecuteNonQuery();

                var resultantDataAdapter = new SqlDataAdapter(myCommand);

                DataTable dtEmployee = new DataTable();
                resultantDataAdapter.Fill(dtEmployee);

                myConnection.Close();
                grdEmployeeRecords.DataSource = dtEmployee;
                grdEmployeeRecords.DataBind();

            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void grdEmployeeRecords_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int selectedIndex = Convert.ToInt32(e.CommandArgument.ToString());
                string EmployeeID = ((Label)grdEmployeeRecords.Rows[selectedIndex].FindControl("lblEmployeeID")).Text;

                if (e.CommandName.Equals("Select"))
                {
                    //string lblCountryID = ((Label)grdEmployeeRecords.Rows[selectedIndex].FindControl("lblCountryID")).Text;                   



                }
                else if (e.CommandName.Equals("Delete"))
                {
                    try
                    {
                       
                        string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();
                        var sql = @"DELETE FROM Employee WHERE EmployeeID=" + EmployeeID + "";
                        SaveEmployee(connectionString, sql);
                        lblShowEmployeeName.Text = "Data save successfully";
                        ShowEmployees();

                    }
                    catch (Exception msgError)
                    {

                        lblShowEmployeeName.Text = msgError.ToString();
                    }


                }

            }
            catch (Exception msgException)
            {
                lblShowEmployeeName.Text = msgException.Message;


            }

        }

                       
        protected void grdEmployeeRecords_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int EmployeeID = Convert.ToInt32(txtEmployeeID.Text);
                string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();
                var sql = @"DELETE FROM Employee WHERE EmployeeID="+EmployeeID+"";
                SaveEmployee(connectionString, sql);
                lblShowEmployeeName.Text = "Data save successfully";

                ShowEmployees();

            }
            catch (Exception msgError)
            {
                lblShowEmployeeName.Text = msgError.ToString();
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                String Name = txtEmployeeName.Text;
                String Email = txtEmployeeEmail.Text;
                string Age = txtEmployeeAge.Text;
                string City = dropdownListEmployeeCity.Text;
                int EmployeeID = Convert.ToInt32(txtEmployeeID.Text);

                string connectionString = ConfigurationManager.ConnectionStrings["dbERPConnection"].ToString();
                var sql = @"UPDATE [Employee]
                    SET          [Name] = '" + Name + "'" +
                              " ,[Email] = '" + Email + "'" +
                              " ,[Age] = '" + Age + "'" +
                              " ,[City] = '" + City + "'" +
                   " WHERE       [EmployeeID] =" + EmployeeID + ";";
                SaveEmployee(connectionString, sql);
                lblShowEmployeeName.Text = "Data save successfully";
               
                ShowEmployees();

            }
            catch (Exception msgError)
            {
                lblShowEmployeeName.Text = msgError.ToString();
            }
        }

        protected void grdEmployeeRecords_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }



}








