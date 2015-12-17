<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="~/CSI/Default.aspx.cs" CodeBehind="~/CSI/Default.aspx.cs" Inherits="WebApp._Default1" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">

    <asp:Panel ID="Panel1" runat="server">
        <div>
            <asp:Button ID="studentHome" runat="server" OnClick="studentHome_Click" Text="Home" CssClass="btn btn-default" />
            <%--<asp:Button ID="dropButton" runat="server" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  <span class="caret"></span>--%>
            <asp:DropDownList ID="filterList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="filterList_SelectedIndexChanged" CssClass="dropdown-menu-left" aria-labelledby="">
                <asp:ListItem Value="Category">Category</asp:ListItem>
                <asp:ListItem>Accounting</asp:ListItem>
                <asp:ListItem>Business</asp:ListItem>
                <asp:ListItem>Information Technology</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Social</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID" ItemContainerId="SqlDataSource1" OnItemCommand="ListView1_OnItemCommand" >
            <AlternatingItemTemplate>

                <table id="altTable" style="width:auto" >
                    <tr id="Tr2" style="background-color: #d1d1d1" runat="server">
                        <td>

                            <asp:Label ID="IDLabel" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                            <br />
                            <b>Job Title: </b>
                            <asp:Label ID="Job_TitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                            <br />

                            <asp:Label ID="CompanyIDLabel" runat="server" Visible="false" Text='<%# Eval("CompanyID") %>' />

                            <b>Postion: </b>
                            <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' />
                            <br />
                            <b>Description: </b>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                            <br />
                            <b>StartDate: </b>
                            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                            <br />
                            <b>EndDate: </b>
                            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                        

                            <asp:Label ID="ContactNameLabel" runat="server" Visible="false" Text='<%# Eval("ContactName") %>' />


                            <asp:Label ID="ContactPhoneLabel" runat="server" Visible="false" Text='<%# Eval("ContactPhone") %>' />


                            <asp:Label ID="ContactEmailLabel" runat="server" Visible="false" Text='<%# Eval("ContactEmail") %>' />
                            <br />
                            <b>Status: </b>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                            <br />
                            <b>Openings: </b>
                            <asp:Label ID="OpeningsLabel" runat="server" Text='<%# Eval("Openings") %>' />
                            <br />
                            <b>Category: </b>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>' />
                        </td>
                        <td style="margin-left:250px">

                            <br />
                            <br />
                            <asp:Button ID="ApplyButton" runat="server" Text="Apply" CssClass="ApplyButton"/>
                        </td>
                    </tr>
                </table>

            </AlternatingItemTemplate>
            <EditItemTemplate>

                <tr id="Tr2" style="background-color: #008A8C" runat="server">
                    <td>ID:
                       
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Job Title:
                       
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        CompanyID:
                       
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CompanyID") %>' />
                        <br />
                        Postion:
                       
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Postion") %>' />
                        <br />
                        Description:
                       
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        StartDate:
                       
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("StartDate") %>' />
                        <br />
                        EndDate:
                       
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EndDate") %>' />
                    </td>
                    <td>ContactName:
                       
                        <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                        <br />
                        ContactPhone:
                       
                        <asp:TextBox ID="ContactPhoneTextBox" runat="server" Text='<%# Bind("ContactPhone") %>' />
                        <br />
                        ContactEmail:
                       
                        <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                        <br />
                        Status:
                       
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        <br />
                        Openings:
                       
                        <asp:TextBox ID="OpeningsTextBox" runat="server" Text='<%# Bind("Openings") %>' />
                        <br />
                        <b>Category: </b>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>' />
                    </td>
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>

            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>

                <tr id="Tr2" runat="server">
                    <td>Job Title:
                       
                        <asp:TextBox ID="Job_TitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        CompanyID:
                       
                        <asp:TextBox ID="CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                        <br />
                        Postion:
                       
                        <asp:TextBox ID="PostionTextBox" runat="server" Text='<%# Bind("Postion") %>' />
                        <br />
                        Description:
                       
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        StartDate:
                       
                        <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                        <br />
                        EndDate:
                       
                        <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                    </td>
                    <td>ContactName:
                       
                        <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                        <br />
                        ContactPhone:
                       
                        <asp:TextBox ID="ContactPhoneTextBox" runat="server" Text='<%# Bind("ContactPhone") %>' />
                        <br />
                        ContactEmail:
                       
                        <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                        <br />
                        Status:
                       
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        <br />
                        Openings:
                       
                        <asp:TextBox ID="OpeningsTextBox" runat="server" Text='<%# Bind("Openings") %>' />
                        <br />
                        <b>Category: </b>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Category") %>' />
                    </td>
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td class="col-sm-1">

                    </td>
                </tr>

            </InsertItemTemplate>
            <ItemTemplate>


                <table id="itemTable" style="width:auto" >
                    <tr id="Tr2" runat="server">
                        <td>

                            <asp:Label ID="IDLabel" runat="server" Visible="false" Text='<%# Eval("ID") %>' />

                            <b>Job Title: </b>
                            <asp:Label ID="Job_TitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />

                            <asp:Label ID="CompanyIDLabel" runat="server" Visible="false" Text='<%# Eval("CompanyID") %>' />
                            <br />
                            <b>Postion: </b>
                            <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' />
                            <br />
                            <b>Description: </b>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                            <br />
                            <b>StartDate: </b>
                            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                            <br />
                            <b>EndDate: </b>
                            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                        

                            <asp:Label ID="ContactNameLabel" runat="server" Visible="false" Text='<%# Eval("ContactName") %>' />

                            <asp:Label ID="ContactPhoneLabel" runat="server" Visible="false" Text='<%# Eval("ContactPhone") %>' />

                            <asp:Label ID="ContactEmailLabel" runat="server" Visible="false" Text='<%# Eval("ContactEmail") %>' />
                            <br />
                            <b>Status: </b>
                            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                            <br />
                            <b>Openings: </b>
                            <asp:Label ID="OpeningsLabel" runat="server" Text='<%# Eval("Openings") %>' />
                            <br />
                            <b>Category: </b>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>' />
                        </td>
                        <td style="margin-left:250px;" >

                            <br />
                            <br />
                            <asp:Button ID="ApplyButton" runat="server" Text="Apply" CssClass="ApplyButton"  />
                        </td>
                    </tr>
                </table>

            </ItemTemplate>
            <LayoutTemplate>

                <table cellpadding="10" border="1" width="Auto" id="internshipPost" runat="server" >
                    <tr id="tr1" runat="server" style="background-color: #000000; color:white;">
                        <th id="Th2" runat="server" style="text-align:center; width:500px" >Job Information</th>
                        <th id="Th3" runat="server" style="text-align:center; width:100px" >Apply
                            
                        </th>
                        <%--<th id="Th4" runat="server" style="text-align:center; width:300px">Apply</th>--%>
                        <%--<td id="applyTab" runat="server" style="text-align:center"></td>--%>
                    </tr>
                    
                    <tr id="itemPlaceHolder" runat="server" />
                </table>

                <div style="text-align: center; width:600px; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>

            </LayoutTemplate>
            <SelectedItemTemplate>

                <tr id="Tr2" runat="server">
                    <td>ID:
                       
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Job Title:
                       
                        <asp:Label ID="Job_TitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                        <br />
                        CompanyID:
                       
                        <asp:Label ID="CompanyIDLabel" runat="server" Text='<%# Eval("CompanyID") %>' />
                        <br />
                        Postion:
                       
                        <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' />
                        <br />
                        Description:
                       
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        <br />
                        StartDate:
                       
                        <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                        <br />
                        EndDate:
                       
                        <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                    </td>
                    <td>ContactName:
                       
                        <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                        <br />
                        ContactPhone:
                       
                        <asp:Label ID="ContactPhoneLabel" runat="server" Text='<%# Eval("ContactPhone") %>' />
                        <br />
                        ContactEmail:
                       
                        <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                        <br />
                        Status:
                       
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                        <br />
                        Openings:
                       
                        <asp:Label ID="OpeningsLabel" runat="server" Text='<%# Eval("Openings") %>' />
                        <br />
                        <b>Category: </b>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>' />
                    </td>
                    <td></td>
                </tr>

            </SelectedItemTemplate>

        </asp:ListView>
    </asp:Panel>
    <%--<asp:Panel ID="Panel2" runat="server" Visible="false">
        <asp:FormView runat="server" Height="161px" Width="184px">
            <ItemTemplate>
                <span style="background-color: #E0FFFF; color: #333333;">Studnts Name:
                   
                    <asp:Label ID="IDLabel" runat="server" />
                    <br />
                    <br />
                    Students ID: 
                   
                    <asp:Label ID="JobTitleLabel" runat="server" />
                    <br />
                    <br />
                    Strengths
                   
                    <asp:Label ID="_CompanyIDLabel" runat="server" />
                    <br />

                    <asp:Button ID="NewButton" runat="server" CommandName="New" Text="New" />
                </span>
            </ItemTemplate>

            <InsertItemTemplate>
                <span style="background-color: blue">Students Name:
                   
                    <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                    <br />
                    Students ID:
                   
                    <asp:TextBox ID="_CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                    <br />
                    Strengths:
                   
                    <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                    <br />

                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                </span>


            </InsertItemTemplate>



        </asp:FormView>


    </asp:Panel>--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Job]"></asp:SqlDataSource>

</asp:Content>
