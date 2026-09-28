<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="Academic_Calendar_Leave_Management_System.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar</title>

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

        .btn {
            padding: 8px 15px;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h1>Academic Calendar & Leave Management System</h1>

            <div class="box">

                <h2>Employee / Student Information</h2>

                <asp:Label ID="lblName" runat="server"
                    Text="Employee Name: "></asp:Label>

                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                <br /><br />

                <asp:CheckBox ID="chkRemember" runat="server"
                    Text=" Remember my name" />

                <br />

                <asp:Button ID="btnSave" runat="server"
                    Text="Save Name"
                    CssClass="btn"
                    OnClick="btnSave_Click" />

                <br /><br />

                <asp:Label ID="lblMessage" runat="server"></asp:Label>

            </div>

            <div class="box">

                <h2>Academic Calendar</h2>

                <asp:Calendar ID="Calendar1" runat="server"
                    OnSelectionChanged="Calendar1_SelectionChanged"
                    BackColor="White"
                    BorderColor="Black"
                    DayNameFormat="Shortest"
                    Font-Names="Arial"
                    Font-Size="10pt"
                    ForeColor="Black"
                    Height="250px"
                    Width="350px">

                    <SelectedDayStyle BackColor="DarkBlue"
                        ForeColor="White" />

                    <TodayDayStyle BackColor="LightBlue" />

                    <WeekendDayStyle BackColor="#EEEEEE" />

                </asp:Calendar>

                <br />

                <asp:Label ID="lblSelectedDate"
                    runat="server"
                    Text="Select a date from the calendar.">
                </asp:Label>

            </div>

            <div class="box">

                <h2>Leave Management</h2>

                <asp:Button ID="btnLeave" runat="server"
                    Text="Apply for Leave"
                    CssClass="btn"
                    OnClick="btnLeave_Click" />

            </div>

        </div>

    </form>
</body>
</html>
