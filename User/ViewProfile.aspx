<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="User_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            font-size: 40pt;
            font-family: "Monotype Corsiva";
        }
        .auto-style7 {
            width: 50%;
            height: 639px;
            background-color: #993300;
        }
        .auto-style8 {
            width: 401px;
        }
        .auto-style9 {
            width: 183px;
            text-align: center;
            font-weight: bold;
            font-family: "Monotype Corsiva";
            font-size: large;
        }
        .auto-style10 {
            text-align: center;
            font-weight: bold;
        }
        .auto-style11 {
            font-family: "Monotype Corsiva";
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="divWelcome">
         <span class="auto-style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome
        <asp:Label ID="LblName" runat="server"></asp:Label>
        </strong></span>
   
        </div>
        <div class="divPic">
            <img src="images/find_user.png"/ >
            </div>
        &nbsp;
    <br/>  <br/><br/><br/><br/><br/>
    <table align="center" cellpadding="4" cellspacing="4" class="auto-style7">
        <tr>
            <td class="auto-style9">User Id:</td>
            <td class="auto-style10">
                <asp:Label ID="LblUserId" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Password:</td>
            <td class="auto-style10">
                <asp:Label ID="LblPassword" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Address:</td>
            <td class="auto-style10">
                <asp:Label ID="LblAddress" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Date of Birth</td>
            <td class="auto-style10">
                <asp:Label ID="LblDob" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Adhhar Number:</td>
            <td class="auto-style10">
                <asp:Label ID="LblAdhhar" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Pan Card</td>
            <td class="auto-style10">
                <asp:Label ID="LblPanCard" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Contact Number:</td>
            <td class="auto-style10">
                <asp:Label ID="LblContactNo" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email Id:</td>
            <td class="auto-style10">
                <asp:Label ID="LblEmailId" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">City:</td>
            <td class="auto-style10">
                <asp:Label ID="LblCity" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Country:</td>
            <td class="auto-style10">
                <asp:Label ID="LblCountry" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

