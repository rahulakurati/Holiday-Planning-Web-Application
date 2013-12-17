<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="tourapplication.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Holidays</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    
        <%--<div class="navbar navbar-default" role="navigation">
              <div class="navbar-header">
                  <a href="#" class="navbar-brand">Make my Tour</a>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                      <li><a href="index.htm">Home</a></li>
                      <li><a href="topics.htm">Best Tours</a></li>
                      <li><a href="guidelines.htm">Submission Guidelines</a></li>
                      <li><a href="aboutus.htm">About Us</a></li>
                      <li><a href="#">Support</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                      <li class="active"><a href="#">Login</a></li>
                      <li><a href="register.aspx">Register</a></li>
                  </ul>
              </div> 
          </div>--%>
    <div class="navbar navbar-default" role="navigation" runat="server" id="divlogin">
              <div class="navbar-header">
                  <a href="#" class="navbar-brand">Make my Tour</a>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                      <li><a href="index.htm">Home</a></li>
                      <li><a href="topics.htm">Best Tours</a></li>
                      <li><a href="guidelines.htm">Submission Guidelines</a></li>
                      <li><a href="aboutus.htm">About Us</a></li>
                      <li><a href="#">Support</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right" runat="server" id="ullogin">
                      <li runat="server" id="liLogin"><a href="login.aspx" runat="server" id="aLogin">Login</a></li>
                      <li runat="server" id="liRegister"><a href="register.aspx">Register</a></li>
                  </ul>
              </div> 
     </div>
    <div class="jumbotron">
        <h1 style="font-family:'Segoe WP SemiLight';color:#0101DF;">Book Holiday Packages</h1><br />
        <div class="container">

            <asp:Label ID="lblSearchText" runat="server" Text="I want to go to"></asp:Label><br />
            <form id="form1" runat="server" class="form-inline">
                <asp:TextBox CssClass="form-control" Width="40%" ID="txtSearchTour" runat="server"></asp:TextBox>
                <asp:Button CssClass="btn btn-primary" ID="btnSearch" runat="server" Text="Search Holidays" OnClick="btnSearch_Click" />
                <br />
                <br />
                <asp:GridView ID="gvSearchResults" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvSearchResults_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField HeaderText="Select" ShowHeader="True" ShowSelectButton="True" >
                        <ControlStyle ForeColor="Blue" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:Label ID="Label1" runat="server" Text="or" Visible="False"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/custom.aspx" Visible="False">want to customize your holiday?</asp:HyperLink>

         <a href="http://www.accuweather.com/en/us/san-jose-ca/95110/air-travel-current-weather/347630" class="aw-widget-legal">
<!--
By accessing and/or using this code snippet, you agree to AccuWeather’s terms and conditions (in English) which can be found at http://www.accuweather.com/en/free-weather-widgets/terms and AccuWeather’s Privacy Statement (in English) which can be found at http://www.accuweather.com/en/privacy.
-->
</a><div id="awtd1387049417001" class="aw-widget-36hour"  data-locationkey="" data-unit="f" data-language="en-us" data-useip="true" data-uid="awtd1387049417001" data-editlocation="true" data-lifestyle="air-travel"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
            </form>

            
            

        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- slider -->
    <script type='text/javascript' src='scripts/jquery.min.js'></script>
    <!--[if !IE]><!--><script type='text/javascript' src='scripts/jquery.mobile-1.0rc2.customized.min.js'></script><!--<![endif]-->
    <script type='text/javascript' src='scripts/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='scripts/jquery.hoverIntent.minified.js'></script> 
    <script type='text/javascript' src='scripts/diapo.js'></script> 
    <script>
        $(function () {
            $('.pix_diapo').diapo();
        });
    </script>
</body>
</html>
