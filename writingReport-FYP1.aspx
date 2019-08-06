<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="writingReport-FYP1.aspx.cs" Inherits="writingReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div style="width:100%; height:2000px; text-align: left;">
        <div style="margin-left:10%;width:80%;float:left;text-align:center;height:100%">
            <br />
            <asp:Label ID="Label1" runat="server" Text="WRITING REPORT" style="font-size: xx-large; font-weight: 700" Font-Bold="True" Font-Names="Cambria" Font-Size="XX-Large"></asp:Label>


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
                    <td>Abstract</td>
                    <td>3</td>
                    <td style="border-style: solid; border-width: thin" class="Red">No evidence of abstract</td>
                    <td style="border-style: solid; border-width: thin" class="Orange">The overview of the abstract is poorly explained and insufficient.</td>
                    <td style="border-style: solid; border-width: thin" class="Gold">The overview, objectives, deliverables of the project are covered and summarized</td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">The overview, objectives, deliverables, implementation methods, and conclusions of the project are covered and summarized</td>
                    <td style="border-style: solid; border-width: thin" class="Green">The overview, objectives, deliverables, implementation methods, findings, and conclusions are covered, valid and summarized clearly.</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Overall, the language and contents of this section is beyond expectation</td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                <tr>
                    <td>Problem Statement; Project Objective; Expected Findings/Deliv erables </td>
                    <td>5</td>
                    <td style="border-style: solid; border-width: thin" class="Red">No evidence of problem statement and project objective.</td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Problem statements and project objectives are listed and described. </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Problem statements, project objectives, expected findings (research-type) or deliverables (application-type) are listed and described.</td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Problems statements, project objectives, expected findings (research-type) or deliverables (application-type) are listed and described clearly.</td>
                    <td style="border-style: solid; border-width: thin" class="Green">Problem statements, project objectives expected findings (research-type) are sound, revealing, reasonable and achievable.  The deliverables (application-type) are interesting, challenging, novel, reasonable and achievable. </td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Overall, the language and contents of this section is beyond expectation.  </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                     <tr>
                     <td>Literature Review / Background Study</td>
                    <td>10</td>
                    <td style="border-style: solid; border-width: thin" class="Red">No evidence of literature review / background study.</td>
                    <td style="border-style: solid; border-width: thin" class="Orange">The literature review / background study is poorly written, disorganized and fails to show the relatedness to the project.</td>
                    <td style="border-style: solid; border-width: thin" class="Gold">The literature review / background study is understandabl e but insufficient in explaining the state of art related to the project undertaken. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Same as previous scale with these additions: The literature review is relevant and covers current major topics of the research project (researchtype).  The background study covers at least 3 related applications (application-type). </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Same as previous scale with these additions: The literature reviews or background study is written in a clear and easy to understand manner.  The flow of thought and ideas are continuous and smooth.</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Same as previous scale with these additions: Overall, the analyses and discussions of the key issues are beyond expectation. </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                    <tr>
                    <td>Proposed Solution and proof-ofconcept</td>
                    <td>20</td>
                    <td style="border-style: solid; border-width: thin" class="Red">No evidence of proposal. </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Proposal to be used is poorly explained and insufficient to solve the problem identified.</td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Proposal to be used is adequately explained and suitable to solve the problem.</td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Proposal is suitable and technically sound;  Proof of concept clearly implement the proposal </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Proposal is suitable, technically sound and well described; Proof of concept clearly implement the proposal; Suitable evaluation methods to be used are clearly justified</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Same as previous scale with these additions: Overall, the project generates high value in exploration, creativity, novelty or innovation through the proposed methods and techniques. </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                 <tr>
                    <td>Spelling, grammar, and punctuation</td>
                    <td>3</td>
                    <td style="border-style: solid; border-width: thin" class="Red">Incomprehensibl e writing. </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Makes repeated grammatical and syntactical errors; frequently misspells; distract from understanding.</td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Errors are less than 50% and do not interfere with reading and understanding. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Errors are less than 20% and do not interfere with reading and understanding.  </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Writes generally correct prose; occasionally fails to catch minor grammatical errors.</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Proofreads well enough to eliminate most grammatical errors. </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                 <tr>
                    <td>Writing Style and organization (overall effectiveness of communication in written form)</td>
                    <td>3</td>
                    <td style="border-style: solid; border-width: thin" class="Red">Incomprehensibl e writing. </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Sentence structure, word choice, and lack of sequencing of ideas make reading difficult to follow; lack of appropriate sections or many items are in the wrong section. </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Sentence structure and/or word choice sometimes interfere with clarity; sequencing of ideas within paragraphs and transitions between paragraphs need to be improve to make reading easy to follow; Some of the information is in the wrong section. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Sentence structure and/or word choice somewhat interfere with clarity but sequencing of ideas within paragraphs and transitions between paragraphs make reading easy to follow; Organization of information is generally correct but still has room for improvement.  </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Sentences are structured and words are chosen to communicate ideas clearly; sequencing of ideas within paragraphs and transitions between paragraphs make reading easy to follow</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Overall, the language and contents of this section is beyond expectation </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                 <tr>
                    <td>Figures, tables, and graphs </td>
                    <td>3</td>
                    <td style="border-style: solid; border-width: thin" class="Red">No relevant figure, table and graph.  </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Less than 30% compliance to required format; captions are ineffective in communicating content;  ineffective visual representation;  exhibit little understanding of important features or issues in the explanation. </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">At least 50% compliance to the required format;  captions are ineffective in communicating content;  some of the data being visualized ineffectively; important features or issues are not communicated well in the explanation. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">At least 80% compliance to the required format; captions are effective in communicating content;  data is being visualized and interpreted effectively but important features are not communicated well in the explanation. </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Correct format of figures, tables, and graphs;  captions effectively communicate content;  data is being visualized and interpreted effectively; important features are noted in the explanation</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Correct format of figures, tables, and graphs;  captions effectively communicate content;  data is being visualized effectively;  all visualizations are effectively interpreted and discussed in the report.  </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
                <tr >
                    <td>Abbreviations, bibliography and appendices (if any)  </td>
                    <td>3</td>
                    <td style="border-style: solid; border-width: thin; background-color: #FFFFFF;" class="Red">No evidence of reference   </td>
                    <td style="border-style: solid; border-width: thin" class="Orange">Less than 30% compliance to required format; More than 80% of the references are incomplete, insufficient, out dated or not relevant.  </td>
                    <td style="border-style: solid; border-width: thin" class="Gold">Less than 50% compliance to required format; More than 50% of the references are incomplete, insufficient, out dated or not relevant. </td>
                    <td style="border-style: solid; border-width: thin" class="Yellow">Less than 80% compliance to required format; More than 30% of the references are incomplete, insufficient, out dated or not relevant. </td>
                    <td style="border-style: solid; border-width: thin" class="Green">Minimum formatting error. Almost all the references are complete, sufficient, updated and relevant</td>
                    <td style="border-style: solid; border-width: thin" class="Lime">Correct format. All references are complete, sufficient, updated and relevant.  </td>
                    <td style="border-style: solid; border-width: thin">0</td>
                </tr>
            </table>

            <br />
            <asp:Label ID="Label3" runat="server" style="text-align: center; font-size: medium; font-weight: 700" Text="TOTAL SCORE:"></asp:Label>

            <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: medium; color: #009933" Text="0"></asp:Label>

            <br />
            <br />
            <span style="color: #003366"><strong>
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderStyle="None" Font-Bold="True" ForeColor="White" Text="Submit" Width="186px" OnClick="Button1_Click" />
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
                  tabel.rows[1].cells[8].innerHTML = "0"
                  calculate();
              };
              tabel.rows[1].cells[3].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "1"
                  calculate();
              };
              tabel.rows[1].cells[4].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "2"
                  calculate();
              };
              tabel.rows[1].cells[5].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[6].style = "Green";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "3"
                  calculate();
              };
              tabel.rows[1].cells[6].onclick = function () {
                  tabel.rows[1].cells[2].style = "Red";
                  tabel.rows[1].cells[3].style = "Orange";
                  tabel.rows[1].cells[4].style = "Gold";
                  tabel.rows[1].cells[5].style = "Yellow";
                  tabel.rows[1].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[1].cells[7].style = "Lime";
                  tabel.rows[1].cells[8].innerHTML = "4"
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
                  tabel.rows[2].cells[8].innerHTML = "5"
                  calculate();
              };
              tabel.rows[3].cells[2].onclick = function () {
                  tabel.rows[3].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "0"
                  calculate();
              };
              tabel.rows[3].cells[3].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "1"
                  calculate();
              };
              tabel.rows[3].cells[4].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "2"
                  calculate();
              };
              tabel.rows[3].cells[5].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[6].style = "Green";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "3"
                  calculate();
              };
              tabel.rows[3].cells[6].onclick = function () {
                  tabel.rows[3].cells[2].style = "Red";
                  tabel.rows[3].cells[3].style = "Orange";
                  tabel.rows[3].cells[4].style = "Gold";
                  tabel.rows[3].cells[5].style = "Yellow";
                  tabel.rows[3].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[3].cells[7].style = "Lime";
                  tabel.rows[3].cells[8].innerHTML = "4"
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
              tabel.rows[4].cells[2].onclick = function () {
                  tabel.rows[4].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[4].cells[3].style = "Orange";
                  tabel.rows[4].cells[4].style = "Gold";
                  tabel.rows[4].cells[5].style = "Yellow";
                  tabel.rows[4].cells[6].style = "Green";
                  tabel.rows[4].cells[7].style = "Lime";
                  tabel.rows[4].cells[8].innerHTML = "0"
                  calculate();
              };
              tabel.rows[4].cells[3].onclick = function () {
                  tabel.rows[4].cells[2].style = "Red";
                  tabel.rows[4].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[4].cells[4].style = "Gold";
                  tabel.rows[4].cells[5].style = "Yellow";
                  tabel.rows[4].cells[6].style = "Green";
                  tabel.rows[4].cells[7].style = "Lime";
                  tabel.rows[4].cells[8].innerHTML = "1"
                  calculate();
              };
              tabel.rows[4].cells[4].onclick = function () {
                  tabel.rows[4].cells[2].style = "Red";
                  tabel.rows[4].cells[3].style = "Orange";
                  tabel.rows[4].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[4].cells[5].style = "Yellow";
                  tabel.rows[4].cells[6].style = "Green";
                  tabel.rows[4].cells[7].style = "Lime";
                  tabel.rows[4].cells[8].innerHTML = "2"
                  calculate();
              };
              tabel.rows[4].cells[5].onclick = function () {
                  tabel.rows[4].cells[2].style = "Red";
                  tabel.rows[4].cells[3].style = "Orange";
                  tabel.rows[4].cells[4].style = "Gold";
                  tabel.rows[4].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[4].cells[6].style = "Green";
                  tabel.rows[4].cells[7].style = "Lime";
                  tabel.rows[4].cells[8].innerHTML = "3"
                  calculate();
              };
              tabel.rows[4].cells[6].onclick = function () {
                  tabel.rows[4].cells[2].style = "Red";
                  tabel.rows[4].cells[3].style = "Orange";
                  tabel.rows[4].cells[4].style = "Gold";
                  tabel.rows[4].cells[5].style = "Yellow";
                  tabel.rows[4].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[4].cells[7].style = "Lime";
                  tabel.rows[4].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[4].cells[7].onclick = function () {
                  tabel.rows[4].cells[2].style = "Red";
                  tabel.rows[4].cells[3].style = "Orange";
                  tabel.rows[4].cells[4].style = "Gold";
                  tabel.rows[4].cells[5].style = "Yellow";
                  tabel.rows[4].cells[6].style = "Green";
                  tabel.rows[4].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[4].cells[8].innerHTML = "5";
                  calculate();
              };
              tabel.rows[5].cells[2].onclick = function () {
                  tabel.rows[5].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[5].cells[3].style = "Orange";
                  tabel.rows[5].cells[4].style = "Gold";
                  tabel.rows[5].cells[5].style = "Yellow";
                  tabel.rows[5].cells[6].style = "Green";
                  tabel.rows[5].cells[7].style = "Lime";
                  tabel.rows[5].cells[8].innerHTML = "0";
                  calculate();

              };
              tabel.rows[5].cells[3].onclick = function () {
                  tabel.rows[5].cells[2].style = "Red";
                  tabel.rows[5].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[5].cells[4].style = "Gold";
                  tabel.rows[5].cells[5].style = "Yellow";
                  tabel.rows[5].cells[6].style = "Green";
                  tabel.rows[5].cells[7].style = "Lime";
                  tabel.rows[5].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[5].cells[4].onclick = function () {
                  tabel.rows[5].cells[2].style = "Red";
                  tabel.rows[5].cells[3].style = "Orange";
                  tabel.rows[5].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[5].cells[5].style = "Yellow";
                  tabel.rows[5].cells[6].style = "Green";
                  tabel.rows[5].cells[7].style = "Lime";
                  tabel.rows[5].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[5].cells[5].onclick = function () {
                  tabel.rows[5].cells[2].style = "Red";
                  tabel.rows[5].cells[3].style = "Orange";
                  tabel.rows[5].cells[4].style = "Gold";
                  tabel.rows[5].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[5].cells[6].style = "Green";
                  tabel.rows[5].cells[7].style = "Lime";
                  tabel.rows[5].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[5].cells[6].onclick = function () {
                  tabel.rows[5].cells[2].style = "Red";
                  tabel.rows[5].cells[3].style = "Orange";
                  tabel.rows[5].cells[4].style = "Gold";
                  tabel.rows[5].cells[5].style = "Yellow";
                  tabel.rows[5].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[5].cells[7].style = "Lime";
                  tabel.rows[5].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[5].cells[7].onclick = function () {
                  tabel.rows[5].cells[2].style = "Red";
                  tabel.rows[5].cells[3].style = "Orange";
                  tabel.rows[5].cells[4].style = "Gold";
                  tabel.rows[5].cells[5].style = "Yellow";
                  tabel.rows[5].cells[6].style = "Green";
                  tabel.rows[5].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[5].cells[8].innerHTML = "5";
                  calculate();
              };
              tabel.rows[6].cells[2].onclick = function () {
                  tabel.rows[6].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[6].cells[3].style = "Orange";
                  tabel.rows[6].cells[4].style = "Gold";
                  tabel.rows[6].cells[5].style = "Yellow";
                  tabel.rows[6].cells[6].style = "Green";
                  tabel.rows[6].cells[7].style = "Lime";
                  tabel.rows[6].cells[8].innerHTML = "0";
                  calculate();
              };
              tabel.rows[6].cells[3].onclick = function () {
                  tabel.rows[6].cells[2].style = "Red";
                  tabel.rows[6].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[6].cells[4].style = "Gold";
                  tabel.rows[6].cells[5].style = "Yellow";
                  tabel.rows[6].cells[6].style = "Green";
                  tabel.rows[6].cells[7].style = "Lime";
                  tabel.rows[6].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[6].cells[4].onclick = function () {
                  tabel.rows[6].cells[2].style = "Red";
                  tabel.rows[6].cells[3].style = "Orange";
                  tabel.rows[6].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[6].cells[5].style = "Yellow";
                  tabel.rows[6].cells[6].style = "Green";
                  tabel.rows[6].cells[7].style = "Lime";
                  tabel.rows[6].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[6].cells[5].onclick = function () {
                  tabel.rows[6].cells[2].style = "Red";
                  tabel.rows[6].cells[3].style = "Orange";
                  tabel.rows[6].cells[4].style = "Gold";
                  tabel.rows[6].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[6].cells[6].style = "Green";
                  tabel.rows[6].cells[7].style = "Lime";
                  tabel.rows[6].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[6].cells[6].onclick = function () {
                  tabel.rows[6].cells[2].style = "Red";
                  tabel.rows[6].cells[3].style = "Orange";
                  tabel.rows[6].cells[4].style = "Gold";
                  tabel.rows[6].cells[5].style = "Yellow";
                  tabel.rows[6].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[6].cells[7].style = "Lime";
                  tabel.rows[6].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[6].cells[7].onclick = function () {
                  tabel.rows[6].cells[2].style = "Red";
                  tabel.rows[6].cells[3].style = "Orange";
                  tabel.rows[6].cells[4].style = "Gold";
                  tabel.rows[6].cells[5].style = "Yellow";
                  tabel.rows[6].cells[6].style = "Green";
                  tabel.rows[6].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[6].cells[8].innerHTML = "5";
                  calculate();
              };
              tabel.rows[7].cells[2].onclick = function () {
                  tabel.rows[7].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[7].cells[3].style = "Orange";
                  tabel.rows[7].cells[4].style = "Gold";
                  tabel.rows[7].cells[5].style = "Yellow";
                  tabel.rows[7].cells[6].style = "Green";
                  tabel.rows[7].cells[7].style = "Lime";
                  tabel.rows[7].cells[8].innerHTML = "0";
                  calculate();
              };
              tabel.rows[7].cells[3].onclick = function () {
                  tabel.rows[7].cells[2].style = "Red";
                  tabel.rows[7].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[7].cells[4].style = "Gold";
                  tabel.rows[7].cells[5].style = "Yellow";
                  tabel.rows[7].cells[6].style = "Green";
                  tabel.rows[7].cells[7].style = "Lime";
                  tabel.rows[7].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[7].cells[4].onclick = function () {
                  tabel.rows[7].cells[2].style = "Red";
                  tabel.rows[7].cells[3].style = "Orange";
                  tabel.rows[7].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[7].cells[5].style = "Yellow";
                  tabel.rows[7].cells[6].style = "Green";
                  tabel.rows[7].cells[7].style = "Lime";
                  tabel.rows[7].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[7].cells[5].onclick = function () {
                  tabel.rows[7].cells[2].style = "Red";
                  tabel.rows[7].cells[3].style = "Orange";
                  tabel.rows[7].cells[4].style = "Gold";
                  tabel.rows[7].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[7].cells[6].style = "Green";
                  tabel.rows[7].cells[7].style = "Lime";
                  tabel.rows[7].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[7].cells[6].onclick = function () {
                  tabel.rows[7].cells[2].style = "Red";
                  tabel.rows[7].cells[3].style = "Orange";
                  tabel.rows[7].cells[4].style = "Gold";
                  tabel.rows[7].cells[5].style = "Yellow";
                  tabel.rows[7].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[7].cells[7].style = "Lime";
                  tabel.rows[7].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[7].cells[7].onclick = function () {
                  tabel.rows[7].cells[2].style = "Red";
                  tabel.rows[7].cells[3].style = "Orange";
                  tabel.rows[7].cells[4].style = "Gold";
                  tabel.rows[7].cells[5].style = "Yellow";
                  tabel.rows[7].cells[6].style = "Green";
                  tabel.rows[7].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[7].cells[8].innerHTML = "5";
                  calculate();
              };
              tabel.rows[8].cells[2].onclick = function () {
                  tabel.rows[8].cells[2].style.backgroundColor = "#9ad2e0";
                  tabel.rows[8].cells[3].style = "Orange";
                  tabel.rows[8].cells[4].style = "Gold";
                  tabel.rows[8].cells[5].style = "Yellow";
                  tabel.rows[8].cells[6].style = "Green";
                  tabel.rows[8].cells[7].style = "Lime";
                  tabel.rows[8].cells[8].innerHTML = "0";
                  calculate();
              };
              tabel.rows[8].cells[3].onclick = function () {
                  tabel.rows[8].cells[2].style = "Red";
                  tabel.rows[8].cells[3].style.backgroundColor = "#9ad2e0";
                  tabel.rows[8].cells[4].style = "Gold";
                  tabel.rows[8].cells[5].style = "Yellow";
                  tabel.rows[8].cells[6].style = "Green";
                  tabel.rows[8].cells[7].style = "Lime";
                  tabel.rows[8].cells[8].innerHTML = "1";
                  calculate();
              };
              tabel.rows[8].cells[4].onclick = function () {
                  tabel.rows[8].cells[2].style = "Red";
                  tabel.rows[8].cells[3].style = "Orange";
                  tabel.rows[8].cells[4].style.backgroundColor = "#9ad2e0";
                  tabel.rows[8].cells[5].style = "Yellow";
                  tabel.rows[8].cells[6].style = "Green";
                  tabel.rows[8].cells[7].style = "Lime";
                  tabel.rows[8].cells[8].innerHTML = "2";
                  calculate();
              };
              tabel.rows[8].cells[5].onclick = function () {
                  tabel.rows[8].cells[2].style = "Red";
                  tabel.rows[8].cells[3].style = "Orange";
                  tabel.rows[8].cells[4].style = "Gold";
                  tabel.rows[8].cells[5].style.backgroundColor = "#9ad2e0";
                  tabel.rows[8].cells[6].style = "Green";
                  tabel.rows[8].cells[7].style = "Lime";
                  tabel.rows[8].cells[8].innerHTML = "3";
                  calculate();
              };
              tabel.rows[8].cells[6].onclick = function () {
                  tabel.rows[8].cells[2].style = "Red";
                  tabel.rows[8].cells[3].style = "Orange";
                  tabel.rows[8].cells[4].style = "Gold";
                  tabel.rows[8].cells[5].style = "Yellow";
                  tabel.rows[8].cells[6].style.backgroundColor = "#9ad2e0";
                  tabel.rows[8].cells[7].style = "Lime";
                  tabel.rows[8].cells[8].innerHTML = "4";
                  calculate();
              };
              tabel.rows[8].cells[7].onclick = function () {
                  tabel.rows[8].cells[2].style = "Red";
                  tabel.rows[8].cells[3].style = "Orange";
                  tabel.rows[8].cells[4].style = "Gold";
                  tabel.rows[8].cells[5].style = "Yellow";
                  tabel.rows[8].cells[6].style = "Green";
                  tabel.rows[8].cells[7].style.backgroundColor = "#9ad2e0";
                  tabel.rows[8].cells[8].innerHTML = "5"
                  calculate();
              };

              function calculate()
              {
                  var a = parseFloat(tabel.rows[1].cells[8].innerHTML)*3/50;
                  var b = parseFloat(tabel.rows[2].cells[8].innerHTML) * 5 / 50;
                  var c = parseFloat(tabel.rows[3].cells[8].innerHTML) * 10 / 50;
                  var d = parseFloat(tabel.rows[4].cells[8].innerHTML) * 20 / 50;
                  var e = parseFloat(tabel.rows[5].cells[8].innerHTML) * 3 / 50;
                  var f = parseFloat(tabel.rows[6].cells[8].innerHTML) * 3 / 50;
                  var g = parseFloat(tabel.rows[7].cells[8].innerHTML) * 3 / 50;
                  var h = parseFloat(tabel.rows[8].cells[8].innerHTML) * 3 / 50;
                  var sum = (a + b + c + d + e + f + g + h)*10;
                
                  document.getElementById('<%= Label4.ClientID %>').innerHTML = sum;
                  document.getElementById("SendA").value = sum;

               
                 
                  

              }
          }
          
      </script>

</asp:Content>

