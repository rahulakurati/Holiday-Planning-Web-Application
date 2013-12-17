<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summary.aspx.cs" Inherits="tourapplication.summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Summary</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 334px;
        }
    </style>
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
        <h1 style="font-family:'Segoe WP SemiLight';color:#0101DF;">Order Summary</h1><br />
        <div class="container">
            <form id="form1" runat="server" class="form-inline">
                <div style="text-align:center">
                <table class="table table-bordered table-responsive">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="Holiday Spot"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblLocation" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label10" runat="server" Text="Start Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCalendar" runat="server"></asp:TextBox>
                            <asp:Button ID="btnShowCalendar" runat="server" Text="&gt;" OnClick="btnShowCalendar_Click" />
                        </td>
                        <td>
                            <asp:Calendar ID="startCalendar" runat="server" OnDayRender="startCalendar_DayRender" OnSelectionChanged="startCalendar_SelectionChanged" Visible="False"></asp:Calendar>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Visiting points"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblVisitingPoints" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label7" runat="server" Text="Transport"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblTransport" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblPrice" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server" Text="Duration"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDuration" runat="server"></asp:Label>
                            <asp:Label ID="Label9" runat="server" Text="days"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>

                    

                    <tr>
                        <td class="auto-style1">
                            <asp:LinkButton ID="lbBack" runat="server">Back</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Button CssClass="btn btn-primary" ID="btnProceed" runat="server" Text="Pay" OnClick="btnProceed_Click" Width="103px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>

                </table>
                </div>
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