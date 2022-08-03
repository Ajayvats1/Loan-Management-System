<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: 30pt;
        }
        .auto-style2 {
            font-family: Algerian;
        }
        .auto-style3 {
            background-color: #CC6699;
        }
        .auto-style4 {
            font-family: Algerian;
            background-color: #CC6699;
        }
    </style>
</head>
<body>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <form id="form1" runat="server">
        <p>
&nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" BackColor="#CC6699">
             <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;&nbsp;</span><strong>
            <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="Welcome" CssClass="auto-style4"></asp:Label>
            </strong><span class="auto-style2"><strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></strong></span><strong>
            <asp:Label ID="LblIUserId" runat="server" CssClass="auto-style4"></asp:Label>
            <br class="auto-style4" />
            </strong>
        </p>
        <p>
            <span class="auto-style2"><strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></span> <span class="auto-style1"><span class="auto-style2"><strong><span class="auto-style3">Status for
            </span></strong></span><strong>
            <asp:Label ID="LblLoanAppNo" runat="server" CssClass="auto-style4"></asp:Label>
            </strong><span class="auto-style2"><strong><span class="auto-style3">&nbsp;Loan Application</span></strong></span></span><span class="auto-style4">&nbsp;</span></p>
        <p class="auto-style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Status Data&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </span>
            <asp:Label ID="LblStatus" runat="server" CssClass="auto-style4"></asp:Label>
            <span class="auto-style4">&nbsp;</span></p>
        <p>
            <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date of Status Updation:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Label ID="LblDate" runat="server" CssClass="auto-style4"></asp:Label>
        </p>
        <p>
            <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time of Status Updation:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Label ID="LblTime" runat="server" CssClass="auto-style4"></asp:Label>
            <span class="auto-style4">&nbsp; </span></p>
        <p>
            <span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Status Updated By:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </span>
            <asp:Label ID="LblUpdatedBy" runat="server" CssClass="auto-style4"></asp:Label>
            <span class="auto-style4">&nbsp;</span></p>
        <p class="auto-style3">
            &nbsp;</p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
        </asp:Panel>
       
    </form>
</body>
</html>
