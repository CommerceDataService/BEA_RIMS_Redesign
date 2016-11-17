<%@ Page Title="" Language="C#" MasterPageFile="~/RIMS.master" AutoEventWireup="true" CodeFile="case-studies.aspx.cs" Inherits="case_studies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   <%-- this is an asp comment - note that it's not quite the same as an html comment. At runtime, this kind of comment is NOT rendered to the response-- %>
   <%-- anything that needs to be in the head section goes here - like page-specific script or css --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RIMSPlaceHolder" Runat="Server">
    <%--anything that needs to be in the RIMS content area goes here--%>
	
	<p class="landing-page-p">The <a href="https://www.bea.gov/regional/pdf/rims/rimsii_user_guide.pdf" target="_blank">RIMS II User Guide</a> has a number of examples, outlined below. 
		<ul>
			<li>- Impact of a new graduate school program. An example designed to estimate the regional economic impact of a new graduate school program can be found <a href="https://www.bea.gov/regional/pdf/rims/rimsii_user_guide.pdf#page=34" target="_blank">here</a>.</li>
			<li>- Impact of a tourism campaign. An example involving an economic development corporation that plans to launch a new advertising campaign to attract more tourists to Branson, Missouri can be found <a href="https://www.bea.gov/regional/pdf/rims/rimsii_user_guide.pdf#page=38" target="_blank">here</a>. This example estimates the impact of the campaign on a change in retail sales.</li>
			<li>- Impact of investment purchases. An example on the economic impact of a university that plans to spend $2.0 million on new computers to convert a classroom into a new computer lab can be found <a href="https://www.bea.gov/regional/pdf/rims/rimsii_user_guide.pdf#page=41" target="_blank">here.</a></li>
		<ul>
	</p>


</asp:Content>



