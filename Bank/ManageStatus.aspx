<%@ Page Title="" Language="C#" MasterPageFile="~/Bank/BankMaster.master" AutoEventWireup="true" CodeFile="ManageStatus.aspx.cs" Inherits="Admin_ManageStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            color: #000000;
            font-family: sans-serif;
        }
        .auto-style4 {
            display: inline;
            clear: left;
            float: left;
            width: 304px;
            height: 34px;
            font-size: 16pt;
            font-family: "Imprint MT Shadow";
            color: #FF9900;
            margin-left: 44px;
        }
        .auto-style5 {
            color: #000000;
            width: 304px;
        }
        .auto-style6 {
            width: 304px;
        }
        .auto-style8 {
            color: #000000;
            font-family: sans-serif;
            width: 285px;
        }
        .auto-style9 {
            display: inline;
            clear: left;
            float: left;
            width: 285px;
            height: 34px;
            font-size: 16pt;
            font-family: "Imprint MT Shadow";
            color: #FF9900;
            margin-left: 44px;
        }
        .auto-style10 {
            width: 285px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" style="font-size: 42pt" Text="Update Status"></asp:Label>
    </p>






    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Loan Application Number" CssClass="auto-style3"></asp:Label>
                </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtLoanAppNo" runat="server" Height="26px" Width="246px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="User ID"></asp:Label>
                &nbsp;</td>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TxtUserId" runat="server" Height="26px" Width="246px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Date"></asp:Label>
                &nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtDate" runat="server" Height="26px" Width="246px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Time"></asp:Label>
                &nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtTime" runat="server" Height="26px" Width="246px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Data"></asp:Label>
                &nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtData" runat="server" Height="117px" style="width: 207px" TextMode="MultiLine"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Updated By"></asp:Label>
                &nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtUpdatedBy" runat="server" Height="25px" Width="244px"></asp:TextBox>
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LblMessage" runat="server"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnUpdate" runat="server" Font-Size="Large" Text="Update" OnClick="BtnUpdate_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnOK" runat="server" Font-Size="Large" OnClick="BtnOK_Click" Text="OK" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="LoanAppNo" HeaderText="LoanAppNo" SortExpression="LoanAppNo" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="UpdateBy" HeaderText="UpdateBy" SortExpression="UpdateBy" />
            <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [StatusDetails]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanAppNo" DataSourceID="SqlDataSource1">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanRequest]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    dcvds
</asp:Content>

