<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:100%; height:500px; text-align: left;">
        <div style="margin-left:25%;width:50%;float:left;text-align:center;height:100%">


            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="LOGIN" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <br />
            <span style="color: #003366"><strong>UserName<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />
            Password<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Wrong Username Or Password" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Login" Width="186px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" NavigateUrl="~/RegisterAccount.aspx">Register For New Account</asp:HyperLink>
            </strong></span>


        </div>
    </div>
 
   

</asp:Content>
