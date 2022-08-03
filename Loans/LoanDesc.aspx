<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoanDesc.aspx.cs" Inherits="Loans_LoanDesc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 372px;
            background-color: #999966;
        }
        .auto-style4 {
            width: 161px;
            font-size: x-large;
            text-decoration: blink;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: x-large;
        }
    .auto-style7 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Loan Type&nbsp; Number</td>
                <td class="auto-style7">
                    <asp:Label ID="LblLoanTypeno" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Bank Id</td>
                <td class="auto-style7">
                    <asp:Label ID="LblBankId" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Type</td>
                <td class="auto-style7">
                    <asp:Label ID="LblType" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Features</td>
                <td class="auto-style7">
                    <asp:Label ID="LblFeatures" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Rate Of Interest</td>
                <td class="auto-style7">
                    <asp:Label ID="LblRateofInt" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Eligiblity</td>
                <td class="auto-style7">
                    <asp:Label ID="LblElegiblity" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Duration</td>
                <td class="auto-style7">
                    <asp:Label ID="LblDuration" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Documents</td>
                <td class="auto-style7">
                    <asp:Label ID="LblDocuments" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Description</td>
                <td class="auto-style7">
                    <asp:Label ID="LblDescription" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <div class="divLoanPanels">
    <asp:Panel ID="PanelPersonal" runat="server" Visible="False">
        <strong><span class="auto-style6">Personal Loan:</span></strong><br />&nbsp; <span class="auto-style5">With a mortgage, your home is the collateral. Similarly, with an auto loan, the car you buy is the collateral. Because a personal loan often has no collateral &#8211; it is &#8220;unsecured&#8221; &#8211; the interest rate will probably be higher. There are also secured personal loans if you want to lower your costs. Here are just some of the few reasons why a personal loan is a good bet for anyone. To help finance your home remodeling project. ... To help improve your credit. ... To pay for your wedding ceremony. ... To pay off credit card debt. ... Create an emergency fund. ... To start a business on the side. Personal loans can be used for many purposes. Pay off unexpected expenses, repair your home or vehicle or make a special purchase for less than using a credit card or payday loan would cost. Use a personal loan for debt consolidation.
        <br />
        </span>
        <br class="auto-style5" />
        <span class="auto-style6"><strong>Advantages of Personal Loans &#8211; </strong></span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>Easily Available &#8211;</strong> Getting a personal loan is not a tough task. Personal loans are offered at reasonable interest rates by almost all banks and financial institutions. It is easy and convenient to get these loans in comparison to other types of loans..<br /> </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>No Agent or Middleman Involved &#8211; </strong>In order to get a personal loan you do not have to approach a middle man or an agent. This avoids unnecessary delays and expenses. You can directly approach the bank or financial institution for the purpose.
        <br />
        </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>Unsecured Loan &#8211;</strong> As stated earlier, personal loan is an unsecured loan. There is no collateral security required in order to get this loan. All that is required is your ability to pay back the money. You are not required to mortgage any of your assets or provide for any kind of guarantee. One the lending institution become sure of your re-payment ability, they process the loan.<br /> </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>Less Processing Time &#8211; </strong>As personal loans are available without any security or guarantee the processing time involved in getting it is also very less.
        <br />
        </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>All Purpose Loan &#8211; </strong>Personal loan is such where it is not mandatory for you to specify the cause for which you are to use the money. You can use the amount credited in your name for any purpose. It is at your discretion to decide what you have to do with the money.
        <br />
        </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>Minimum Paperwork &#8211; </strong>Getting a personal loan does not require verification of any asset or any other kind of proofs and certificates that involve a lot of paperwork as none of your property is mortgaged.
        <br />
        </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>Schemes and Offers &#8211; </strong>Number of banks and financial institutions keep announcing special schemes and offers of personal loans for professionals like Chartered Accountants, Doctors and Architects etc.<br /> </span>
        <br class="auto-style5" />
        <span class="auto-style5"><strong>&nbsp;Amount and Tenure &#8211;</strong> Personal loans are offered ranging from Rs15K to Rs 20 lakhs varying from bank to bank. The repayment can be made through EMIs which is an option available. Loans tenure may depend upon the amount borrowed and may be from 12 months to 60 months. It is always advisable to opt for a personal loan instead of going in for borrowing cash from credit card as the interest rate is comparatively low for the first one.</span></asp:Panel>
    <asp:Panel ID="PanelHome" runat="server" Visible="False">
        <span class="auto-style6"><strong>Home Loan: </strong></span>
        <br />
        <span class="auto-style5">If you can afford an EMI with ease, its wise to invest in a property. A pays a rent for a property worth Rs 70,000,00. Whereas B has availed a home loan of Rs 50,000,00 for the same property. ... Likewise, the rent increases at the same rate. Follow them and you will never find yourself enslaved by debt. </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5">Submit an Application form along with relevant documents: </span>
        <br class="auto-style5" />
        <span class="auto-style5">The finance company will process customer&#8217;s application tocheck the loan eligibility based on the persons income andpersonal profile. Usually an up front (non &#8211;refundable fee) of about 0.5-1% of the loan amount must be paid beforeprocessing begins. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Verification of the property and supporting documents:(Usually takes 5-7 working days )A company representative may visit the property as well as theresidence to vary information submitted in the personsapplication form. Further, a property valuation maybe carriedout by the company to determine the maximum amount they arewilling to lend you. Any references submitted by the person inthe Application Form may also be contacted. The person maybe personally interviewed and any further clarifications in thedocuments submitted maybe sought.</span><br class="auto-style5" />
    </asp:Panel>
    <asp:Panel ID="PanelVehical" runat="server" Visible="False">
        <span class="auto-style6"><strong>Vehical Loan:</strong></span>
        <br />
        <span class="auto-style5">While applying for a Car Loan may not be a particularly arduous task, you may need to think long and hard about prepaying or foreclosing your Car Loan. As strange as it may sound, not letting your Car Loan run its course may not be a very good idea even if you happen to have some extra funds on hand. Buying a car is a special moment in all our lives but how do you buy it, well that differs from one person to another. When I purchased my car, I did so with the help of a car loan from Axis Bank. However, I know a few friends (rich ones) who bought their four-wheelers by cash. It worked for them but wouldn't for me. Buyers of cars and premium two-wheelers who pay more than Rs 2 lakh of purchase price in cash will be levied 1 per cent tax as part of the ... TCS provisions on sale of services and goods was introduced to kill the deployment of domestic black money through high-end purchases in India and ... </span>
    </asp:Panel>
    <asp:Panel ID="PanelEducation" runat="server" Visible="False">
        <span class="auto-style6"><strong>Educational Loan:</strong></span><br /> &nbsp;<span class="auto-style5">Federal student loans include many benefits (such as fixed interest rates and income-driven repayment plans) not typically offered with private loans. In contrast, private loans are generally more expensive than federal student loans. Taking an education loan helps you in building a good credit score as this is the first loan in a person's life. If you repay the loan on time without any defaults then it also makes easier for you to get home loan, car loan, etc., in future. (With Inputs from Sunil Dhawan) Click here to check out the education loan ... With the cost of education skyrocketing, educational loans have come to play a pivotal role in many people's lives. These loans help anyone who wants to pursue higher education. They are most useful when it comes to courses at premier institutions that cost a lot. Parents can afford to send their children for higher ... </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5">One of the advantage of a student loan is that you do not need to repay immediately after Post Graduate Diploma. It will let you have some time to seek for a job before you have to repay. You will start repay about 6 months after your Post Graduate Diploma.</span><br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5">SBI Bank provide loan at cheapest interest compare to other National and Private Bank.</span><br class="auto-style5" /> <span class="auto-style5">Another advantage of student loan is that they carry lower rate of interest as compared to other loans like housing, vehicle, personal loan and so on and therefore both student as well as their parents do not have that much burden because lower rate of interest means lower monthly installments and hence less stress on the part of the borrower.</span></asp:Panel>
    <asp:Panel ID="PanelBusiness" runat="server" Visible="False">
        <span class="auto-style6"><strong>Business Loan:</strong></span><br /> <span class="auto-style5">Small businesses sometimes need loans to meet their daily operations needs until their earning assets are sufficient to cover their working capital needs. ... </span>
        <br class="auto-style5" />
        <span class="auto-style5">As the business grows and their own assets enable them to earn money, they can repay the working capital loan to the bank. Every business needs a certain amount of money to start. ... </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5">The first organization that he thinks of is his bank. Yes banks are almost always one of the first organizations to be approached for funds in the form of a loan. The first organization that he thinks of is his bank. Yes banks are almost always one of the first organizations to be approached for funds in the form of a loan. It is here that harsh realities hit the entrepreneur who soon learns how difficult it is to get a bank loan to finance his small business venture. A select fortunate few, do manage to fulfill all the pre-requisites for a bank loan, and are successful in procuring them. But for every successful loan application there are many that get rejected. The tough regulations linked to bank loans are gradually undergoing a change with banks realizing the phenomenal potential of small businesses. This explains the special programs and additional services launched by big banks to woo small businesses. Bank loans are just one of the various options 
        available for small businesses to raise funds. </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5">The final decision about where to secure funds depends on the balance between the pros and cons of the source. Like all other funding sources, bank loans also come with their share of advantages and disadvantages. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Bank Loans for Small Business Advantages Convenient and accessible&#8211; Banks are always accessible since they are used regularly for depositing savings or withdrawing them. After being bank customers for years, the bank becomes convenient and familiar, and personalized service makes it the first place to consider for a loan. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Multiple Loan options&#8211; All banks advertise various types of schemes to woo entrepreneurs setting up or running a business. The real earnings for a bank come from the interest they charge on these loans. Options like term loans, standard business loans and others are available for the entrepreneur. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Non profit sharing&#8211; Venture capitalists and angel investors agree to provide a loan in exchange for part ownership, the right to influence decision making and a share of the profits. Banks do not ask for any of these. If they do sanction a loan, they are only interested in getting their interest and partial loan payment installments. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Lower rates of interest-Though tough to get, banks provide loans at lower rates of interest than other lending agencies and instruments like credit cards.</span><br class="auto-style5" /> <span class="auto-style5">&nbsp;Bank loans offer tax benefits&#8211; Small businesses taking loans from banks enjoy some relief from tax, since the percentage of profits used to repay the loan is exempted from tax. It is these advantages that prompt entrepreneurs to approach banks for one of the various loans offered. </span>
    </asp:Panel>
    <asp:Panel ID="PanelSecurities" runat="server" Visible="False">
        <span class="auto-style6"><strong>Loan On Securities:</strong></span><br /> <span class="auto-style5">Loan Against Securities Meaning Banks and financial institutions keep coming with various ways to fulfill the monetary requirements of each and every individual as per their credit worthiness and paying capacity. One step in this direction was the introduction of gold loan. Another one has been Loan against Securities, popularly referred to as LAS. Under &#8220;Loan against Securities&#8221;, loan is advanced to a customer against pledge of securities or simply put loan against insurance policy, mutual funds, NSC and other securities.</span><br class="auto-style5" /> <span class="auto-style5">&nbsp;The list of approved securities against which LAS can be advanced varies from bank to bank, but primarily the following are considered to be approved securities against which LAS could be given. </span>
        <br class="auto-style5" />
        <span class="auto-style5">1. Non-Convertible Debentures </span>
        <br class="auto-style5" />
        <span class="auto-style5">2. Mutual Fund Units </span>
        <br class="auto-style5" />
        <span class="auto-style5">3. NABARD Bonds </span>
        <br class="auto-style5" />
        <span class="auto-style5">4. Demat Shares </span>
        <br class="auto-style5" />
        <span class="auto-style5">5. UTI Bonds </span>
        <br class="auto-style5" />
        <span class="auto-style5">6. NSC/KVP (Accepted only in Demat form) </span>
        <br class="auto-style5" />
        <span class="auto-style5">7. Insurance Policies LAS helps you to get loan against the securities that you have, for the time being, merely pledged without selling them off in haste.</span><br class="auto-style5" /> <span class="auto-style5">&nbsp;An overdraft facility is advanced to you by bank or financial institution when you pledge your securities. The value of the overdraft limit that is advanced to you is determined on the basis of the securities that are pledged by you. For smooth transactions, a current account is opened in your name and it is at your discretion how and when to withdraw and use the money. </span>
        <br class="auto-style5" />
        <span class="auto-style5">The rate of interest is calculated only on the amount withdrawn by you and only for the period of utilization. The advantageous part of pledging your securities is one that you are able to get steady cash easily at the time you need it most and secondly you would not be devoid of the benefits as a shareholder. </span>
        <br class="auto-style5" />
        <span class="auto-style5">This means that you can enjoy your rights of receiving dividends and bonuses along with gaining from the price movements in the shares for which you have availed the loan from the bank. In order to meet your short-term financial needs, Loan against Securities offers a good choice as you do not have to sell your stocks in haste. Moreover, the interest rate at which you get LAS is lesser as compared to a personal loan. </span>
        <br class="auto-style5" />
        <br class="auto-style5" />
        <span class="auto-style5">Features of Loan Against Securities Secured Loan - </span>
        <br class="auto-style5" />
        <span class="auto-style5">Loan against securities is a secured loan as your bonds, shares, debentures or mutual funds are kept as collateral security when this loan is advanced to you. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Tenure - The tenure of loan against securities is generally one year. You may also get it renewed as per your requirement. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Rate of Interest - Generally interest rates at which loan against securities is advanced varies from 12% - 15% p.a but that may also vary from bank to bank. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Processing Fees - Banks and financial institutions usually charge approximately 2 % as processing fees. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Loan Amount - The loan amount for which you may be eligible depends upon the type of security that you are offering.</span><br class="auto-style5" /> <span class="auto-style5">&nbsp;For example, in case you are offering equity shares then the amount that you will be eligible for would be 50% of the value of such shares. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Prepayment Charges - At any point of time if you wish to prepay your loan against securities then you can do so without giving it a second thought as there are no prepayment charges attached to this loan. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Age &#8211; Any one who falls within 18years - 65years of age can apply for availing loan against securities. </span>
        <br class="auto-style5" />
        <span class="auto-style5">Documents Required for Loan against Securities &#8211; Generally, following documents are required by banks and financial institutions before they advance you loan against securities but the required documents may vary from bank to bank. </span>
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server">
    </asp:Panel>
        </div>
</asp:Content>

