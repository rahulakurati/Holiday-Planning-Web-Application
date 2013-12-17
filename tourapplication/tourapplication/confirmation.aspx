<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="tourapplication.confirmation" %>

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
    <script>
        $(document).ready(function () {
            $('ul#tools').prepend('<li class="print"><a href="#print">Click me to print</a></li>');
            $('ul#tools li.print a').click(function () {
                window.print();
                return false;
            });
        });
    </script>
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
                      <li><a href="index.aspx">Home</a></li>
                      <li><a href="search.aspx">Search</a></li>
                      <li><a href="about.aspx">About Us</a></li>
                      <li><a href="contact.aspx">Support</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right" runat="server" id="ullogin">
                      <li runat="server" id="liLogin"><a href="login.aspx" runat="server" id="aLogin">Login</a></li>
                      <li runat="server" id="liRegister"><a href="register.aspx">Register</a></li>
                  </ul>
              </div> 
     </div>
    <div class="jumbotron">
        <h1 style="font-family:'Segoe WP SemiLight';color:#0101DF;">Confirmation</h1><br />
        <div class="container">
            <form id="form1" runat="server" class="form-inline">
                <div style="text-align:center">
                    <p>Congrautulations! Your order has been booked. Here is the confirmation number: <asp:Label runat="server" ID="lblConfirmation"></asp:Label></p>
                    
                </div>
                <div style="text-align:right; padding-right:25px;">
                    <a href="#" onclick="window.print(); return false;" >Print</a>
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
