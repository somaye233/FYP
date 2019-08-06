<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Poster-FYP2.aspx.cs" Inherits="Poster_FYP2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div style="width:100%; height:2800px; text-align: left;">
        <div style="margin-left:10%;width:80%;float:left;text-align:center;height:100%">
            <asp:Label ID="Label1" runat="server" Text="PROJECT IMPLEMENTATION" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #003366" Text="Student:"></asp:Label>
            <br />
            <br />
            <table style="border-style: inset; width: 100%;">
                <tr>
                    <td style="border-bottom-style: inset; border-width: thin; border-right-style: inset;"><strong>No</strong></td>
                    <td style="border-bottom-style: inset; border-width: thin; border-right-style: inset;"><strong>General</strong></td>
                    <td style="border-bottom-style: inset; border-width: thin; border-right-style: inset;"><strong>Specific</strong></td>
                    <td style="border-bottom-style: inset; border-width: thin; border-right-style: inset;"><strong>Description</strong></td>
                    <td style="border-bottom-style: inset; border-width: thin"><strong>Count</strong></td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">1</td>
                    <td style="border-right-style: solid; border-width: thin">Material </td>
                    <td>Visual and layout </td>
                     <td style="border-style: solid; border-width: thin">Linguistically correct (no grammatical and spelling errors)</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox1" runat="server" TextAlign="Left" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">2</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Adhere to the format specified.</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">3</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Visually appealing, neat and capture viewers’ attention. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">4</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Well-organized and smooth progression. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">5</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Information is in-focus and can be viewed and identified from a distance of 2m. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">6</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>Content </td>
                    <td style="border-style: solid; border-width: thin">Content presented is related to the project.</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">7</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Highlight key issues and contributions. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">8</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Demonstrate sufficient knowledge gained from the project. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox8_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">9</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Overall theme well-presented and integrated. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox9_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">10</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Graphical illustrations enhance meaning. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox10" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox10_CheckedChanged" />
                    </td>

                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">11</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Well-researched (research-based)/Well-surveyed (applicationbased), appropriately referenced and well-prepared. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox11" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox11_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">12</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Accurate and concise content, no significant errors</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox12_CheckedChanged" />
                    </td>
                </tr>
               
            </table>
            <br />
            <br />
            <span style="font-size: medium; color: #003366"><strong>TOTAL SCORE: <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: medium; color: #009933" Text="0"></asp:Label>

            <span style="color: #003366">
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
            </span>

            </strong></span>

            </div>
        </div>
</asp:Content>

