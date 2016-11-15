<%@ Page Title="" Language="C#" MasterPageFile="~/RIMS.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RIMSPlaceHolder" runat="Server">
    <div class="container col-lg-10 col-md-9 col-sm-8 col-xs-9">
        <div class="row">
            <div class="landing-page-div">
           <h2 class="landing-page-heading"><strong>Contact Us</strong></h2>
				<br />
            <h3 class="landing-page-heading">Commonly Asked Questions</h3>     
                <p class="landing-page-p">Before you call, we recommend checking our <a href="faq-page.html"> FAQs section</a> where you will find answers to many questions such as:
                <ul>
                    <li>- What will I receive when I order multipliers?</li>
                    <li>- Do I need to specify the industry(s) when I order multipliers?</li>
                    <li>- How do I view and download my multipliers?</li>
                </ul>
                </p>

            <h3 class="landing-page-heading">Contact Information</h3>
                <p class="landing-page-p">If you're looking for more help or have a question to ask, please contact us at <% =(ConfigurationManager.AppSettings["RIMSPhoneNumber"] ?? "301-278-9313") %> or <a href="<% =(ConfigurationManager.AppSettings["RIMSEmailAddress"] ?? "rims@bea.gov") %>"><% =(ConfigurationManager.AppSettings["RIMSEmailAddress"] ?? "rims@bea.gov") %></a>.</p>
            </div>
        </div>
    </div>
</asp:Content>

