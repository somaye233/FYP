﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ModeratorPage.aspx.cs" Inherits="ModeratorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:100%; height:800px; text-align: left;">
        <div style="margin-left:15%;width:80%;float:left;text-align:center;height:100%">

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="WELCOME" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <br />
            <span style="color: #003366"><strong>Student<br />
            <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" style="color: #FF0000" Text="The Results For This Student Are Finalized And May Not Be Changed." Visible="False"></asp:Label>
            <br />
            <br />
            <span style="font-size: large">FYP 1<br />
            </span></strong><span style="font-size: large">
            <asp:Table ID="Table1" runat="server" Width="100%" Font-Size="Small" ForeColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                <asp:TableRow runat="server" BackColor="#999966" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black">
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">SUPERVISOR </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">MODERATOR </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">TOTAL </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">AVERAGE </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                        
                </asp:TableRow>
                <asp:TableRow runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                    <asp:TableCell runat="server" BackColor="White" BorderStyle="Solid">1.    GENERAL EFFORT </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">
                        <asp:Button ID="Button2" runat="server" Text="Assess" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BorderStyle="Solid">
                    <asp:TableCell runat="server" BorderStyle="Solid">2.    WRITTEN REPORT</asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"><asp:Button ID="Button1" runat="server" Text="Assess" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BorderStyle="Solid">
                    <asp:TableCell runat="server" BorderStyle="Solid">3.    ORAL  PRESENTATION </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"><asp:Button ID="Button3" runat="server" Text="Assess" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">TOTAL (100 points for project 1) </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Center" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Total (normalized, points*30/100) </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">FINAL MARKS (30%) </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </span></span>
            <span style="font-size: large"><span style="color: #003366">
            <strong>
            <br />
            <br />
            FYP 2<br />
            <br />
            <asp:Table ID="Table2" runat="server" Width="100%" Font-Size="Small" ForeColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                <asp:TableRow runat="server" BackColor="#999966" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Black">
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">SUPERVISOR </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">MODERATOR </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">TOTAL </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">AVERAGE </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                        
                </asp:TableRow>
                <asp:TableRow runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                    <asp:TableCell runat="server" BackColor="White" BorderStyle="Solid">1.    GENERAL EFFORT </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">
                        <asp:Button ID="Button4" runat="server" Text="Assess" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BorderStyle="Solid">
                    <asp:TableCell runat="server" BorderStyle="Solid">2.    WRITTEN REPORT</asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"><asp:Button ID="Button5" runat="server" Text="Assess" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BorderStyle="Solid">
                    <asp:TableCell runat="server" BorderStyle="Solid">3.    PROJECT IMPLEMENTATION </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"><asp:Button ID="Button6" runat="server" Text="Assess" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderStyle="Solid">4.    POSTER </asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid">
                        <asp:Button ID="Button7" runat="server" Text="Access" />
</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">TOTAL (100 points for project 1) </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Center" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Total (normalized, points*30/100) </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">FINAL MARKS (30%) </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" BorderStyle="Solid"></asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            </strong>
            <br />
            </span></span>

        </div>
    </div>
</asp:Content>

