<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageBank.aspx.cs" Inherits="Admin_ManageBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 171px;
        }
        .auto-style4 {
            width: 182px;
        }
        
        .auto-style1 {
            font-family: arial;
            font-size: x-large;
        }
        

        .auto-style1 {
            width: 65%;
            border-style: solid;
            border-width: 1px;
            height: 56px;
            margin-right: 86px;
        }
        .auto-style5 {
            width: 189px;
        }
    .auto-style6 {
        font-family: Vijaya;
    }
    .auto-style7 {
        font-size: x-large;
    }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="divManageBank">
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style7"><strong><asp:LinkButton ID="LinkBtnAdd" runat="server" CssClass="auto-style6" OnClick="LinkBtnAdd_Click">Add</asp:LinkButton>
            </strong></span><span class="auto-style6"><span class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkBtnUpdate" runat="server" OnClick="LinkBtnUpdate_Click" PostbackUrl='<%#Eval("LoanTypeNo","ManageBank.aspx?sid={0}") %>'>Update</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkBtnDelete" runat="server" OnClick="LinkBtnDelete_Click">Delete</asp:LinkButton>
            </strong></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Manage Bank" style="font-family: 'Monotype Corsiva'; font-size: 40pt; color: #000066; font-weight: 700"></asp:Label>
        &nbsp;</p>
        <asp:Panel ID="PanelDefault" runat="server">
            <br />
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF9966" DataKeyNames="BankId" DataSourceID="SqlDataSource3" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BankId" HeaderText="BankId" ReadOnly="True" SortExpression="BankId" />
                <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                <asp:BoundField DataField="BranchCode" HeaderText="BranchCode" SortExpression="BranchCode" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="StaffId" HeaderText="StaffId" SortExpression="StaffId" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
            <EditRowStyle BorderStyle="Outset" BorderWidth="5px" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066" />
        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [BankDetails]" DeleteCommand="DELETE FROM [BankDetails] WHERE [BankId] = @BankId" InsertCommand="INSERT INTO [BankDetails] ([BankId], [BankName], [BranchCode], [Address], [StaffId], [Type], [Password], [Image]) VALUES (@BankId, @BankName, @BranchCode, @Address, @StaffId, @Type, @Password, @Image)" UpdateCommand="UPDATE [BankDetails] SET [BankName] = @BankName, [BranchCode] = @BranchCode, [Address] = @Address, [StaffId] = @StaffId, [Type] = @Type, [Password] = @Password, [Image] = @Image WHERE [BankId] = @BankId">
                    <DeleteParameters>
                        <asp:Parameter Name="BankId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BankId" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BranchCode" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="StaffId" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BranchCode" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="StaffId" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="BankId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
              <%--  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanTypeDetails]"></asp:SqlDataSource>--%>
            </p>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanTypeNo" DataSourceID="SqlDataSource2" BackColor="#FF9966" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
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
            <RowStyle BorderStyle="Outset" BorderWidth="5px" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanTypeDetails]"></asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="PanelAddDetails" runat="server">
            <br />
            <table align="center" cellpadding="10" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Bank Id"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TxtBankId" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Loan Type Number"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLoanTypeNo" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Type</td>
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
                    <td class="auto-style3">Documents</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextDocuments" runat="server" Height="33px" Width="207px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Features"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtFeatures" runat="server" AutoPostBack="true" Height="26px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Rate of Interest"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtRateOfInt" runat="server" Height="58px" TextMode="MultiLine" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Duration"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDuration" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Font-Size="X-Large" Text="Eligiblity"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtEligiblity" runat="server" Height="29px" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Maximum Amount</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtMaxAmnt" runat="server" Height="27px" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Minimum Amount</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtMinAmnt" runat="server" Height="27px" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Description</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDescriptionAdd" runat="server" Height="155px" TextMode="MultiLine" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblMessageAdddetails" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnAddDetails" runat="server" BackColor="#000066" ForeColor="#FF6600" OnClick="BtnAddDetails_Click" Text="Add Details" Font-Bold="True" Font-Size="Large" Height="40px" Width="300px" />
            <br />
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel ID="PanelUpdateDetails" runat="server">
            <br />
            <table align="center" cellpadding="10" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label11" runat="server" Font-Size="X-Large" Text="Bank Id"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TxtBankId0" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Loan Type Number"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLoanTypeNo0" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Type</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownLstLoanType0" runat="server" Font-Size="Large" Height="42px" Width="212px">
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
                    <td class="auto-style3">Documents</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextDocuments0" runat="server" Height="33px" Width="207px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label13" runat="server" Font-Size="X-Large" Text="Features"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtFeatures0" runat="server" AutoPostBack="true" Height="26px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label14" runat="server" Font-Size="X-Large" Text="Rate of Interest"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtRateOfInt0" runat="server" Height="58px" TextMode="MultiLine" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Duration"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDuration0" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label16" runat="server" Font-Size="X-Large" Text="Eligiblity"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtEligiblity0" runat="server" Height="29px" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Maximum Amount</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtMaxAmnt0" runat="server" Height="27px" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Minimum Amount</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtMinAmnt0" runat="server" Height="27px" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Description</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDescriptionUpdate" runat="server" Height="155px" TextMode="MultiLine" Width="191px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblMessageUpdate" runat="server"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnUpdateDetails" runat="server" BackColor="#000066" ForeColor="#FF6600" OnClick="BtnUpdateDetails_Click" Text="Update Details" Font-Bold="True" Font-Size="X-Large" />
            <br />
            &nbsp;<br />
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanTypeNo" DataSourceID="SqlDataSource2" BackColor="#FF9966" BorderStyle="Outset" BorderWidth="5px" CellPadding="4" CellSpacing="4" Font-Names="aprajita" Font-Size="Large" ForeColor="#000066">
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
            <RowStyle BorderStyle="Outset" BorderWidth="5px" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" SelectCommand="SELECT * FROM [LoanTypeDetails]"></asp:SqlDataSource>
        </asp:Panel>
        <p>
            &nbsp;&nbsp;&nbsp;</p>
        <asp:Panel ID="PaneldeleteDetails" runat="server">
            <br />
            &nbsp;&nbsp;
            <table align="center" cellpadding="10" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label17" runat="server" Font-Size="X-Large" Text="Loan Type Number"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLoanTypeNo1" runat="server" Height="30px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblMessageDelete" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnDeleteDetails" runat="server" BackColor="#000066" ForeColor="#FF6600" OnClick="BtnDeleteDetails_Click" Text="Delete Details" Font-Bold="True" Font-Size="X-Large" />
            <br />
        </asp:Panel>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        </div>
        
</asp:Content>
    
<%--PostbackUrl='<%#Eval("BankId","ManageBank.aspx?sid={0}") %>'>--%>
