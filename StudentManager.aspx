<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StudentManager.aspx.cs" Inherits="StudentManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div style="width:100%; height:500px; text-align: left;">
        <div style="margin-left:25%;width:50%;float:left;text-align:center;height:100%">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="STUDENT MANAGER" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <br />
            <br />
            <span style="color: #003366"><strong>Student UserName<br />
            <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
            </asp:DropDownList>
            <br />
            <br />
            Specialization<br />
            <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                <asp:ListItem>Computer Engineering</asp:ListItem>
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>Information Systems</asp:ListItem>
                <asp:ListItem>Information Technology</asp:ListItem>
                <asp:ListItem>Software Engineering</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Supervisor<br />
            <asp:DropDownList ID="DropDownList3" runat="server" Width="180px">
            </asp:DropDownList>
            <br />
            <br />
            Moderator<br />
            <asp:DropDownList ID="DropDownList4" runat="server" Width="180px">
            </asp:DropDownList>
            <br />
            <br />
            Project Title<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Wrong Username Or Password" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
            </strong></span>
            </div>
         </div>

</asp:Content>

