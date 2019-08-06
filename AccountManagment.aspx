<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AccountManagment.aspx.cs" Inherits="AccountManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
      <div style="width:100%; height:500px; text-align: left;">
        <div style="margin-left:25%;width:50%;float:left;text-align:center;height:100%">

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="ACCOUNT MANAGMENT" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" Checked="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Account Requests" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Active Accounts" />
            <br />
            <br />
            <br />
            <span style="color: #003366"><strong>UserName<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
            </asp:DropDownList>
            <br />
            <br />
            Account Type<br />
            <asp:Label ID="Label2" runat="server" ForeColor="#003300"></asp:Label>
            <br />
            <br />
            Full Name<br />
            <asp:Label ID="Label3" runat="server" ForeColor="#003300"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <span style="color: #003366; font-size: medium">
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Approve" Width="186px" OnClick="Button1_Click" />
            </span>
            </strong></span>

        </div>
      </div>
</asp:Content>

