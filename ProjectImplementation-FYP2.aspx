<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProjectImplementation-FYP2.aspx.cs" Inherits="ProjectImplementation_FYP2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="width:100%; height:800px; text-align: left;">
        <div style="margin-left:10%;width:80%;float:left;text-align:center;height:100%">
            <br />
            <asp:Label ID="Label1" runat="server" Text="PROJECT IMPLEMENTATION" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


            <br />
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #003366" Text="Student:"></asp:Label>
            <br />
            <br/>
            <table id="tb";style="width:100%;" style="border-style: inset">
                
                <tr>
                    <td>Areas of Assessment</td>
                    <td>Weightage</td>
                    <td>No Evidence(0 mark)</td>
                    <td>Below Expectation(1 mark)</td>
                    <td>Basic(2 marks)</td>
                    <td>Average(3 marks)</td>
                    <td>Good(4 marks)</td>
                    <td>Excellent(5 marks)</td>
                    <td>Score</td>
                </tr>
                <tr>
                    <td>Demo (research-based / applicationbased) </td>
                    <td>25</td>
                    <td style="border-style: solid; border-width: thin" class="Red">Absent </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Unreasonable research output with poor quality. Product is not presented or missing. </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Research output is reasonable but not tested with acceptable size of test data. Product is incomplete or does not work. Little effort was made to build the application. The demonstration failed to capture the interest of the audience and/or is confusing in what was communicated. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Research output is reasonable with acceptable size of test data, though not published. Product is working but does not support some desired functions or malfunctioned. Simply shows how the application works. The demonstration only conveys main ideas. </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Research output is reasonable with acceptable size of test data, and being evaluated against some related worksProduct is working and supports all desired functions with acceptable quality. Present new information or approach about the application. The demonstration techniques are effective in conveying main ideas. </td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Research output with acceptable size of test data, being evaluated against some related works and results have academically published quality. Product is fully functioning with several original/inventive elements, and is comparable to that of commercial products. Sufficient effort was made in finding novelty/innovation about the application. The demonstration techniques are imaginative and effective in conveying main ideas. </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                <tr>
                    <td>Question Handling </td>
                    <td>5</td>
                    <td style="border-style: solid; border-width: thin" class="Red">Absent&nbsp; </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Not all questions could be answered. Questions answered with difficulty, and little knowledge of the topic was demonstrated. &nbsp; </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Answers showed hesitation of knowledge and understanding of the topic. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Answers showed good knowledge and understanding of the topic. Language was mainly correct. </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Questions answered with no difficulty. Good knowledge of the topic was demonstrated. Language was correct and fluent. </td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Questions answered with no difficulty. Good knowledge of the topic was demonstrated. Answers to questions are strengthened by rationalization and explanation. Language was correct and fluent.  </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                 
            </table>

            <br />
            <br />
            <span style="font-size: medium; color: #003366"><strong>TOTAL SCORE: <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: medium; color: #009933" Text="0"></asp:Label>

            <span style="color: #003366">
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
            <br />
            </span>

            </strong></span>

        </div>
         <br />
         <input type="hidden" value="" id="SendA" name="SendA" />
     </div>
      <script type="text/javascript">
          var tabel = document.getElementById("tb");
          if (tabel != null) {
              tabel.rows[1].cells[2].onclick = function () {
                  tabel.rows[1].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "0";
                  calculate();
              };
              tabel.rows[1].cells[3].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[1].cells[4].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[1].cells[5].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[1].cells[6].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[1].cells[7].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[8].innerHTML = "5"
                  calculate();
              };
              tabel.rows[2].cells[2].onclick = function () {
                  tabel.rows[2].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "0"
                  calculate();
              };
              tabel.rows[2].cells[3].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "1"
                  calculate();
              };
              tabel.rows[2].cells[4].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "2"
                  calculate();
              };
              tabel.rows[2].cells[5].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "3"
                  calculate();
              };
              tabel.rows[2].cells[6].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "4"
                  calculate();
              };
              tabel.rows[2].cells[7].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[8].innerHTML = "5";  
                  calculate();
              };
              function calculate()
              {
                  var a = parseFloat(tabel.rows[1].cells[8].innerHTML)*25/30;
                  var b = parseFloat(tabel.rows[2].cells[8].innerHTML) * 25 / 30;
               
                  var sum = (a + b)*6;
                
                  document.getElementById('<%= Label4.ClientID %>').innerHTML = sum;
                  document.getElementById("SendA").value = sum;
              }
          }
          
      </script>

</asp:Content>

