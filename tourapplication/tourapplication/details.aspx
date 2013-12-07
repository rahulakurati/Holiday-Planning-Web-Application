<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="tourapplication.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Tour Details</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet" />
    </head>

    <body style="">
    <form id="form1" runat="server">
     <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Make My Tour</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
        <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item">
          <img runat="server" id="imgCarousel1" alt="First slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img runat="server" id="imgCarousel2" alt="Second slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item active">
          <img runat="server" id="imgCarousel3" alt="Third slide" />
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 runat="server" id="hdr1" class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img runat="server" id="img1" class="featurette-image img-responsive" alt="500x500" />
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-5">
          <img runat="server" id="img2" class="featurette-image img-responsive"  alt="500x500" />
        </div>
        <div class="col-md-7">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img runat="server" id="img3" class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="500x500" src="data:image/png;base64,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EwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDgBgz6ucoEJECBAoChg0IutykSAAAEC4wQM+rjKBSZAgACBooBBL7YqEwECBAiMEzDo4yoXmAABAgSKAga92KpMBAgQIDBOwKCPq1xgAgQIECgKGPRiqzIRIECAwDiB/wP2ewxbOB1NHAAAAABJRU5ErkJggg==" />
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->
        <div style="text-align:right;padding-right:25px;">
            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnProceed" Text="Proceed" OnClick="btnProceed_Click" />
        </div>
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>© 2013 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


    </form>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/holder.js"></script>
  

</body>

</html>
