<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="tourapplication.contact" %>

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
                      <li><a href="index.aspx">Home</a></li>
                      <li><a href="search.aspx">Search</a></li>
                       <li><a href="about.aspx">About Us</a></li>
                      <li class="active"><a href="contact.aspx">Contact Us</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right" runat="server" id="ullogin">
                      <li runat="server" id="liLogin"><a href="login.aspx" runat="server" id="aLogin">Login</a></li>
                      <li runat="server" id="liRegister"><a href="register.aspx">Register</a></li>
                  </ul>
              </div> 
     </div>
    <div class="jumbotron">
        <h1 style="font-family:'Segoe WP SemiLight';color:#0101DF;">Contact Us</h1><br />
        <div class="container">
            <form id="form1" runat="server" class="form-inline">
                <script type="text/javascript" src="http://form.jotform.us/jsform/33447792438162"></script>
                <br />
                <table>
                    <tr>
                        <td>Skype us</td>
                        <td>
                            <script type="text/javascript" src="http://www.skypeassets.com/i/scom/js/skype-uri.js"></script>
                            <div id="SkypeButton_Call_supreme_7799008880_1">
                              <script type="text/javascript">
                                  Skype.ui({
                                      "name": "call",
                                      "element": "SkypeButton_Call_supreme_7799008880_1",
                                      "participants": ["supreme_7799008880"],
                                      "imageSize": 32
                                  });
                              </script>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Call Us
                        </td>
                        <td>
                            <object type="application/x-shockwave-flash" data="https://clients4.google.com/voice/embed/webCallButton" width="230" height="85"><param name="movie" value="https://clients4.google.com/voice/embed/webCallButton" /><param name="wmode" value="transparent" /><param name="FlashVars" value="id=b3c67c85dbdbc3f7a2dd09b3e2122cc3e5e588f5&style=0" /></object>
                        </td>
                    </tr>
                </table>
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
