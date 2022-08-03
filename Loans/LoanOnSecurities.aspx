<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoanOnSecurities.aspx.cs" Inherits="Loans_LoanOnSecurities" %>

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
        <span class="auto-style15">Loan on Securities</span></h1>
            <span class="auto-style11"><span class="auto-style5">Loan On Securities
Loan Against Securities Meaning
Banks and financial institutions keep coming with various ways to fulfill the monetary requirements of each and every individual as per their credit worthiness and paying capacity. One step in this direction was the introduction of gold loan. Another one has been Loan against Securities, popularly referred to as LAS. Under &#8220;Loan against Securities&#8221;, loan is advanced to a customer against pledge of securities or simply put loan against insurance policy, mutual funds, NSC and other securities. The list of approved securities against which LAS can be advanced varies from bank to bank, but primarily the following are considered to be approved securities against which LAS could be given.

        </span>

        <br class="auto-style5" />
        <span class="auto-style5">1. Non-Convertible Debentures
        </span>
        <br class="auto-style5" />
        <span class="auto-style5">2. Mutual Fund Units</span><br class="auto-style5" />
        <span class="auto-style5">&nbsp;3. NABARD Bonds
        </span>
        <br class="auto-style5" />
        <span class="auto-style5">4. Demat Shares</span><br class="auto-style5" />
        <span class="auto-style5">&nbsp;5. UTI Bonds
        </span>
        <br class="auto-style5" />
        <span class="auto-style5">6. NSC/KVP (Accepted only in Demat form)</span><br class="auto-style5" />
        <span class="auto-style5">&nbsp;7. Insurance Policies

    </span>

    <br class="auto-style5" />
    <br />
    <br />
        <br />
        <br />
                 <span class="auto-style4">&nbsp;</span></span><span class="auto-style17"><span class="auto-style3">The list of bank for Securities Loan is:</span><br />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br /><br /><br />
        </span><br class="auto-style16" />
                  <br /><br /><br />
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
on BD.BankId=LTD.BankId  WHERE (LTD.[Type] = 'Loan On Securities')
">
        </asp:SqlDataSource>
              <br /><br />
   </div>
</asp:Content>

