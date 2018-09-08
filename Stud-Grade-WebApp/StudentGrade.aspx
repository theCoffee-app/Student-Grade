<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGrade.aspx.cs" Inherits="StudGradeWebApp.StudentGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student & Grades</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header" style="text-align: center;">
            <h1>Student Grades</h1>
            <a href="Default.aspx">Home</a>
            <a href="Student.aspx">Student</a>
            <a href="Grade.aspx">Grades</a>
        </div>

        <div id="dataSet">
            <br/>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />                            
                        </td>
                        <td>
                            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="courseLabel" runat="server" Text='<%# Eval("course") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gradeItemLabel" runat="server" Text='<%# Eval("gradeItem") %>' />
                        </td>
                        <td>
                            <asp:Label ID="maxPtsLabel" runat="server" Text='<%# Eval("maxPts") %>' />
                        </td>
                        <td>
                            <asp:Label ID="scoreLabel" runat="server" Text='<%# Eval("score") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prctLabel" runat="server" Text='<%# Eval("prct") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="courseTextBox" runat="server" Text='<%# Bind("course") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gradeItemTextBox" runat="server" Text='<%# Bind("gradeItem") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="maxPtsTextBox" runat="server" Text='<%# Bind("maxPts") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="scoreTextBox" runat="server" Text='<%# Bind("score") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prctTextBox" runat="server" Text='<%# Bind("prct") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="courseTextBox" runat="server" Text='<%# Bind("course") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gradeItemTextBox" runat="server" Text='<%# Bind("gradeItem") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="maxPtsTextBox" runat="server" Text='<%# Bind("maxPts") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="scoreTextBox" runat="server" Text='<%# Bind("score") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prctTextBox" runat="server" Text='<%# Bind("prct") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="courseLabel" runat="server" Text='<%# Eval("course") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gradeItemLabel" runat="server" Text='<%# Eval("gradeItem") %>' />
                        </td>
                        <td>
                            <asp:Label ID="maxPtsLabel" runat="server" Text='<%# Eval("maxPts") %>' />
                        </td>
                        <td>
                            <asp:Label ID="scoreLabel" runat="server" Text='<%# Eval("score") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prctLabel" runat="server" Text='<%# Eval("prct") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">id</th>
                                        <th runat="server">firstName</th>
                                        <th runat="server">lastName</th>
                                        <th runat="server">course</th>
                                        <th runat="server">gradeItem</th>
                                        <th runat="server">maxPts</th>
                                        <th runat="server">score</th>
                                        <th runat="server">prct</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />                          
                        </td>
                        <td>
                            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="courseLabel" runat="server" Text='<%# Eval("course") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gradeItemLabel" runat="server" Text='<%# Eval("gradeItem") %>' />
                        </td>
                        <td>
                            <asp:Label ID="maxPtsLabel" runat="server" Text='<%# Eval("maxPts") %>' />
                        </td>
                        <td>
                            <asp:Label ID="scoreLabel" runat="server" Text='<%# Eval("score") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prctLabel" runat="server" Text='<%# Eval("prct") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EduDatabaseConnectionString1 %>" SelectCommand="SELECT student.id, student.firstName, student.lastName, gradeItem.course, gradeItem.gradeItem, gradeItem.maxPts, gradeItem.score, 1.0 * gradeItem.score / gradeItem.maxPts AS prct FROM student RIGHT OUTER JOIN gradeItem ON student.id = gradeItem.id"></asp:SqlDataSource>

        </div>

    </form>
</body>
</html>
