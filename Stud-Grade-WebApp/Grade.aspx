-<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grade.aspx.cs" Inherits="StudGradeWebApp.Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header" style="text-align: center;">
            <h1>Student Grades</h1>
            <a href="Default.aspx">Home</a>
            <a href="Student.aspx">Student</a>
            <a href="StudentGrade.aspx">Student Grades</a>
            
        </div>
        <div id="table">
            <br/>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id,course,gradeItem" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Vertical" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Student ID" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="course" HeaderText="Course" ReadOnly="True" SortExpression="course" />
                    <asp:BoundField DataField="gradeItem" HeaderText="Grade Item" ReadOnly="True" SortExpression="gradeItem" />
                    <asp:BoundField DataField="maxPts" HeaderText="Max Pts" SortExpression="maxPts" />
                    <asp:BoundField DataField="score" HeaderText="Score" SortExpression="score" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EduDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [gradeItem] WHERE [id] = @id AND [course] = @course AND [gradeItem] = @gradeItem" InsertCommand="INSERT INTO [gradeItem] ([id], [course], [gradeItem], [maxPts], [score]) VALUES (@id, @course, @gradeItem, @maxPts, @score)" SelectCommand="SELECT [id], [course], [gradeItem], [maxPts], [score] FROM [gradeItem] ORDER BY [id], [course], [gradeItem]" UpdateCommand="UPDATE [gradeItem] SET [maxPts] = @maxPts, [score] = @score WHERE [id] = @id AND [course] = @course AND [gradeItem] = @gradeItem">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="gradeItem" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="gradeItem" Type="String" />
                    <asp:Parameter Name="maxPts" Type="Int32" />
                    <asp:Parameter Name="score" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="maxPts" Type="Int32" />
                    <asp:Parameter Name="score" Type="Int32" />
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="gradeItem" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
