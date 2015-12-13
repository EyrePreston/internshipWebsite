<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/CSI/ApplicationForm.aspx.cs" Inherits="WebApp.ApplicationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <a href="Default.aspx">Back To Internships</a>

    <div class="row">
        <div class="col-md-9">
            <section id="loginForm">
            <div class="form-group">
                <div class="col-md-10">Full Name:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="txtName" runat="server" Width="350px"></asp:TextBox>
                </div>
                <div class="col-md-10">
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="Red">The field Name is required</asp:RequiredFieldValidator>
                </div>

                
                
            </div>
            <div class="form-group">
                <div class="col-md-10">Email:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="txtEmail" runat="server" Width="350px"></asp:TextBox>
                </div>
                <div class="col-md-10">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required Email" ForeColor="Red" ControlToValidate="txtEmail">Email Required</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10">Phone Number:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="txtPhone" runat="server" Width="350px"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="txtPhone" Mask="(999)999-9999" />
                </div>
                <div class="col-md-10">
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Required Phone" ForeColor="Red" ControlToValidate="txtPhone">Phone Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-10">Attach Resume:</div>
                <div class="col-md-10">
                    <asp:FileUpload ID="fileResume" runat="server"/>
                </div>

            </div>
                <div class="form-group">
                    <div class="col-md-10">Days Available:</div>
                    <div class="col-md-10">
                        <asp:TextBox ID="daysAvailable" runat="server" Width="350px"></asp:TextBox>
                    </div>
                </div>
            <div class="form-group">
                <div class="col-md-10">Hours Per Week:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="HoursPerWeek" runat="server" Width="350px"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">
                <div class="col-md-10">Skills:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="Skills" runat="server" Width="350px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">

                <div class="col-md-10">Strengths:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="Strengths" runat="server" Width="350px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10">Accomplishments:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="Accomplishments" runat="server" Width="350px"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">

                <div class="col-md-10">Course of Study:</div>
                <div class="col-md-10">
                    <asp:TextBox ID="courseOfStudy" runat="server" Width="350px"></asp:TextBox>
                               
                    <asp:RadioButtonList ID="radioListYears" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Year 1">Year1</asp:ListItem> 
                        <asp:ListItem Value="Year 2">Year2</asp:ListItem>
                        
                    </asp:RadioButtonList>
                 </div>
            </div>
            
            <div class="form-group">
                <div class="col-md-10">Citizenship:</div>
                <div class="col-md-offset-2 col-md-10">
                    <asp:RadioButtonList ID="radioCitizenship" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="U.S.">U.S.</asp:ListItem> 
                        <asp:ListItem Value="International">International </asp:ListItem>
                        
                    </asp:RadioButtonList>
                </div>
                
            </div>

            <div class="col-md-9">
                    <asp:Label ID="lblJobTitle" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblCompany" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblPosition" runat="server"></asp:Label>

            </div>

            <div class="form-group">
                
                <div class="col-md-10">
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="150px" CssClass="btn-default" />
                </div>
                <div class="col-md-10">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="150px" CssClass="btn-default" />
                </div>

                <%--<td class="auto-style9">
                    &nbsp;</td>--%>
            </div>
            
       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Job]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
           </section>
        </div>
    </div>
 
</asp:Content>
