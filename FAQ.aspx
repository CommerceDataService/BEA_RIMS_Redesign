<%@ Page Title="" Language="C#" MasterPageFile="~/RIMS.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<%@ MasterType VirtualPath="~/RIMS.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <title>FAQ</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RIMSPlaceHolder" runat="Server">

    <div class="container col-lg-8 col-md-9 col-sm-8 col-xs-9" >
        <div class="row">

            <div class="landing-page-div">
                <h2 class="landing-page-heading"><strong>Frequently Asked Questions</strong></h2>

                <div id="accordion" role="tablist" aria-multiselectable="true">
                    <h3>Know Before Ordering</h3>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">1. What will I receive when I order multipliers?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                            <div class="content-padding">If you order by region, you will receive industry multipliers for each region that you order. If you order by industry, you will receive state multipliers for each industry that you order. The multiplier tables are available for download in two formats: csv and pdf. To view zero-filled versions of these tables, click on the &#39;Sample Tables&#39; link on the left menu in the <a href="">RIMS II Online Order and Delivery System</a>.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">2. Can I order multipliers over the phone?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="content-padding">All orders must be placed through <a href="/regional/rims/rimsii/">RIMS II Online Order and Delivery System</a> because BEA cannot accept orders over the telephone.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">3. Can my order be expedited?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="content-padding">Our current system cannot accommodate expedited orders. However, all orders are processed as quickly as possible in the order they are received.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">4. How soon after placing an order can I expect my multipliers to be available for download?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <div class="content-padding">You can expect to receive your multipliers in 1-3 business days, at which point you will receive an email informing you that your order is ready.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFive">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">5. How often are RIMS II multipliers updated?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                            <div class="content-padding">RIMS II multipliers are typically updated annually with a new year of regional data, and every five years with new national benchmark input-output data.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSix">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">6. Where can I find a list of the industries in RIMS II?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                            <div class="content-padding">To view the industry list, click on the &#39;Industry Lists&#39; link on the left menu in the <a href="">RIMS II Online Order and Delivery System</a>.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSeven">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">7. As a returning customer, can I receive the multipliers for a discounted price?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                            <div class="content-padding">Unfortunately, we cannot offer discounts.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingEight">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="true" aria-controls="collapseEight">8. Can I share my multipliers? Are there any guidelines that should be followed?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
                            <div class="content-padding">There are no restrictions for sharing RIMS II multipliers. However, when referencing the multipliers, please note the source as Bureau of Economic Analysis (BEA). In addition, please note that BEA does not endorse any resulting estimates and/or conclusions.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingNine">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="true" aria-controls="collapseNine">9. Are U.S. multipliers available?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNine">
                            <div class="content-padding">RIMS II multipliers are available for states and counties, but not for the United States.</div>
                        </div>
                    </div>
                    <br />
                    <br />


                    <h3>Ordering Your Multipliers</h3>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTen" aria-expanded="false" aria-controls="collapseTen">10. When should I order by region? When should I order by industry?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTen">
                            <div class="content-padding">You should order multipliers by industry if you are interested in comparing industry multipliers for more than one state or if you are interested in a state-wide impact that involves three or fewer industry final-demand changes. Otherwise, you should order multipliers by region (states, counties, or combinations thereof).</div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingEleven">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEleven" aria-expanded="true" aria-controls="collapseEleven">11. Will I receive multipliers for each county in my region?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseEleven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEleven">
                            <div class="content-padding">You will receive multipliers for an aggregation of the counties in the region, not for each county. If you want to receive multipliers for individual counties, you need to order them separately.</div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwelve">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwelve" aria-expanded="true" aria-controls="collapseTwelve">12. Do I need to specify the industry(s) when I order multipliers?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwelve" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwelve">
                            <div class="content-padding">You do not have to specify the industry when you order multipliers for a region (states, counties, or combinations thereof) because you will receive multipliers for all the RIMS II industries.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThirteen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThirteen" aria-expanded="true" aria-controls="collapseThirteen">13. Can I order multipliers for one industry without receiving multipliers for all industries?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThirteen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThirteen">
                            <div class="content-padding">You can order multipliers for one industry, but only at the state-level.</div>
                        </div>
                    </div>

                    <br />
                    <br />

                    <h3>Using Your Multipliers</h3>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFourteen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFourteen" aria-expanded="false" aria-controls="collapseFourteen">14. How do I view and download multipliers from my order?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFourteen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFourteen">
                            <div class="content-padding">
                                Follow these steps these steps to view and download your multipliers:
                    <ul>
                        <li>Log into the <a href="">RIMS II Online Order and Delivery System</a>.</li>
                        <li>Click on the &#39;View Multipliers&#39; link on the left menu.</li>
                        <li>Click on your order number.</li>
                        <li>Click on the links (icons) to view or download your multipliers.</li>
                    </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFifteen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFifteen" aria-expanded="true" aria-controls="collapseFifteen">15. What is a final-demand change?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFifteen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFifteen">
                            <div class="content-padding">
                                Final demand consists of a number of different purchases for final use. These purchases are called final because they are not used as intermediate inputs by industries in the region. Examples include:
                    <ul>
                        <li>Purchases by consumers outside the region</li>
                        <li>Investment in new buildings, equipment, and software</li>
                        <li>Purchases by government</li>
                        <li>Purchases by households</li>
                    </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSixteen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSixteen" aria-expanded="true" aria-controls="collapseSixteen">16. Where can I find more information on applying RIMS II multipliers?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSixteen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSixteen">
                            <div class="content-padding">
                                You can find more information on applying the multipliers in our RIMS II User&#39;s Guide. This guide contains many useful features, including:
                    <ul>
                        <li>Case studies illustrating important concepts and applications of RIMS II multipliers</li>
                        <li>Step-by-step instructions on how to appropriately use the multipliers</li>
                        <li>Techniques and suggestions to overcome limitations due to missing information</li>
                    </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSeventeen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeventeen" aria-expanded="true" aria-controls="collapseSeventeen">17. Can I add the multipliers to calculate multipliers for a larger region?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSeventeen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeventeen">
                            <div class="content-padding">Summing multipliers across regions or breaking down multipliers into constituent regions should be avoided. Simple additions do not account for interactions between industries or leakages from regions.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingEighteen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEighteen" aria-expanded="true" aria-controls="collapseEighteen">18. What is the difference between Type I and Type II multipliers?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseEighteen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEighteen">
                            <div class="content-padding">
                                Both Type I and Type II multipliers measure the industry impact of a change in final demand; however, Type II multipliers also include the induced impact, known as the household spending impact. It is important to exclude the inputs described below when using Type II multipliers to avoid double counting the household spending impact.
                    <ul>
                        <li>When using Type II final-demand multipliers, it is important that the change in final demand (sales) excludes purchases by households in the study region.</li>
                        <li>When using Type II direct-effect employment multipliers, it is important that the direct jobs estimate excludes the jobs used to produce the goods and services purchased by households in the study region.</li>
                        <li>When using Type II direct-effect earnings multipliers, it is important that the direct earnings estimate excludes the earnings used to produce the goods and services purchased by households in the study region.</li>
                    </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingNineteen">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNineteen" aria-expanded="true" aria-controls="collapseNineteen">19. What is the difference between final-demand and direct-effect multipliers?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseNineteen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNineteen">
                            <div class="content-padding">
                                While both types of multipliers provide estimates of the total economic impact, they provide different measures of the final-demand change. When using these multipliers, one should multiply them by different estimates to ensure they are utilized correctly.
                    <ul>
                        <li>Final-demand multipliers are ratios of a total change in economic activity (gross output, value added, earnings, and employment) to a dollar or million dollar change in final demand. An estimate of the change in final demand (sales) should be applied to these multipliers.</li>
                        <li>Direct-effect employment multipliers are ratios of the total change in jobs to the initial change in jobs. An estimate of the initial change in employment in the final-demand industry should be applied to these multipliers.</li>
                        <li>Direct-effect earnings multipliers are ratios of the total change in household earnings to the initial change in household earnings. An estimate of the initial change in earnings in the final-demand industry should be applied to these multipliers.</li>
                    </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwenty">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwenty" aria-expanded="true" aria-controls="collapseTwenty">20. What is the difference between purchasers&#39; values and producers&#39; values?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwenty" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwenty">
                            <div class="content-padding">Producers&#39; values are the value of goods before distribution. Purchasers&#39; values consist of the producers&#39; value, transportation costs, and wholesale and retail trade margins. Final-demand changes should be valued in producers&#39; prices before they are applied to the RIMS II multipliers.</div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwentyOne">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyOne" aria-expanded="true" aria-controls="collapseTwentyOne">21. What are National Distribution Costs tables? How might they apply to my study?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwentyOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwentyOne">
                            <div class="content-padding">The distribution costs tables contain transportation costs and the wholesale and retail trade margins for the industries and commodities in the national input-output accounts. These tables are useful for estimating the retail and wholesale margins on purchases. They are also useful for estimating the producers&#39; value of intermediate purchases in a bill-of-goods study.</div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwentyTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwentyTwo" aria-expanded="true" aria-controls="collapseTwentyTwo">22. Does BEA produce state-level input-output accounts?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwentyTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwentyTwo">
                            <div class="content-padding">BEA does not produce state-level input-output accounts. RIMS II multipliers are derived mainly from two data sources: BEA's national Input-Output (I-O) table, which shows the input and output structure of nearly 400 U.S. industries, as well as BEA's regional economic accounts, which are used to adjust the national I-O table to show a region's industrial structure and trading patterns</div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>

