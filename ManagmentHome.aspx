<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManagmentHome.aspx.cs" Inherits="ManagmentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div style="width:100%; height:500px; text-align: left;">
        <div style="margin-left:25%;width:50%;float:left;text-align:center;height:100%">

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="WELCOME" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/Images/student.png" Width="110px" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentManager.aspx">Student Managment</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="114px" ImageUrl="~/Images/fypmanager.jpg" Width="135px" />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FYPManager.aspx">FYP Managment</asp:HyperLink>

            </div>
         </div>
</asp:Content>

