<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="OralPresentation-FYP1.aspx.cs" Inherits="OralPresentation_FYP1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:100%; height:1300px; text-align: left;">
        <div style="margin-left:10%;width:80%;float:left;text-align:center;height:100%">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="ORAL PRESENTATION" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #003366" Text="Student:"></asp:Label>
            <br />
            <br />
            <br />
            <strong><span style="font-size: medium; color: #003366">Vocal Delivery, Organization and Materials<br />
            </span></strong>
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
                    <td>Opening &amp; etc. </td>
                     <td style="border-style: solid; border-width: thin">etc. Appropriate opening slide, with title, date, names, (candidate, supervisor, moderator), etc. is provided.</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox1" runat="server" TextAlign="Left" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">2</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Slide layout, background, slide elements and text (font size and highlight) are appropriately chosen </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">3</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Appropriate references are made to other resources where required </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">4</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Viewer experience is such that the presentation materials communicates the overall project well </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">5</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Words are well selected and used correctly in the presentation materials </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">6</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>Content </td>
                    <td style="border-style: solid; border-width: thin">Outline of the main topics to be covered in the presentation is provided </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">7</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Ideas and concepts in the presentation sequence are linked and logically coherent </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">8</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Main description of the project is presented (introduction, overview of the project, objectives and problem statements, motivations, justifications, scope, literature review/background study, etc.). </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox8_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">9</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Design and implementation plan are presented</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox9_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">10</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Specific methods, techniques, algorithms, unique or novel features are highlighted. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox10" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox10_CheckedChanged" />
                    </td>

                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">11</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>Q &amp; A</td>
                    <td style="border-style: solid; border-width: thin">More than 50% of the questions were responded. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox11" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox11_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">12</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">The answers demonstrate the presenter having a good and rounded knowledge on the subject matter. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox12_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">13</td>
                    <td style="border-right-style: solid; border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Use of words reflects having good grounded knowledge on the subject matter </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox13" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox13_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">14</td>
                    <td style="border-right-style: solid; border-width: thin">Delivery </td>
                    <td>Organization &amp; Effectivenes</td>
                    <td style="border-style: solid; border-width: thin">Choice of words and spoken sentences are appropriate</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox14" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox14_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">15</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Clarifications and explanations of key points are good </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox15" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox15_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">16</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">No major interruptions or problems (hiccups) during the presentation </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox16" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox16_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">17</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>Style &amp; pacing</td>
                    <td style="border-style: solid; border-width: thin">Spoken words are clear and concise with appropriate pauses and breaks </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox17" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox17_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">18</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Speech volume and tone are appropriate </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox18" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox18_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">19</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-width: thin">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">Engagement with the audience is good (eye contact, audience nodding, etc.) </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox19" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox19_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">20</td>
                    <td style="border-right-style: solid; border-width: thin">&nbsp;</td>
                    <td>Time Management </td>
                    <td style="border-style: solid; border-width: thin">Time duration spent for delivery of key points are appropriate </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox20" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox20_CheckedChanged" />
                    </td>
                </tr>
            </table>
            <strong><span style="font-size: medium; color: #FF0000">TOTAL POINTS : </span>
            <asp:Label ID="Label3" runat="server" style="font-size: medium; color: #003300" Text="0"></asp:Label>
            </strong>
            <br />
            <br />
            <br />
            <strong><span style="font-size: large; color: #003366">Prototype Demonstration </span></strong>
            <br />
            <table style="border-style: inset; border-width: medium; width: 100%;">
                <tr>
                    <td style="border-style: solid; border-width: thin"><b>No </b> </td>
                    <td style="border-style: solid; border-width: thin"><b>Description </b> </td>
                    <td style="border-style: solid; border-width: thin"><b>Count </b> </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">1</td>
                    <td style="border-style: solid; border-width: thin">The basic prototype/proof of concept/simulation is demonstrated.</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox21" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox21_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-width: thin">2</td>
                    <td style="border-style: solid; border-width: thin">Major challenges for the entire project have been identified.</td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox22" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox22_CheckedChanged" />
                    </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">3</td>
                    <td style="border-style: solid; border-width: thin">The prototype/proof of concept/simulation is technically sound. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox23" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox23_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">4</td>
                    <td style="border-style: solid; border-width: thin">The prototype/proof of concept/simulation demonstrated is aligned to the objectives/deliverables defined in the project. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox24" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox24_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">5</td>
                    <td style="border-style: solid; border-width: thin">The prototype/proof of concept/simulation demonstrated shows assuredness that the work belongs to the student. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox25" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox25_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">6</td>
                    <td style="border-style: solid; border-width: thin">All activities to address the identified challenges are properly planned for the entire project. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox26" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox26_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">7</td>
                    <td style="border-style: solid; border-width: thin">The risks for all activities in the entire project have been identified and assessed. Mitigation measures have also been created. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox27" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox27_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">8</td>
                    <td style="border-style: solid; border-width: thin">Based on evidence of current work progress, the project assessor believes that the proposed overall implementation schedule for Phase 2 is reasonable and achievable. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox28" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox28_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">9</td>
                    <td style="border-style: solid; border-width: thin">The proposed solutions and the implementations (what to do and how to do them exactly) are clearly explained and found to be achievable. </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox29" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox29_CheckedChanged" />
                     </td>
                </tr>
                 <tr>
                    <td style="border-style: solid; border-width: thin">10</td>
                    <td style="border-style: solid; border-width: thin">Overall, the project assessor is satisfied with the ensuing explanations and clarifications, and confidently believes that the whole project will be a success by the end of Phase 2 </td>
                    <td style="border-style: solid; border-width: thin">
                        <asp:CheckBox ID="CheckBox30" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox30_CheckedChanged" />
                     </td>
                </tr>
            </table>
            <br />
            <strong><span style="font-size: medium; color: #FF0000">TOTAL POINTS : </span>
            <asp:Label ID="Label4" runat="server" style="font-size: medium; color: #003300" Text="0"></asp:Label>
            <br />
            <br />
            <span style="color: #003366">
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
            </span>

            <br />
            <br />
            <br />
            </strong>
            <br />
            </div>
        </div>
</asp:Content>

