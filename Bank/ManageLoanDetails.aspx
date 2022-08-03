<%@ Page Title="" Language="C#" MasterPageFile="~/Bank/BankMaster.master" AutoEventWireup="true" CodeFile="ManageLoanDetails.aspx.cs" Inherits="Bank_ManageLoanDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style1 {
            width: 95%;
            border-style: solid;
            border-width: 1px;
            height: 1109px;
            margin-right: 0px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style8 {
            width: 201px;
        }
        .auto-style9 {
        width: 201px;
        font-size: xx-large;
    }
        .auto-style10 {
        width: 201px;
        font-size: xx-large;
        height: 53px;
    }
    .auto-style11 {
        width: 182px;
        height: 53px;
    }
    .auto-style12 {
        width: 201px;
        font-size: xx-large;
        height: 25px;
    }
    .auto-style13 {
        width: 182px;
        height: 25px;
    }
        .auto-style14 {
        font-size: xx-large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="32pt" Text="Manage Loan Details" style="font-weight: 700; font-size: 38pt"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
     
        <table align="center" cellpadding="10" cellspacing="10" class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Bank Id" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtBankId" runat="server" Height="30px" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" Text="Loan Type Number" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtLoanTypeNo" runat="server" Height="30px" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    Type</td>
                <td class="auto-style4">
                        <asp:DropDownList ID="DropDownLstLoanType" runat="server" Font-Size="Large" Height="42px" Width="212px">
                            <asp:ListItem>Select Loan Type</asp:ListItem>
                            <asp:ListItem>Personal Loan</asp:ListItem>
                            <asp:ListItem>Home Loan</asp:ListItem>
                            <asp:ListItem>Business Loan</asp:ListItem>
                            <asp:ListItem>Education Loan</asp:ListItem>
                            <asp:ListItem>Gold Loan</asp:ListItem>
                            <asp:ListItem>Loan On Securities</asp:ListItem>
                            <asp:ListItem>Vehical Loan</asp:ListItem>
                        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Features" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtFeatures" runat="server" Height="80px" Width="203px" AutoPostBack="true" TextMode="MultiLine" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" Text="Rate of Interest" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtRateOfInt" runat="server" Height="29px" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" Font-Size="XX-Large" Text="Duration" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtDuration" runat="server" Height="30px" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" Font-Size="XX-Large" Text="Eligiblity" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtEligiblity" runat="server" Height="89px" Width="211px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    Documents</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextDocuments" runat="server" Height="33px" Width="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    Maximum Amount </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtMaximumAm" runat="server" Height="29px" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    Minimum Amount</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtMinimumAm" runat="server" Height="29px" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    Description</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtDescription" runat="server" Height="152px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
           
        </table>
         
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblMessage" runat="server"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnAddDetails" runat="server" Text="Add Details" OnClick="BtnAddDetails_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDeleteDetails" runat="server" Text="Delete Details" OnClick="BtnDeleteDetails_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnUpdateDetails" runat="server" Text="Update Details" OnClick="BtnUpdateDetails_Click" />
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanTypeNo" DataSourceID="SqlDataSource2" Height="221px" Width="767px">
            <Columns>
                <asp:BoundField DataField="LoanTypeNo" HeaderText="LoanTypeNo" ReadOnly="True" SortExpression="LoanTypeNo" />
                <asp:BoundField DataField="BankId" HeaderText="BankId" SortExpression="BankId" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Features" HeaderText="Features" SortExpression="Features" />
                <asp:BoundField DataField="RateOfInt" HeaderText="RateOfInt" SortExpression="RateOfInt" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                <asp:BoundField DataField="Eligibility" HeaderText="Eligibility" SortExpression="Eligibility" />
                <asp:BoundField DataField="Documents" HeaderText="Documents" SortExpression="Documents" />
                <asp:BoundField DataField="MaxAmount" HeaderText="MaxAmount" SortExpression="MaxAmount" />
                <asp:BoundField DataField="MinAmount" HeaderText="MinAmount" SortExpression="MinAmount" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanTypeDetails] WHERE ([BankId] = @BankId2)">
            <SelectParameters>
                <asp:CookieParameter CookieName="BankId" DefaultValue="" Name="BankId2" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

