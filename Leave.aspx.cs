using System;

namespace Academic_Calendar_Leave_Management_System
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get employee name from Session
                if (Session["EmployeeName"] != null)
                {
                    txtEmployeeName.Text =
                        Session["EmployeeName"].ToString();
                }

                // Get employee name from Cookie
                if (Request.Cookies["EmployeeName"] != null)
                {
                    txtEmployeeName.Text =
                        Request.Cookies["EmployeeName"].Value;

                    chkRemember.Checked = true;
                }

                // Hide other leave type initially
                lblOtherType.Visible = false;
                txtOtherLeave.Visible = false;
            }
        }

        protected void ddlLeaveType_SelectedIndexChanged(
            object sender, EventArgs e)
        {
            if (ddlLeaveType.SelectedValue == "Other")
            {
                lblOtherType.Visible = true;
                txtOtherLeave.Visible = true;
            }
            else
            {
                lblOtherType.Visible = false;
                txtOtherLeave.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtEmployeeName.Text.Trim();

            if (name == "")
            {
                lblMessage.Text = "Please enter employee name.";
                lblMessage.ForeColor =
                    System.Drawing.Color.Red;

                return;
            }

            if (calLeaveDate.SelectedDate == DateTime.MinValue)
            {
                lblMessage.Text =
                    "Please select leave date.";

                lblMessage.ForeColor =
                    System.Drawing.Color.Red;

                return;
            }

            if (txtReason.Text.Trim() == "")
            {
                lblMessage.Text =
                    "Please enter reason.";

                lblMessage.ForeColor =
                    System.Drawing.Color.Red;

                return;
            }

            // Store name in Session
            Session["EmployeeName"] = name;

            // Store name in Cookie
            if (chkRemember.Checked)
            {
                Response.Cookies["EmployeeName"].Value = name;

                Response.Cookies["EmployeeName"].Expires =
                    DateTime.Now.AddDays(30);
            }

            // Display leave details
            lblName.Text = name;

            lblDate.Text =
                calLeaveDate.SelectedDate.ToString("dd-MM-yyyy");

            string leaveType =
                ddlLeaveType.SelectedValue;

            if (leaveType == "Other")
            {
                if (txtOtherLeave.Text.Trim() != "")
                {
                    leaveType = txtOtherLeave.Text.Trim();
                }
            }

            lblType.Text = leaveType;

            lblReason.Text = txtReason.Text;

            lblStatus.Text = "Submitted";

            lblMessage.Text =
                "Leave application submitted successfully!";

            lblMessage.ForeColor =
                System.Drawing.Color.Green;
        }
    }
}
