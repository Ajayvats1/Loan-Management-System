<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="true" CodeFile="ApplyForLoan.aspx.cs" Inherits="User_ApplyForLoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 59%;
            height: 530px;
            background-color: #FFCCFF;
        }

        .auto-style10 {
            height: 68px;
        }

        .auto-style11 {
            font-family: PMingLiU-ExtB;
        }

        .auto-style12 {
            height: 68px;
            font-weight: bold;
        }

        .auto-style13 {
            font-family: serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="42pt" Text="Loan Application Form" Style="font-family: PMingLiU-ExtB; font-weight: 700"></asp:Label>
    </p>
    <p>
        &nbsp;
    </p>
    <table align="center" class="auto-style9">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Loan Application Number" CssClass="auto-style11"></asp:Label>
            </td>
            <td class="auto-style10"><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextLoanAppNo" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="User ID" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextUserId" runat="server" Enabled="false" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Loan Type Number" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextLoanTypeNo" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Bank ID" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextBankId" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Amount" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextAmount" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Time Period" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextTimePeriod" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="User Salary" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextUserSalary" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Employment" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextEmployment" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" Text="Account Number" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextAccountNo" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>
        <tr>
            <td>
                <b>
                    <asp:Label ID="Label11" runat="server" Font-Size="X-Large" Text="IFS Code" CssClass="auto-style11"></asp:Label>
                </b>
            </td>
            <td><span class="auto-style13">&nbsp;
            </span>
                <asp:TextBox ID="TextIFSCode" runat="server" Height="36px" Width="259px" CssClass="auto-style13"></asp:TextBox>
                <span class="auto-style13">&nbsp;</span></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="LabelMessage" runat="server"></asp:Label></td>
            <td>
                <asp:LinkButton ID="LinkBtnSubmit" runat="server" BackColor="Black" BorderColor="Black" Font-Bold="True" ForeColor="#FF99CC" OnClick="LinkBtnSubmit_Click" Width="70px">Submit</asp:LinkButton>
                <asp:LinkButton ID="LinbtnOK" runat="server" BackColor="Black" BorderColor="Black" Font-Bold="True" ForeColor="#FF66FF" OnClick="LinbtnOK_Click" Visible="False" Width="70px">   OK</asp:LinkButton>
                 <asp:LinkButton ID="LinkButton8" runat="server" BackColor="Black" BorderColor="Black" Font-Bold="True" ForeColor="#FF99FF" OnClick="LinkButton8_Click" Width="70px">Reset</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdApplication" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="LoanAppNo" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="LoanAppNo" HeaderText="LoanAppNo" ReadOnly="True" SortExpression="LoanAppNo" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                        <asp:BoundField DataField="LoanTypeNo" HeaderText="LoanTypeNo" SortExpression="LoanTypeNo" />
                        <asp:BoundField DataField="BankId" HeaderText="BankId" SortExpression="BankId" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="TimePeriod" HeaderText="TimePeriod" SortExpression="TimePeriod" />
                        <asp:BoundField DataField="UserSalary" HeaderText="UserSalary" SortExpression="UserSalary" />
                        <asp:BoundField DataField="Employment" HeaderText="Employment" SortExpression="Employment" />
                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" SortExpression="AccountNo" />
                        <asp:BoundField DataField="IFSCode" HeaderText="IFSCode" SortExpression="IFSCode" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoanMarketConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [LoanRequest] WHERE ([UserId] = @UserId)">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="UserId"  Name="UserId" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
  
</asp:Content>

