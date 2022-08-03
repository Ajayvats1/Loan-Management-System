<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Admin_ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-family: "Script MT Bold";
            font-size: 40pt;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage User</p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" style="font-size: 14pt; text-align: center; font-family: 'Plantagenet Cherokee'; color: #000000; font-weight: 700">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connection %>" DeleteCommand="DELETE FROM [UserDetails] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [UserDetails] ([UserId], [Password], [Name], [Address], [Dob], [Gender], [AddharNo], [PanCardNo], [ContactNo], [EmailId], [City], [Country], [Type]) VALUES (@UserId, @Password, @Name, @Address, @Dob, @Gender, @AddharNo, @PanCardNo, @ContactNo, @EmailId, @City, @Country, @Type)" SelectCommand="SELECT * FROM [UserDetails]" UpdateCommand="UPDATE [UserDetails] SET [Password] = @Password, [Name] = @Name, [Address] = @Address, [Dob] = @Dob, [Gender] = @Gender, [AddharNo] = @AddharNo, [PanCardNo] = @PanCardNo, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [City] = @City, [Country] = @Country, [Type] = @Type WHERE [UserId] = @UserId">
            <DeleteParameters>
                <asp:Parameter Name="UserId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Dob" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="AddharNo" Type="String" />
                <asp:Parameter Name="PanCardNo" Type="String" />
                <asp:Parameter Name="ContactNo" Type="Decimal" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Dob" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="AddharNo" Type="String" />
                <asp:Parameter Name="PanCardNo" Type="String" />
                <asp:Parameter Name="ContactNo" Type="Decimal" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="UserId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
    </p>
</asp:Content>

