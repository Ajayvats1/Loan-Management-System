<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Business.aspx.cs" Inherits="Loans_Business" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="LoanInfo"> 
        <p class="auto-style3">
        Business Loan:</p>
    <p>
&nbsp;Small businesses sometimes need loans to meet their daily operations needs until their earning assets are sufficient to cover their working capital needs. ... As the business grows and their own assets enable them to earn money, they can repay the working capital loan to the bank. Every business needs a certain amount of money to start. ... The first organization that he thinks of is his bank. Yes banks are almost always one of the first organizations to be approached for funds in the form of a loan. The first organization that he thinks of is his bank. Yes banks are almost always one of the first organizations to be approached for funds in the form of a loan. It is here that harsh realities hit the entrepreneur who soon learns how difficult it is to get a bank loan to finance his small business venture. A select fortunate few, do manage to fulfill all the pre-requisites for a bank loan, and are successful in procuring them. But for every successful loan application there are many that 
        get rejected. The tough regulations linked to bank loans are gradually undergoing a change with banks realizing the phenomenal potential of small businesses. This explains the special programs and additional services launched by big banks to woo small businesses. Bank loans are just one of the various options available for small businesses to raise funds. The final decision about where to secure funds depends on the balance between the pros and cons of the source. Like all other funding sources, bank loans also come with their share of advantages and disadvantages. Bank Loans for Small Business Advantages Convenient and accessible&#8211; Banks are always accessible since they are used regularly for depositing savings or withdrawing them. After being bank customers for years, the bank becomes convenient and familiar, and personalized service makes it the first place to consider for a loan. Multiple Loan options&#8211; All banks advertise various types of schemes to woo entrepreneurs setting up or 
        running a business. The real earnings for a bank come from the interest they charge on these loans. Options like term loans, standard business loans and others are available for the entrepreneur. Non profit sharing&#8211; Venture capitalists and angel investors agree to provide a loan in exchange for part ownership, the right to influence decision making and a share of the profits. Banks do not ask for any of these. If they do sanction a loan, they are only interested in getting their interest and partial loan payment installments. Lower rates of interest-Though tough to get, banks provide loans at lower rates of interest than other lending agencies and instruments like credit cards. Bank loans offer tax benefits&#8211; Small businesses taking loans from banks enjoy some relief from tax, since the percentage of profits used to repay the loan is exempted from tax. It is these advantages that prompt entrepreneurs to approach banks for one of the various loans offered.
    </p>
        </div>
     <div class="rp_div"> <span class="lp_feat">&nbsp; &nbsp;Our Partners</span>&nbsp;&nbsp 
        <img src="images/part_arw.jpg" width="8" height="9" alt=""  class="part_arw"/> <span class="part_txt"><b>Sed temsmod purus.</b><br />
        <br />Suspendisse laoreet ipsum rhoncus sem. Maecenas ultricies. Nulla eleifend massa vel ipsum lobortis convallis. </span>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/part_img.jpg" width="196" height="89" alt="" class="part_img" /> &nbsp;&nbsp;<img src="images/part_arw.jpg" width="8" height="9" alt=""  class="part_arw"/> <span class="part_txt"><b>Sed temsmod purus.</b><br />
        <br />Suspendisse laoreet ipsum rhoncus sem. Maecenas ultricies. Nulla eleifend massa vel ipsum lobortis convallis.<br />
        <br />Estibulum non dolor eget nibh consectetur cursus. </span>
        <br /></div>
   <br/>

    <br/>  <br/><br/> <br />  <br/><br/> <br/> <br/>
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
on BD.BankId=LTD.BankId  WHERE (LTD.[Type] = 'Business Loan')
">
        </asp:SqlDataSource>
  <br /> <br />
  </div>
</asp:Content>

