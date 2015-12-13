<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/CSI/ratingTable.aspx.cs" Inherits="WebApp.ratingTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
    <div>
   <asp:RadioButtonList ID="adminPanel" runat="server" OnSelectedIndexChanged="adminPanel_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="Internships" Value="1"/>
            <asp:ListItem Text="Student Ratings" Value="2"/>
        </asp:RadioButtonList>
    </div>

    <asp:Panel ID="internshipPanel" runat="server">
        <h1>Internships</h1>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>

                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" ItemStyle-Width="100px" />
                <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" ItemStyle-Width="100px" />
                <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" SortExpression="CompanyID" ItemStyle-Width="100px" />
                <asp:BoundField DataField="Postion" HeaderText="Postion" SortExpression="Postion" ItemStyle-Width="100px" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-Width="500px" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" ItemStyle-Width="200px" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" ItemStyle-Width="200px" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" ItemStyle-Width="200px" />
                <asp:BoundField DataField="ContactPhone" HeaderText="ContactPhone" SortExpression="ContactPhone" ItemStyle-Width="200px" />
                <asp:BoundField DataField="ContactEmail" HeaderText="ContactEmail" SortExpression="ContactEmail" ItemStyle-Width="200px" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" ItemStyle-Width="100px" />
                <asp:BoundField DataField="Openings" HeaderText="Openings" SortExpression="Openings" ItemStyle-Width="100px" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" ItemStyle-Width="200px" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>



        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" DeleteCommand="DELETE FROM [Job] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Job] ([JobTitle], [CompanyID], [Postion], [Description], [StartDate], [EndDate], [ContactName], [ContactPhone], [ContactEmail], [Status], [Openings], [Category]) VALUES (@JobTitle, @CompanyID, @Postion, @Description, @StartDate, @EndDate, @ContactName, @ContactPhone, @ContactEmail, @Status, @Openings, @Category)" SelectCommand="SELECT * FROM [Job]" UpdateCommand="UPDATE [Job] SET [JobTitle] = @JobTitle, [CompanyID] = @CompanyID, [Postion] = @Postion, [Description] = @Description, [StartDate] = @StartDate, [EndDate] = @EndDate, [ContactName] = @ContactName, [ContactPhone] = @ContactPhone, [ContactEmail] = @ContactEmail, [Status] = @Status, [Openings] = @Openings, [Category] = @Category WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="JobTitle" Type="String" />
                <asp:Parameter Name="CompanyID" Type="Int32" />
                <asp:Parameter Name="Postion" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactPhone" Type="String" />
                <asp:Parameter Name="ContactEmail" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Openings" Type="Int32" />
                <asp:Parameter Name="Category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="JobTitle" Type="String" />
                <asp:Parameter Name="CompanyID" Type="Int32" />
                <asp:Parameter Name="Postion" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactPhone" Type="String" />
                <asp:Parameter Name="ContactEmail" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Openings" Type="Int32" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </asp:Panel>


    <asp:Panel ID="studentFeedback" runat="server" Visible="false">
        <h1>Student Ratings</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FeedbackID" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="1px" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>

                <asp:BoundField DataField="FeedbackID" HeaderText="FeedbackID" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackID" Visible="false" />
                <asp:BoundField DataField="Job_ID" HeaderText=" Job_ID " SortExpression=" Job_ID " ItemStyle-Width="50px">
                    <ItemStyle Width="50px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Com_ID" HeaderText=" Com_ID " SortExpression=" Com_ID " ItemStyle-Width="50px">
                    <ItemStyle Width="50px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="InternshipName" HeaderText=" InternshipName " SortExpression="InternshipName" ItemStyle-Width="250px">
                    <ItemStyle Width="250px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="StudentName" HeaderText=" StudentName " SortExpression="StudentName" ItemStyle-Width="250px">
                    <ItemStyle Width="250px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Attendance" HeaderText=" Attendance " SortExpression="Attendance" ItemStyle-Width="250px">
                    <ItemStyle Width="250px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Comments" HeaderText=" Comments " SortExpression="Comments" ItemStyle-Width="950px">
                    <ItemStyle Width="950px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ValueStatement" HeaderText=" ValueStatement " SortExpression="ValueStatement" ItemStyle-Width="350px">
                    <ItemStyle Width="350px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Recomendation" HeaderText=" Recomendation " SortExpression="Recomendation" ItemStyle-Width="450px">
                    <ItemStyle Width="450px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Suggestions" HeaderText=" Suggestions " SortExpression="Suggestions" ItemStyle-Width="450px">
                    <ItemStyle Width="450px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="JobExtended" HeaderText=" JobExtended " SortExpression="JobExtended" ItemStyle-Width="250px">
                    <ItemStyle Width="250px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="EndEarly" HeaderText=" EndEarly " SortExpression="EndEarly" ItemStyle-Width="300px">
                    <ItemStyle Width="300px"></ItemStyle>
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="1px" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="1px" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Rating]" DeleteCommand="DELETE FROM [Rating] WHERE [FeedbackID] = @original_FeedbackID" InsertCommand="INSERT INTO [Rating] ([Job_ID], [Com_ID], [InternshipName], [StudentName], [Attendance], [Comments], [ValueStatement], [Recomendation], [Suggestions], [JobExtended], [EndEarly]) VALUES (@Job_ID, @Com_ID, @InternshipName, @StudentName, @Attendance, @Comments, @ValueStatement, @Recomendation, @Suggestions, @JobExtended, @EndEarly)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Rating] SET [Job_ID] = @Job_ID, [Com_ID] = @Com_ID, [InternshipName] = @InternshipName, [StudentName] = @StudentName, [Attendance] = @Attendance, [Comments] = @Comments, [ValueStatement] = @ValueStatement, [Recomendation] = @Recomendation, [Suggestions] = @Suggestions, [JobExtended] = @JobExtended, [EndEarly] = @EndEarly WHERE [FeedbackID] = @original_FeedbackID" ProviderName="System.Data.SqlClient">
            <DeleteParameters>
                <asp:Parameter Name="original_FeedbackID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Job_ID" Type="Int32" />
                <asp:Parameter Name="Com_ID" Type="Int32" />
                <asp:Parameter Name="InternshipName" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Attendance" Type="String" />
                <asp:Parameter Name="Comments" Type="String" />
                <asp:Parameter Name="ValueStatement" Type="String" />
                <asp:Parameter Name="Recomendation" Type="String" />
                <asp:Parameter Name="Suggestions" Type="String" />
                <asp:Parameter Name="JobExtended" Type="String" />
                <asp:Parameter Name="EndEarly" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Job_ID" Type="Int32" />
                <asp:Parameter Name="Com_ID" Type="Int32" />
                <asp:Parameter Name="InternshipName" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Attendance" Type="String" />
                <asp:Parameter Name="Comments" Type="String" />
                <asp:Parameter Name="ValueStatement" Type="String" />
                <asp:Parameter Name="Recomendation" Type="String" />
                <asp:Parameter Name="Suggestions" Type="String" />
                <asp:Parameter Name="JobExtended" Type="String" />
                <asp:Parameter Name="EndEarly" Type="String" />
                <asp:Parameter Name="original_FeedbackID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </asp:Panel>
</asp:Content>


