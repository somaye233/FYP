<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GeneralEffor-FYP2.aspx.cs" Inherits="GeneralEffor_FYP2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
      <div style="width:100%; height:1000px; text-align: left;">
        <div style="margin-left:10%;width:80%;float:left;text-align:center;height:100%">
            <br />
            <asp:Label ID="Label1" runat="server" Text="GENERAL EFFORT" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


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
                    <td>Project Management </td>
                    <td>8</td>
                    <td style="border-style: solid; border-width: thin" class="Red">No evidence of project management skill </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Able to identify all required project activities and resources correctly, but unable to plan and create tasks for the project implementation schedule. </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Able to identify all required project activities and resources correctly, as wells as to plan and create tasks for the project implementation schedule. The candidate needs help in managing time and resources to achieve goals.</td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Able to identify all required project activities and resources correctly, as wells as to plan and create tasks for the project implementation schedule. The candidate occasionally needs help in managing time and resources to achieve goals. </td>
                    <td style="border-style: solid; border-width: thin" class="Green">The candidate plans and manages time and resources in an efficient manner to achieve goals. Able to distinguish critical and non-critical tasks correctly Able to anticipate project problems and suggest solutions or workarounds </td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Effective consultation with supervisor. The candidate has exceptional project management skills. </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                <tr>
                    <td>Attitude </td>
                    <td>8</td>
                    <td style="border-style: solid; border-width: thin" class="Red">Poor attitude </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">No observable or little interest and effort shown in the project undertaken&nbsp; </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Persisted in making repeated attempts based on supervisor recommendation (without own initiative). </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Demonstrate initiative under supervisor’s guidance. </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Exhibits a strong focus, passion and commitment toward the project . </td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Exhibits a strong focus, passion and commitment toward the project, Acts proactively, selfmotivated, driven by selfinitiatives.  </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                     <tr>
                     <td>Technical competency </td>
                    <td>4</td>
                    <td style="border-style: solid; border-width: thin" class="Red">Does not comprehend project’s technicalities</td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Able to explain at least 30% of project’s technicalities. </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Able to explain at least 50% of the project’s technicalities; unable to identify technical limitations&nbsp; </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Able to explain at least 80% the project’s technicalities; Able to identify some technical limitations.</td>
                    <td style="border-style: solid; border-width: thin" class="Green">Able to explain all project’s technicalities and overcome associated technical limitations.</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Overall, able to explain all project’s technicalities as well as think and act creatively or innovatively to find clues and ideas to solve the technical problems </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
            </table>

            <br />
            <br />
            <strong><span style="font-size: medium">TOTAL SCORE:</span></strong><asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: medium; color: #009933" Text="0"></asp:Label>

            <span style="color: #003366"><strong>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
            <br />
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
                  tabel.rows[1].cells[8].innerHTML = "5";
                  calculate();
              };
              tabel.rows[2].cells[2].onclick = function () {
                  tabel.rows[2].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "0";
                  calculate();
              };
              tabel.rows[2].cells[3].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[2].cells[4].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[2].cells[5].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[6].style = "Green";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[2].cells[6].onclick = function () {
                  tabel.rows[2].cells[2].style = "Red";
                  tabel.rows[2].cells[3].style = "Orange";
                  tabel.rows[2].cells[4].style = "Gold";
                  tabel.rows[2].cells[5].style = "Yellow";
                  tabel.rows[2].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[2].cells[7].style = "Lime";
                  tabel.rows[2].cells[8].innerHTML = "4";
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
              tabel.rows[3].cells[2].onclick = function () {
                  tabel.rows[3].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "0";
                  calculate();
              };
              tabel.rows[3].cells[3].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[3].cells[4].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[3].cells[5].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[3].cells[6].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[3].cells[7].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[8].innerHTML = "5"
                  calculate();
              };
                function calculate()
              {
                  var a = parseFloat(tabel.rows[1].cells[8].innerHTML)*8/20;
                  var b = parseFloat(tabel.rows[2].cells[8].innerHTML) * 8 / 20;
                  var c = parseFloat(tabel.rows[3].cells[8].innerHTML) * 4 / 20;
      
                  var sum = (a + b + c)*4;
                
                  document.getElementById('<%= Label4.ClientID %>').innerHTML = sum;
                    document.getElementById("SendA").value = sum;
               
                 
                  

              }
             
          }
          
      </script>

</asp:Content>

