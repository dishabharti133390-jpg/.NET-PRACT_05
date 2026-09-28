<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Leave.aspx.cs"
    Inherits="Academic_Calendar_Leave_Management_System.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Leave Application</title>

    <style>

        body {
            font-family: Arial;
            margin: 30px;
        }

        .container {
            width: 800px;
            margin: auto;
        }

        h1 {
            color: darkblue;
        }

        .box {
            border: 1px solid #999;
            padding: 20px;
            margin-top: 20px;
        }

        .row {
            margin: 12px 0;
        }

        .label {
            display: inline-block;
            width: 150px;
        }

        .btn {
            padding: 8px 15px;
            margin-top: 10px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="container">

    <h1>Leave Application</h1>

    <div class="box">

        <div class="row">

            <asp:Label ID="Label1"
                runat="server"
                Text="Employee Name:"
                CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtEmployeeName"
                runat="server">
            </asp:TextBox>

        </div>


        <div class="row">

            <asp:Label ID="Label2"
                runat="server"
                Text="Leave Date:"
                CssClass="label">
            </asp:Label>

            <asp:Calendar ID="calLeaveDate"
                runat="server"
                Width="300px">

                <SelectedDayStyle
                    BackColor="DarkBlue"
                    ForeColor="White" />

            </asp:Calendar>

        </div>


        <div class="row">

            <asp:Label ID="Label3"
                runat="server"
                Text="Leave Type:"
                CssClass="label">
            </asp:Label>

            <asp:DropDownList ID="ddlLeaveType"
                runat="server"
                AutoPostBack="true"
                OnSelectedIndexChanged="ddlLeaveType_SelectedIndexChanged">

                <asp:ListItem Text="Casual Leave"
                    Value="Casual Leave"></asp:ListItem>

                <asp:ListItem Text="Sick Leave"
                    Value="Sick Leave"></asp:ListItem>

                <asp:ListItem Text="Academic Leave"
                    Value="Academic Leave"></asp:ListItem>

                <asp:ListItem Text="Other"
                    Value="Other"></asp:ListItem>

            </asp:DropDownList>

        </div>


        <div class="row">

            <asp:Label ID="lblOtherType"
                runat="server"
                Text="Enter Leave Type:"
                CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtOtherLeave"
                runat="server">
            </asp:TextBox>

        </div>


        <div class="row">

            <asp:Label ID="Label4"
                runat="server"
                Text="Reason:"
                CssClass="label">
            </asp:Label>

            <asp:TextBox ID="txtReason"
                runat="server"
                TextMode="MultiLine"
                Rows="5"
                Columns="40">
            </asp:TextBox>

        </div>


        <div class="row">

            <asp:CheckBox ID="chkRemember"
                runat="server"
                Text=" Remember my name" />

        </div>


        <asp:Button ID="btnSubmit"
            runat="server"
            Text="Submit Leave"
            CssClass="btn"
            OnClick="btnSubmit_Click" />

        <br /><br />

        <asp:Label ID="lblMessage"
            runat="server">
        </asp:Label>

    </div>


    <div class="box">

        <h2>Leave Application Details</h2>

        <p>
            <b>Name:</b>
            <asp:Label ID="lblName"
                runat="server">
            </asp:Label>
        </p>

        <p>
            <b>Leave Date:</b>
            <asp:Label ID="lblDate"
                runat="server">
            </asp:Label>
        </p>

        <p>
            <b>Leave Type:</b>
            <asp:Label ID="lblType"
                runat="server">
            </asp:Label>
        </p>

        <p>
            <b>Reason:</b>
            <asp:Label ID="lblReason"
                runat="server">
            </asp:Label>
        </p>

        <p>
            <b>Status:</b>
            <asp:Label ID="lblStatus"
                runat="server">
            </asp:Label>
        </p>

    </div>

</div>

</form>

</body>
</html>
