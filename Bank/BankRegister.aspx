<%@ Page Title="" Language="C#" MasterPageFile="~/Bank/BankMaster.master" AutoEventWireup="true" CodeFile="BankRegister.aspx.cs" Inherits="Bank_BankRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 89%;
            border-style: solid;
            border-width: 1px;
            height: 615px;
            margin-right: 86px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 171px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style5 {
            width: 171px;
            font-size: x-large;
        }
        .auto-style6 {
            width: 171px;
            height: 25px;
        }
        .auto-style7 {
            width: 182px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Bank Registration"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" cellpadding="10" cellspacing="10" class="auto-style1" >
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Bank Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtBankId" runat="server" Height="30px" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Bank Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtBankName" runat="server" Height="30px" Width="204px" OnTextChanged="TxtBankName_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Photo</td>
                <td class="auto-style4">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:Image ID="Image1" runat="server" Height="140px" Width="150px" />
&nbsp;
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LblImageMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtPassword" runat="server" Height="25px" Width="206px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Branch Code"></asp:Label>
                </td>
                <td class="auto-style4">
                    
                           <asp:TextBox ID="TxtBranchCode" runat="server" Height="26px" Width="180px" AutoPostBack="true" OnTextChanged="TxtBankName_TextChanged"></asp:TextBox>
                                
                         
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" >
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Address"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtABankAddress" runat="server" Height="58px" Width="205px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Staff Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtStaffId" runat="server" Height="30px" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblMessage" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900" Height="35px" Width="100px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnLogin" runat="server" Text="Login" Visible="False" OnClick="BtnLogin_Click" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900" Height="35px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnReset" runat="server" Text="Reset" BackColor="#009999" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
</asp:Content>

