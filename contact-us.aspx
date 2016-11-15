<%@ Page Title="" Language="C#" MasterPageFile="~/RIMS.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RIMSPlaceHolder" runat="Server">
    <div class="container col-lg-10 col-md-9 col-sm-8 col-xs-9">
        <div class="row">
            <div class="landing-page-div">
                <h2 class="landing-page-heading"><strong>Contact Us</strong></h2>

                <p class="landing-page-p">If you have any additional questions on ordering RIMS II multipliers, please refer to the <a href="faq.aspx">FAQ section</a> or the <a href="https://www.bea.gov/regional/pdf/rims/rimsii_user_guide.pdf">RIMS user guide</a>.</p>
                <p>If you would like more information on ordering RIMS II multipliers, please contact the RIMS staff at <% =(ConfigurationManager.AppSettings["RIMSPhoneNumber"] ?? "301-278-9313") %> or <a href="<% =(ConfigurationManager.AppSettings["RIMSEmailAddress"] ?? "rims@bea.gov") %>"><% =(ConfigurationManager.AppSettings["RIMSEmailAddress"] ?? "rims@bea.gov") %></a>.</p>
            </div>
        </div>
    </div>
</asp:Content>

