<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            font-size: large;
        }
        .auto-style14 {
            font-size: large;
            font-weight: normal;
        }
        .auto-style15 {
            font-size: xx-large;
        }
        .auto-style16 {
            font-size: 22pt;
        }
        .auto-style17 {
            font-size: 22pt;
            color: #660033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="LoanInfo"> <h1 class="auto-style14">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span class="auto-style15">Personal Loan</span></h1>
   
             <span class="auto-style11">People choose the Personal Loan for fulfillment of Personal needs 
    <br />
    from a banking institution or a non-banking financial
             company<br />
&nbsp;(NBFC). A Personal Loan is a form of unsecured loan availed by<br />
&nbsp;individauls on the basis of specific criteria,
             such as level of 
    <br />
    income, employment histroy, credit score,and scope of repayment.
             <br />
    A temporary financial crisis can happen to anypone irrespective of 
    <br />
    his or her overall financial status.
             Personal Loans are a great way to 
    <br />
    offset any such temporary financial crisis as it allows the users to 
    <br />
    avail a loan
             without any pre conditions on the usage of funds. 
    <br />
    Personal Loans have a quick approval mechanism with loansgetting<br />
&nbsp;cleared as early as within 24-48 hours of the loan application 
    <br />
    submisson.
    <br />
    <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         </span><span class="auto-style17">The list of bank for Personal Loan is:</span><br class="auto-style16" />
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
on BD.BankId=LTD.BankId  WHERE (LTD.[Type] = 'Personal Loan')
">
        </asp:SqlDataSource>

        <br />
        <br />

        </div>
</asp:Content>

