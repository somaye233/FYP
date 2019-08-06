<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterAccount.aspx.cs" Inherits="RegisterAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div style="width:100%; height:600px; text-align: left;">
        <div style="margin-left:25%;width:50%;float:left;text-align:center;height:100%">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="ACCOUNT REGISTERATION" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <br />
            <br />
            <span style="color: #003366; font-size: medium"><strong>Account Type<br />
            <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Manager</asp:ListItem>
                <asp:ListItem>Moderator</asp:ListItem>
                <asp:ListItem>Supervisor</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            UserName<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            <br />
            <br />
            Password<br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            <br />
            <br />
            Re-Enter Password<br />
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            <br />
            <br />
            Full Name<br />
            <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
            <br />
            <br />
            <br />
            <span style="color: #003366">
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Wrong Username Or Password" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
            </span>


            <br />
            </strong></span>
        </div>
     </div>

</asp:Content>

