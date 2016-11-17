<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" MaintainScrollPositionOnPostback="false" MasterPageFile="~/RIMS.master" EnableViewState="true" %>

<%@ MasterType VirtualPath="~/RIMS.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="Server">
    <title>Place Order</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="RIMSPlaceHolder" runat="Server">
    <div class="container col-lg-10 col-md-9 col-sm-8 col-xs-9">
        <div class="row">

            <!--********************* Breadcrumbs *********************-->
            <div class="container-fluid breadcrumb">
                <div class="col-lg-10" style="padding-top: 8px;">
                    <a href="placeorder.aspx" class="btn btn-default">Step 1: Region vs. Industry</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                    <a href="#" class="btn btn-default">Step 2: Choose Multipliers</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                    <a href="#" class="btn btn-default">Step 3: View Shopping Cart</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                    <a href="#" class="btn btn-default">Step 4: Checkout</a>
                </div>

                <div class="col-lg-2 shopping-cart-section" style="display: inline-flex;">
                    <p style="padding: 15px 20px 0 0;">Shopping Cart</p>
                    <div class="shopping-cart-number"><%=Master.ShoppingCartCount%></div>
                    <!-- This number needs to respond to the number of items in the users shopping cart -->
                </div>
            </div>
            <!--*********************Start of Body Content*************************-->
            <div class="container-fluid">
                <div class="row col-lg-10 col-md-10 col-sm-10" id="ordering-heading">
                    <h3 class="landing-page-heading"><strong>Step 1: Region vs. Industry</strong></h3>

                    <p class="landing-page-p">RIMS II multipliers are based on 2007 national benchmark input-output data and 2013 regional data.</p>
                </div>

                <div class="row col-lg-2 col-md-2 col-sm-2">
                    <a id="RIMSAssumptions" onclick='invokeRIMSdialog(undefined, "RIMSIIAssumptions.html", false, 800, 700, true); return false;' title="RIMS Assumptions" class="btn btn-primary btn-block body-button">RIMS Assumptions</a>
                    <a id="ThingsToConsider" onclick='invokeRIMSdialog(undefined, "ThingsToConsider.html", false, 600, 300, true); return false;' title="Things To Consider" class="btn btn-primary btn-block body-button">Things To Consider</a>
                </div>

                <div class="row col-lg-6 col-md-6 col-sm-6">
                    <a href="choose-your-region.aspx"><img src="images/BEA-RIMS-Region-Infographic.png" width="200" class="responsive-image"></a> 
                    <br>
                    <%--<a href="choose-your-region.aspx" class="btn btn-default btn-block btn-lg order-buttons">Order by Region</a>--%>
                    <a href="choose-your-region.aspx" class="btn btn-default btn-block btn-lg rims-grey-btn">Order by Region</a>
                    <br>
                    <a href="download/369IndustryListA.pdf" class="btn btn-primary body-button">View list of 369 detailed industries</a>
                    <a href="download/64IndustryListB.pdf" class="btn btn-primary body-button">View list of 64 industry aggregates</a>
                </div>

                <div class="row col-lg-6 col-md-6 col-sm-6 column-margin">
                    <a href="choose-your-industry.aspx"><img src="images/BEA-RIMS-Industry-Infographic.png" width="200" class="responsive-image"></a> 
                    <br>
                    <a href="choose-your-industry.aspx" class="btn btn-default btn-block btn-lg rims-grey-btn">Order by Industry</a>
                </div>
            </div>
        <br />
        <br />
        <br />

        </div>
    </div>

</asp:Content>
