<%@ Page Trace="true" Title="" Language="C#" MasterPageFile="~/RIMS.master" AutoEventWireup="true" CodeFile="choose-your-industry.aspx.cs" Inherits="choose_your_industry" %>

<%@ MasterType VirtualPath="~/RIMS.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="_css/bootstrap-duallistbox.min.css" rel="stylesheet">
    <script type="text/javascript" src="_scripts/jquery.bootstrap-duallistbox.min.js"></script>
    <title>Choose Your Industry</title>

    <script>
        $(function () {
            var AggBox = $('#AggBox').bootstrapDualListbox({
                bootstrap2Compatible: false,
                filterTextClear: 'show all',
                filterPlaceHolder: 'Search',
                moveSelectedLabel: 'Add selected',
                moveAllLabel: 'Add all',
                removeSelectedLabel: 'Remove selected',
                removeAllLabel: 'Remove all selected',
                moveOnSelect: false,                                                                 // true/false (forced true on androids, see the comment later)
                preserveSelectionOnMove: false,                                                     // 'all' / 'moved' / false
                selectedListLabel: false,                                                           // 'string', false
                nonSelectedListLabel: false,                                                        // 'string', false
                helperSelectNamePostfix: '_helper',                                                 // 'string_of_postfix' / false
                selectorMinimalHeight: 80,
                showFilterInputs: true,                                                             // whether to show filter inputs
                nonSelectedFilter: '',                                                              // string, filter the non selected options
                selectedFilter: '',                                                                 // string, filter the selected options
                infoText: 'Showing all {0}',                                                        // text when all options are visible / false for no info text
                infoTextFiltered: '<span class="label label-warning">Filtered</span> {0} from {1}', // when not all of the options are visible due to the filter
                infoTextEmpty: '(none selected)',                                                        // when there are no options present in the list
                filterOnValues: false,                                                              // filter by selector's values, boolean
                sortByInputOrder: false
            });


            var DetailBox = $('#DetailBox').bootstrapDualListbox({
                bootstrap2Compatible: false,
                filterTextClear: 'show all',
                filterPlaceHolder: 'Search',
                moveSelectedLabel: 'Add selected',
                moveAllLabel: 'Add all',
                removeSelectedLabel: 'Remove selected',
                removeAllLabel: 'Remove all selected',
                moveOnSelect: false,                                                                 // true/false (forced true on androids, see the comment later)
                preserveSelectionOnMove: false,                                                     // 'all' / 'moved' / false
                selectedListLabel: false,                                                           // 'string', false
                nonSelectedListLabel: false,                                                        // 'string', false
                helperSelectNamePostfix: '_helper',                                                 // 'string_of_postfix' / false
                selectorMinimalHeight: 80,
                showFilterInputs: true,                                                             // whether to show filter inputs
                nonSelectedFilter: '',                                                              // string, filter the non selected options
                selectedFilter: '',                                                                 // string, filter the selected options
                infoText: 'Showing all {0}',                                                        // text when all options are visible / false for no info text
                infoTextFiltered: '<span class="label label-warning">Filtered</span> {0} from {1}', // when not all of the options are visible due to the filter
                infoTextEmpty: '(none selected)',                                                        // when there are no options present in the list
                filterOnValues: false,                                                              // filter by selector's values, boolean
                sortByInputOrder: false
            });

        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RIMSPlaceHolder" runat="Server">

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
            <!--********************* Breadcrumbs *********************-->

            <div class="container-fluid">
                <b style="font-size: 115%">Step 2: Select Your Industry </b>
                <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="There are two levels of industry detail in RIMS II: aggregate and detail. The level of detail used in an economic impact study is chosen to match the level of detail in the resulting findings. Multipliers for the detailed industries are less subject to aggregation bias. Both aggregate and detailed multipliers are based on the same data sources."></a>
                <p style="padding-top: 5px; font-size: 12px;">Hold down Ctrl to select multiple industries.</p>
                <asp:label id="lblErrorMsg" runat="server" font-size="X-Small" forecolor="Red" text='<img src="images/error_red.gif" alt="invalid entry" /> Please Select an Industry' visible="False"></asp:label>
                <%--<%=DebugString%>--%>
                <table border="0" style="padding-right: 10px">
                    <tr>
                        <td>

                            <br />
                            <table border="0" style="width: 730px; height: 289px;">
                                <tr>
                                    <td style="height: 13px; width: 600px;">
                                        <label for="AggBox">Aggregate Industries</label>
                                    </td>
                                </tr>
                                <tr>

                                    <td style="width: 600px" colspan="3">
                                        <asp:listbox id="AggBox" clientidmode="Static" runat="server" datasourceid="AggregateDataSource1" datatextfield="Value" datavaluefield="Key" selectionmode="Multiple" height="160px" width="600px" style="display: none"></asp:listbox>
                                        <asp:objectdatasource id="AggregateDataSource1" runat="server" selectmethod="GetAggregateIndustryList" typename="BEA.RIMS.Library.AggregateIndustryList"></asp:objectdatasource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 600px; height: 25px;"></td>
                                    <%--spacer--%>
                                </tr>
                                <tr>
                                    <td style="width: 600px; height: 13px;">
                                        <label for="DetailBox">Detailed Industries</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 600px">
                                        <asp:listbox id="DetailBox" clientidmode="Static" runat="server" datasourceid="DetailDataSource1" datatextfield="DetailBoxName" datavaluefield="Key" height="160px" width="600px" selectionmode="Multiple" style="display: none"></asp:listbox>
                                        <asp:objectdatasource id="DetailDataSource1" runat="server" selectmethod="GetDetailIndustryList" typename="BEA.RIMS.Library.DetailIndustryList"></asp:objectdatasource>
                                        <span style="font-size: 8pt">*Industry includes government enterprises.</span>
                                    </td>
                                </tr>
                            </table>
                            <asp:button id="btnContinue" runat="server" clientidmode="Static" onclick="btnContinue_Click" text="Add to Cart" title="Add to Cart" class="btn rims-blue-btn btn-lg" style="float: right; margin-right: 14px; background-color: #005189;" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>

