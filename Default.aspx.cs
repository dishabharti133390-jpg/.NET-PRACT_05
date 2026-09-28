using System;

namespace Academic_Calendar_Leave_Management_System
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check session
                if (Session["EmployeeName"] != null)
                {
                    txtName.Text = Session["EmployeeName"].ToString();
                }

                // Check cookie
                if (Request.Cookies["EmployeeName"] != null)
                {
                    txtName.Text = Request.Cookies["EmployeeName"].Value;
                    chkRemember.Checked = true;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();

            if (name == "")
            {
                lblMessage.Text = "Please enter employee name.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Store name in Session
            Session["EmployeeName"] = name;

            // Store name in Cookie if checkbox is selected
            if (chkRemember.Checked)
            {
                Response.Cookies["EmployeeName"].Value = name;
                Response.Cookies["EmployeeName"].Expires =
                    DateTime.Now.AddDays(30);
            }
            else
            {
                if (Request.Cookies["EmployeeName"] != null)
                {
                    Response.Cookies["EmployeeName"].Expires =
                        DateTime.Now.AddDays(-1);
                }
            }

            lblMessage.Text = "Name saved successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Green;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblSelectedDate.Text =
                "Selected Date: " +
                Calendar1.SelectedDate.ToString("dd-MM-yyyy");
        }

        protected void btnLeave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Leave.aspx");
        }
    }
}
