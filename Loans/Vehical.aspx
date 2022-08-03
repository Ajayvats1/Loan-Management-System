<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vehical.aspx.cs" Inherits="Loans_Vehical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: x-large;
            color: purple;
        }
        .auto-style5 {
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="LoanInfo"> <h1 class="auto-style14">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span class="auto-style15">Vehical Loan</span></h1>
   
         <span class="auto-style11"><span class="auto-style5">While applying for a Car Loan may not be a particularly arduous task, you may need to think long and hard about prepaying or foreclosing your Car Loan. As strange as it may sound, not letting your Car Loan run its course may not be a very good idea even if you happen to have some extra funds on hand. Buying a car is a special moment in all our lives but how do you buy it, well that differs from one person to another. When I purchased my car, I did so with the help of a car loan from Axis Bank. However, I know a few friends (rich ones) who bought their four-wheelers by cash. It worked for them but wouldn't for me. Buyers of cars and premium two-wheelers who pay more than Rs 2 lakh of purchase price in cash will be levied 1 per cent tax as part of the ... TCS provisions on sale of services and goods was introduced to kill the deployment of domestic black money through high-end purchases in India and ... </span>
    <br />
    <br />
          <br />
    <br />
    <br />
    <br />
    <br />
         <br />
    <br />
    <br />
    <br />
         <span class="auto-style4">&nbsp;</span></span><span class="auto-style3">The list of bank for Vehical Loan is:</span><br class="auto-style16" />
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
on BD.BankId=LTD.BankId  WHERE (LTD.[Type] = 'Vehical Loan')
">
        </asp:SqlDataSource>

        <br />
        <br />

       
  </div>
</asp:Content>

