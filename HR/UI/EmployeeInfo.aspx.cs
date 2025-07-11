using System;
using System.Collections.Generic;
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
            lblShowEmployeeName.Text = string.Empty;
            lblShowEmployeeEmail.Text = string.Empty;
            lblShowEmployeeAge.Text = string.Empty;
            lblShowEmployeeCity.Text = string.Empty;


            lblShowEmployeeName.Text = txtEmployeeName.Text;
            lblShowEmployeeEmail.Text = txtEmployeeEmail.Text;
            lblShowEmployeeAge.Text = txtEmployeeAge.Text;
            lblShowEmployeeCity.Text = dropdownListEmployeeCity.Text;

        }
    }
}