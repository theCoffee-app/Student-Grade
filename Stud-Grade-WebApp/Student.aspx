<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudGradeWebApp.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header" style="text-align: center;">
            <h1>Student Table</h1>

            <a href="Default.aspx">Home</a>
            <a href="Grade.aspx">Grades</a>
            <a href="StudentGrade.aspx">Student Grades</a>
        </div>
        <div id="tableDB">
            <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    <asp:BoundField DataField="dob" HeaderText="DoB" SortExpression="dob" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EduDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [student] WHERE [id] = @id" InsertCommand="INSERT INTO [student] ([id], [firstName], [lastName], [dob]) VALUES (@id, @firstName, @lastName, @dob)" SelectCommand="SELECT [id], [firstName], [lastName], [dob] FROM [student] ORDER BY [lastName], [firstName]" UpdateCommand="UPDATE [student] SET [firstName] = @firstName, [lastName] = @lastName, [dob] = @dob WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
