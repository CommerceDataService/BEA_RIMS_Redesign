<%@ Page Title="" Language="C#" MasterPageFile="~/RIMS.master" AutoEventWireup="true" CodeFile="choose-your-region.aspx.cs" Inherits="choose_your_region" EnableEventValidation="false" %>
<%@ MasterType VirtualPath="~/RIMS.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <title>Choose Your Region</title>
    <link href="_css/select2.min.css" rel="stylesheet" />
    <script src="_scripts/select2.min.js"></script>

    <link href="_css/bootstrap-duallistbox.min.css" rel="stylesheet">
    <script type="text/javascript" src="_scripts/jquery.bootstrap-duallistbox.js"></script>
    <script type="text/javascript" src="_scripts/jquery.bootstrap-duallistbox-custom.js"></script>
    <script>
        $(function () {

            if ($('#MessageState').val() == 'hide') {
                $("#CountySelectionError").hide(); //
            }
            else {
                $("#CountySelectionError").show(); //
            }

            var ddlstatescombo = $("#ddlMSA").select2();
            var ddlstatescombo = $("#ddlMetro").select2();
            var ddlstatescombo = $("#ddlMicro").select2();
            var ddlstatescombo = $("#ddlCMSA").select2();

            var lbcountyselection = $('#lbcountyselection').bootstrapDualListbox({
                bootstrap2Compatible: false,
                filterTextClear: 'show all',
                filterPlaceHolder: 'Search',
                moveSelectedLabel: 'Add selected',
                moveAllLabel: 'Add all',
                removeSelectedLabel: 'Remove selected',
                removeAllLabel: 'Remove all selected',
                moveOnSelect: false,                                                                 // true/false (forced true on androids, see the comment later)
                preserveSelectionOnMove: 'all',                                                     // 'all' / 'moved' / false
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

            //var originalname = $('#lbcountyselection').attr('name');
            //var helperelement1 = $(document.getElementById('bootstrap-duallistbox-nonselected-list_' + originalname));
            //var helperelement2 = $(document.getElementById('bootstrap-duallistbox-selected-list_' + originalname));

            $('#lbcountyselection').on('change', function () {

                //Get the currently selected option values into a string
                var selectedoptionsstring = $("option:selected", this).map(function () {
                    return $(this).val();
                }).toArray().join(",");

                //remove all the unselected options
                $('option:not(:selected)', this).remove();

                //refresh the duallistbox
                lbcountyselection.bootstrapDualListbox('refresh', true);

                //If no counties are selected, repopulate the list of counties for the whole state
                if (selectedoptionsstring == '') {
                    $.getJSON("rimsajax.ashx?action=GetCountiesForState&actionparameter=" + $('#ddlStates').val(), function (response, status, xhr) {

                        if (status == "error") {
                            var msg = "Sorry but there was an error: ";
                            alert(msg);
                            return false;
                            //$("#error").html(msg + xhr.status + " " + xhr.statusText);
                        }

                        //add each ajacent county to the listbox
                        $.each(response, function (index, item) {
                            //if (item.CensusCountyCode != '11001') //Don't show the "county" of DC
                                lbcountyselection.append($("<option></option>").attr("value", item.CensusCountyCode).text(item.REMDCountyName));
                        });

                        //refresh it again (to make the newly added options show up)
                        lbcountyselection.bootstrapDualListbox('refresh', true);

                    });

                }
                else
                $.getJSON("rimsajax.ashx?action=CountiesSelectAdjacent&actionparameter=" + selectedoptionsstring, function (response, status, xhr) {

                    if (status == "error") {
                        var msg = "Sorry but there was an error: ";
                        alert(msg);
                        return false;
                        //$("#error").html(msg + xhr.status + " " + xhr.statusText);
                    }

                    //add each ajacent county to the listbox
                    $.each(response, function (index, item) {

                        if (item.CensusCountyCode == 'NonContiguous') { //if any county is "noncontiguous", show message, bail out, and refresh
                            $('#MessageState').val('show'); //necessary to survive form submission
                            $("#CountySelectionError").text('You selected non-contiguous counties.  Please try again.').show();
                            $("#lbcountyselection option:selected").removeAttr("selected");
                            $('#rimsform').submit();
                            return false;
                        }

                        lbcountyselection.append($("<option></option>").attr("value", item.CensusCountyCode).text(item.REMDCountyName));
                    });

                    //refresh it again (to make the newly added options show up)
                    lbcountyselection.bootstrapDualListbox('refresh', true);
                    $('#MessageState').val('hide'); //necessary to survive form submission
                    $("#CountySelectionError").text('').hide();
                });


                return false; //don't bubble up
            });


        });

        function autoname() {
            $('#txtRegName').val($("#ddlMSA option:selected").text() || $("#ddlMetro option:selected").text() || $("#ddlMicro option:selected").text() || $("#ddlCMSA option:selected").text() );
        }
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

                <h3 class="landing-page-heading"><strong>Step 2.1: Define your region</strong></h3>
                <p>
                    NOTE: If you need multipliers for one industry for a state, <a href="choose-your-industry.aspx">order by industry.</a>
                    <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="If you order by industry, you will receive multipliers for all 50 states and the District of Columbia for a particular industry. If you order by region, you will receive multipliers for all industries within a particular region."></a>
                    <br />
                    Multipliers will be provided for the region as a whole, not for each county or state within the region.
                    <br />
                    The statistical areas below are defined (geographically delineated) by the Office of Management and Budget in bulletin no. 13-01 issued February 28, 2013.
                </p>
                <div>
                    <div style="float: left; width: 20%">
                        <asp:TextBox runat="server" ClientIDMode="Static" ID="ButtonClicked" Value="" Style="display: none;" OnTextChanged="ButtonClicked_TextChanged"></asp:TextBox>
                        <asp:TextBox runat="server" ClientIDMode="Static" ID="MessageState" Value="hide" Style="display: none;" OnTextChanged="ButtonClicked_TextChanged"></asp:TextBox>
                        <%--        <%=DebugString%>--%>
                        <table class="table table-hover region-menu" style="width: 100%">
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" ID="acustomizedregion" ClientIDMode="Static" NavigateUrl="javascript:$('#ButtonClicked').val('divcountyselection');$('#rimsform').submit();"> Customized Region </asp:HyperLink>
                                    <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="Customizing a region allows you to select multipliers by contiguous counties or states."></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" ID="aMSA" ClientIDMode="Static" NavigateUrl="javascript:$('#ButtonClicked').val('divmsaselection');$('#rimsform').submit();">Metropolitan Statistical Areas (MSA)</asp:HyperLink>
                                    <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="A metropolitan statistical area (MSA) is a geographical region with a relatively high population density at its core and close economic ties throughout the area. A typical MSA is centered on a single large city that wields substantial influence over the region (e.g., Chicago)."></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" ID="aMD" ClientIDMode="Static" NavigateUrl="javascript:$('#ButtonClicked').val('divmdselection');$('#rimsform').submit();">Metropolitan Divisions</asp:HyperLink>
                                    <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="If specified criteria are met, a metropolitan statistical area containing a single core with a population of 2.5 million or more may be subdivided to form smaller groupings of counties referred to as 'metropolitan divisions.' There are 11 Metropolitan Statistical Areas (MSAs) deemed large enough to be subdivided into metropolitan divisions."></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" ID="aMicro" ClientIDMode="Static" NavigateUrl="javascript:$('#ButtonClicked').val('divmicroselection');$('#rimsform').submit();">Micropolitan Statistical Areas</asp:HyperLink>
                                    <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="Each micropolitan statistical area must have at least one urban cluster of at least 10,000 but less than 50,000 population. There are 382 metropolitan statistical areas and 551 micropolitan statistical areas in the U.S."></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" ID="aCSA" ClientIDMode="Static" NavigateUrl="javascript:$('#ButtonClicked').val('divcsaselection');$('#rimsform').submit();">Combined Statistical<br /> Areas (CSA)</asp:HyperLink>
                                    <a href="#" data-toggle="tooltip" class="fa fa-question-circle tip-right custom-tooltip" data-trigger="" title="If specified criteria are met, adjacent Metropolitan and Micropolitan Statistical Areas, in various combinations, may become the components of a set of complementary areas called Combined Statistical Areas. For instance, a Combined Statistical Area may comprise two or more Metropolitan Statistical Areas, a Metropolitan Statistical Area and a Micropolitan Statistical Area, two or more Micropolitan Statistical Areas, or multiple Metropolitan and Micropolitan Statistical Areas that have social and economic ties as measured by commuting, but at lower levels than are found among counties within Metropolitan and Micropolitan Statistical Areas."></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div runat="server" id="divcountyselection" visible="false" class="container-fluid">
                        <div class="row" style="margin-left: 22%;">
                            <div class="col-sm-6">
                                <h2>Customized Region</h2>
                                <asp:Label runat="server" ClientIDMode="Static" ID="CountySelectionError" Text="" CssClass="ui-state-error"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblState" runat="server" Text="Select a State:" AssociatedControlID="ddlStates"></asp:Label>
                                <asp:DropDownList ID="ddlStates" runat="server" ClientIDMode="Static" AutoPostBack="True" DataSourceID="StateDataSource" DataTextField="StateName" DataValueField="StateKey" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged"></asp:DropDownList>
                                <asp:ObjectDataSource ID="StateDataSource" runat="server" SelectMethod="GetStateList" TypeName="BEA.RIMS.Library.StateList"></asp:ObjectDataSource>
                                <br />
                                <br />
                                <asp:ListBox ID="lbcountyselection" ClientIDMode="Static" runat="server" DataTextField="REMDCOUNTYNAME" DataValueField="CENSUSCOUNTYCODE" SelectionMode="Multiple" Height="160px" Width="100%"></asp:ListBox>
                            </div>
                            <div runat="server" id="stateimagediv" class="col-sm-6" style="background: url('') no-repeat; background-size: contain; height: 400px">
                            </div>
                        </div>
                    </div>
                    <div runat="server" id="divmsaselection" visible="false" class="container-fluid">
                        <div class="row" style="margin-left: 22%;">
                            <div class="col-sm-6">
                                <h2>Metropolitan Statistical Areas (MSA)</h2>
                                <br />
                                <asp:DropDownList ID="ddlMSA" runat="server" ClientIDMode="Static" DataSourceID="MSADataSource2" DataTextField="MSADescription" DataValueField="MSACode"></asp:DropDownList>
                                <asp:LinkButton ID="LinkButton1" runat="server" href="javascript:invokeinfodialog('LookupMSA.aspx?code=' + $(&quot;#ddlMSA option:selected&quot;).val() + '&id=' + $(&quot;#ddlMSA option:selected&quot;).text().replace(/ /g,'+'), 'County List', true, 400, 400)" CausesValidation="False" CssClass="all_links">View Counties</asp:LinkButton>
                                <asp:ObjectDataSource ID="MSADataSource2" runat="server" SelectMethod="GetMSAList" TypeName="BEA.RIMS.Library.MSAList">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="mSAType" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                    </div>
                    <div runat="server" id="divmdselection" visible="false" class="container-fluid">
                        <div class="row" style="margin-left: 22%;">
                            <div class="col-sm-6">
                                <h2>Metropolitan Divisions</h2>
                                <br />
                                <asp:DropDownList ID="ddlMetro" runat="server" ClientIDMode="Static" DataSourceID="MSADataSource3" DataTextField="MSADescription" DataValueField="MSACode"></asp:DropDownList>
                                <asp:LinkButton ID="LinkButton5" runat="server" href="javascript:invokeinfodialog('LookupMSA.aspx?code=' + $(&quot;#ddlMetro option:selected&quot;).val() + '&id=' + $(&quot;#ddlMetro option:selected&quot;).text().replace(/ /g,'+'), 'County List', true, 400, 400)" CausesValidation="False" CssClass="all_links">View Counties</asp:LinkButton>
                                <asp:ObjectDataSource ID="MSADataSource3" runat="server" SelectMethod="GetMSAList" TypeName="BEA.RIMS.Library.MSAList">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="mSAType" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                    </div>

                    <div runat="server" id="divmicroselection" visible="false" class="container-fluid">
                        <div class="row" style="margin-left: 22%;">
                            <div class="col-sm-6">
                                <h2>Micropolitan Statistical Areas</h2>
                                <br />
                                <asp:DropDownList ID="ddlMicro" runat="server" ClientIDMode="Static" DataSourceID="MSADataSource4" DataTextField="MSADescription" DataValueField="MSACode"></asp:DropDownList>
                                <asp:LinkButton ID="LinkButton4" runat="server" href="javascript:invokeinfodialog('LookupMSA.aspx?code=' + $(&quot;#ddlMicro option:selected&quot;).val() + '&id=' + $(&quot;#ddlMicro option:selected&quot;).text().replace(/ /g,'+'), 'County List', true, 400, 400)" CausesValidation="False" CssClass="all_links">View Counties</asp:LinkButton>
                                <asp:ObjectDataSource ID="MSADataSource4" runat="server" SelectMethod="GetMSAList" TypeName="BEA.RIMS.Library.MSAList">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="3" Name="mSAType" Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                    </div>

                    <div runat="server" id="divcsaselection" ClientIDMode="Static" visible="false" class="container-fluid">
                        <div class="row" style="margin-left: 22%;">
                            <div class="col-sm-6">
                                <h2>Combined Statistical Areas (CSA)</h2>
                                <br />
                                <asp:DropDownList ID="ddlCMSA" runat="server" ClientIDMode="Static" DataSourceID="CMSADataSource1" DataTextField="Value" DataValueField="Key"></asp:DropDownList>
                                <asp:LinkButton ID="LinkButton3" runat="server" href="javascript:invokeinfodialog('LookupCMSA.aspx?code=' + $(&quot;#ddlCMSA option:selected&quot;).val() + '&id=' + $(&quot;#ddlCMSA option:selected&quot;).text().replace(/ /g,'+'), 'County List', true, 400, 400)" CausesValidation="False" CssClass="all_links">View Counties</asp:LinkButton>
                                <asp:ObjectDataSource ID="CMSADataSource1" runat="server" SelectMethod="GetCMSAList" TypeName="BEA.RIMS.Library.CMSAList"></asp:ObjectDataSource>
                            </div>
                        </div>
                    </div>

                    <div style="clear: left">
                    </div>
                </div>
                <h3 class="landing-page-heading"><strong>Step 2.2: Name your Region</strong></h3>
                <p>
                    You may change the name of your region at checkout.<br />
                    You may use the Auto Name Region button if you selected a statistical area.
                </p>

                <div class="form-group">
                    <div class="form-inline row">
                        <div class="form-group col-lg-10">
                            <asp:TextBox ID="txtRegName" runat="server" ClientIDMode="Static" CssClass="form-control" Width="450px" placeholder="Please enter a descriptive name for your region" required></asp:TextBox>
                            <input id="btnAutoName" type="button" onclick="autoname();" value="Use Statistical Area Name" class="btn rims-blue-btn" style="margin: -2px 0 0 -5px; background-color: #005189;"/>
                            <div class="help-block">Do not use special characters such as @ # $ % &amp; : or ; in your region name.</div>
                        </div>

                    </div>
                </div>
                <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="Add to Cart" title="Add to Cart" class="btn rims-blue-btn" Style="background-color: #005189;" />
            </div>
        </div>
    </div>
</asp:Content>

