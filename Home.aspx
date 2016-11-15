<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" MasterPageFile="~/RIMS.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="Server">
    <title>RIMS II Online Order and Delivery System</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="RIMSPlaceHolder" runat="Server">

    <div class="container col-lg-10 col-md-9 col-sm-8 col-xs-9">
        <div class="row">

            <asp:Label ID="LabelShowSessionMessage" runat="server" Text="" CssClass="alert_normal" Visible="false"></asp:Label>
            <div class="landing-page-div">
                <h2 class="landing-page-heading"><strong>Welcome to RIMS II Online Order and Delivery System</strong></h2>

                <p class="landing-page-p">he Regional Input-Output Modeling System (RIMS II), a regional economic model, is a tool used by investors, planners, and elected officials to objectively assess the potential economic impacts of various projects. This model produces multipliers that are used in economic impact studies to estimate the total impact of a project on a region. The idea behind the results of RIMS II is that an initial change in economic activity results in other rounds of spending—for example, building a new road will lead to increased production of asphalt and concrete. The increased production of asphalt and concrete will lead to more mining. Workers benefiting from these increases will spend more, perhaps by eating out at nicer restaurants or splurging more on entertainment.</p>
            </div>
            <div class="landing-page-div">
                <h3 class="landing-page-heading"><b>What are RIMS II multipliers?</b></h3>

                <p class="landing-page-p">Regional Input-Output Modeling System (RIMS II) multipliers provide a measure of the effects of local demand shocks on total gross output, value added, earnings, and employment. The multipliers are used by investors, planners, and elected officials to objectively assess the potential economic impacts of various projects. </p>

                <p class="landing-page-p">RIMS II multipliers are based on 2007 national benchmark input-output data and 2013 regional data. These multipliers were first released in November 2015. Updated multipliers based on 2007 national benchmark input-output data and 2015 regional data will be released in December 2016. </p>

                <p class="landing-page-p">RIMS II multipliers incorporating BEA&#39;s annual input-output accounts have been discontinued.</p>
            </div>
            <div class="landing-page-div">
                <h3 class="landing-page-heading"><b>How much do multipliers cost?</b></h3>
                <p class="landing-page-p">
                    <strong>$275 per Region</strong><br />
                    Multipliers are provided for all industries in the model for the region that is ordered. The region must contain one or more contiguous counties.
                </p>
                <br />
                <p class="landing-page-p">
                    <strong>$75 per Industry</strong><br />
                    Multipliers are provided for 50 states and the District of Columbia for the industry that is ordered.
                </p>
            </div>
            <div class="landing-page-div">
                <a href="placeorder.aspx" class="btn rims-orange-btn" style="margin-right: 30px;">Order Multipliers</a>
                <a href="#" class="btn rims-orange-btn" style="margin-right: 30px;">View Multipliers</a>
                <a href="/regional/pdf/rims/rimsii_user_guide.pdf" target="blank" class="btn rims-orange-btn">RIMS User Guide</a>
            </div>

        </div>
    </div>

</asp:Content>
