﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Educational.aspx.cs" Inherits="Loans_Educational" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
            color: #660066;
        }
        .auto-style4 {
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="LoanInfo"> <h1 class="auto-style14">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span class="auto-style15">Education Loan</span></h1>
   
            <span class="auto-style4">Education loans are designed for students to help them pay for their education costs. Most education loans are targeted towards students that are looking to get into colleges. An education loan covers pretty much every educational expense for a student when in college and is a great way for people to get good higher education. Offered by both public and private banking institutions it is a positive initiative to help spread quality higher education. Other than banks a good number of educational institutions also provide various student finance schemes to support students with higher education. Education loans are beneficial in many ways not just to students but also to their parents; let us look at some of the top benefits of getting an education loan.
        </span>
        <br class="auto-style4" />
        <span class="auto-style4">There is no need for any security up to certain amount in student loan and hence borrower is saved from stress of arranging for security as is the case with other loans where the borrower has to arrange for security in order to take loan from bank or financial institution.</span><br class="auto-style4" />
        <span style="color: rgb(59, 59, 59); font-family: Montserrat-Light; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style4">A large number of banks, public and private offer education loans and the processes are comparatively simplified as compared to most other loans. Other than banks a large number of organizations help out students by offering those loans and benefits which are available to anyone who wants to pursue a higher education.</span><br class="auto-style4" />
    <br class="auto-style4" />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
   <span class="auto-style3">The list of bank for Education Loan is:</span><br class="auto-style16" />
    <br class="auto-style11" />
       </div>
     <div class="rp_div"> <span class="lp_feat">&nbsp; &nbsp;Our Partners</span>&nbsp;&nbsp 
        <img src="images/part_arw.jpg" width="8" height="9" alt=""  class="part_arw"/> <span class="part_txt"><b>Sed temsmod purus.</b><br />
        <br />Suspendisse laoreet ipsum rhoncus sem. Maecenas ultricies. Nulla eleifend massa vel ipsum lobortis convallis. </span>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/part_img.jpg" width="196" height="89" alt="" class="part_img" /> &nbsp;&nbsp;<img src="images/part_arw.jpg" width="8" height="9" alt=""  class="part_arw"/> <span class="part_txt"><b>Sed temsmod purus.</b><br />
        <br />Suspendisse laoreet ipsum rhoncus sem. Maecenas ultricies. Nulla eleifend massa vel ipsum lobortis convallis.<br />
        <br />Estibulum non dolor eget nibh consectetur cursus. </span>
        <br /></div>
   
   <div class="BankList">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanTypeNo" DataSourceID="SqlDataSource2" Height="188px" Width="992px" style="margin-left: 0px" BackColor="#CC9900" BorderColor="#663300" BorderStyle="Outset" BorderWidth="6px" CellPadding="5" CellSpacing="5" Font-Names="TimeNewRoman" Font-Size="Large" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="LoanTypeNo" HeaderText="LoanTypeNo" ReadOnly="True" SortExpression="LoanTypeNo" />
                <asp:BoundField DataField="BankId" HeaderText="BankId" SortExpression="BankId" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="RateOfInt" HeaderText="RateOfInt" SortExpression="RateOfInt" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:BoundField DataField="Documents" HeaderText="Documents" SortExpression="Documents" />
                <asp:BoundField DataField="MaxAmount" HeaderText="MaxAmount" SortExpression="MaxAmount" >
                </asp:BoundField>
                <asp:BoundField DataField="MinAmount" HeaderText="MinAmount" SortExpression="MinAmount" />
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("Image") %>' Width="50px" Height="50px" />
                    </ItemTemplate>
                </asp:TemplateField>

            
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="More Details" NavigateUrl= '<%#Eval("LoanTypeNo","LoanDesc.aspx?LoanId={0}") %>'>More Details..</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BorderColor="#663300" BorderStyle="Outset" BorderWidth="4px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" 
            SelectCommand="select LTD.LoanTypeNo, LTD.BankId, LTD.Documents,LTD.Type,LTD.RateOfInt,LTD.Duration,
 LTD.Documents,LTD.MaxAmount,LTD.MinAmount,BD.Image  from BankDetails BD inner join LoanTypeDetails LTD
on BD.BankId=LTD.BankId  WHERE (LTD.[Type] = 'Education Loan')
">
        </asp:SqlDataSource>
    <br />  <br />
 </div>
</asp:Content>

