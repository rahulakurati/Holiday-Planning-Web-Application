<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="tourapplication.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <style>
        #login
        {
            margin:0 100px 0 300px;
            text-align:center;
        }

        #btnSignin
        {
            margin-top:5px;
        }
    </style>
</head>
<body>
    <div class="navbar navbar-default" role="navigation">
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
          </div>
    <div class="jumbotron">
        <div class="container">
            <form id="form1" runat="server" class="form-signin">
                <div id="login">
                    <h2 class="form-signin-heading" style="text-align:left">Please sign in</h2>
                    <table>
                        <tr>
                            <td style="font-size:medium;">Email Address</td>
                            <td><asp:TextBox CssClass="form-control"  TextMode="Email" runat="server" ToolTip="Username/Email address" ID="txtEmail" ></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="font-size:medium;">Password</td>
                            <td><asp:TextBox CssClass="form-control" TextMode="Password" runat="server" Text="Password" ToolTip="Password" ID="txtPassword"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><asp:Button CssClass="btn btn-lg btn-primary btn-block"  Text="Sign In" runat="server" ID="btnSignin" OnClick="btnSignin_Click" /></td>
                        </tr>
                    </table>
                
                
                
                </div>
        </form>
            </div>
    </div>
</body>
</html>
