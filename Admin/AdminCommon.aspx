<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminCommon.aspx.cs" Inherits="Admin_AdminCommon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            font-family: "Microsoft Uighur";
            font-size: 40pt;
        }
        .auto-style4 {
            font-size: 40pt;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="AdminContent">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style5">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style4"> </span>
         <span class="auto-style3">Bank Details -</span></p>
    <asp:Panel ID="Panel1" runat="server">
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BankId" DataSourceID="SqlDataSource6" BackColor="#FF9966" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
            <Columns>
                <asp:BoundField DataField="BankId" HeaderText="BankId" ReadOnly="True" SortExpression="BankId" />
                <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                <asp:BoundField DataField="BranchCode" HeaderText="BranchCode" SortExpression="BranchCode" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="StaffId" HeaderText="StaffId" SortExpression="StaffId" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Bank">
                    <ControlStyle Height="50px" Width="50px" />
                    <ItemStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
            <EditRowStyle BorderStyle="Outset" BorderWidth="5px" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066" />
            <RowStyle BorderStyle="Outset" BorderWidth="5px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [BankDetails]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
    </asp:Panel>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Loan Details Provided By Bank</span>&nbsp;<span class="auto-style3">-</span></p>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#FF9966" DataKeyNames="LoanTypeNo" DataSourceID="SqlDataSource2" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
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
            <EditRowStyle BorderStyle="Outset" BorderWidth="5px" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanTypeDetails]"></asp:SqlDataSource>

        <br />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;User&#39;s Details</span>&nbsp;<span class="auto-style3">-</span>&nbsp;</p>
        <asp:Panel ID="Panel4" runat="server">
            &nbsp;<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#FF9966" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="AddharNo" HeaderText="AddharNo" SortExpression="AddharNo" />
                    <asp:BoundField DataField="PanCardNo" HeaderText="PanCardNo" SortExpression="PanCardNo" />
                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                </Columns>
                <EditRowStyle BorderStyle="Outset" BorderWidth="5px" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066" />
                <RowStyle BorderStyle="Outset" BorderWidth="5px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [UserDetails]"></asp:SqlDataSource>
        </asp:Panel>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;

    </asp:Panel>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Loan Request By Users</span>&nbsp;<span class="auto-style3">-</span>&nbsp;</p>
    <asp:Panel ID="Panel3" runat="server">
        &nbsp;<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#FF9966" DataKeyNames="LoanAppNo" DataSourceID="SqlDataSource5" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" Font-Strikeout="False" ForeColor="#000066" HorizontalAlign="Justify">
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
            <EditRowStyle BorderStyle="Outset" BorderWidth="5px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanRequest]"></asp:SqlDataSource>
    </asp:Panel>
    <p>
    </p>
       <p>
    </p>
       <p>
    </p>
       <p>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Status for User&#39;s Loan Application</span>&nbsp;<span class="auto-style3">-</span>&nbsp;&nbsp;</p>
       <asp:Panel ID="Panel5" runat="server">
           <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="#FF9966" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
               <Columns>
                   <asp:BoundField DataField="LoanAppNo" HeaderText="LoanAppNo" SortExpression="LoanAppNo" />
                   <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                   <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                   <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                   <asp:BoundField DataField="UpdateBy" HeaderText="UpdateBy" SortExpression="UpdateBy" />
                   <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
               </Columns>
               <EditRowStyle BorderStyle="Outset" BorderWidth="5px" />
               <RowStyle BorderStyle="Outset" BorderWidth="5px" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [StatusDetails]"></asp:SqlDataSource>
           <br />
       </asp:Panel>
        <p>
    </p>
       <p>
    </p>
       <p>
    </p>
       <p>
           <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Query Performed by Users</span>&nbsp;<span class="auto-style3">-</span>&nbsp;&nbsp;</p>
       <asp:Panel ID="Panel6" runat="server">
           <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#FF9966" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" DataKeyNames="QueryNo" DataSourceID="SqlDataSource4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
               <Columns>
                   <asp:BoundField DataField="QueryNo" HeaderText="QueryNo" InsertVisible="False" ReadOnly="True" SortExpression="QueryNo" />
                   <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                   <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                   <asp:BoundField DataField="Solution" HeaderText="Solution" SortExpression="Solution" />
               </Columns>
               <EditRowStyle BorderStyle="Outset" BorderWidth="5px" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [QueryDetails]"></asp:SqlDataSource>
           <br />
       </asp:Panel>
       <p>
    </p>

</div>   
</asp:Content>

