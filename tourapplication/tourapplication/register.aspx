<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="tourapplication.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
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
                      <li><a href="#">Login</a></li>
                      <li class="active"><a href="#">Register</a></li>
                  </ul>
              </div> 
          </div>
    
        <div class="jumbotron">
            <form id="form1" runat="server" class="form-horizontal">
               <div class="form-group">
                <asp:Label runat="server" ID="lblFirstName" Text="First Name" CssClass="col-sm-2 control-label" />
                <div class="col-sm-10">
                  <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" Width="30%" TextMode="SingleLine" />
                </div>
              </div>
              <div class="form-group">
                <asp:Label runat="server" ID="lblLastName" Text="Last Name" CssClass="col-sm-2 control-label" />
                <div class="col-sm-10">
                  <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" Width="30%" TextMode="SingleLine"/>
                </div>
              </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblEmail" Text="Email" CssClass="col-sm-2 control-label" />
                <div class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" Width="30%" TextMode="Email" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="email is mandatory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <asp:Label runat="server" ID="lblPassword" Text="Password" CssClass="col-sm-2 control-label" />
                  <div class="col-sm-10">
                    <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" Width="30%" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button CssClass="btn btn-default" runat="server" ID="btnSubmit" Text="Register" OnClick="btnSubmit_Click" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    <asp:Image ID="imgRegistered" runat="server" Height="25px" ImageUrl="~/images/Check-Mark.png" Visible="False" Width="30px" />
                </div>
              </div>
            </form>
        </div>
    </div>
</body>
</html>
