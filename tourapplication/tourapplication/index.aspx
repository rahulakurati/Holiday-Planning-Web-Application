<!DOCTYPE html>
<html>
  <head>
    <title>Make My Tour</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!--slider -->
    <link rel='stylesheet' id='style-css'  href="css/diapo.css" type='text/css' media='all'> 
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      <div class="container">
          <div class="navbar navbar-default" role="navigation">
              <div class="navbar-header">
                  <a href="#" class="navbar-brand">CQR</a>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav">
                      <li class="active"><a href="index.htm">Home</a></li>
                      <li><a href="topics.htm">Topics</a></li>
                      <li><a href="guidelines.htm">Submission Guidelines</a></li>
                      <li><a href="aboutus.htm">About Us</a></li>
                      <li><a href="">Support</a></li>
                  </ul>
                  <img class="nav navbar-nav navbar-right img-rounded img-responsive" src="images/COMSOC.gif" style="height:50px;" /> 
              </div> 
          </div>

          <div class="jumbotron" style="color:limegreen;">
              <h1 style="font-family:'Segoe WP SemiLight';color:#0101DF;">Make My Trip</h1><br />
              <div id="slider">
                  <div class="pix_diapo">

                    <div data-thumb="images/thumbs/megamind1048.jpg">
                        <img src="images/slides/megamind1048.jpg">
                        <div class="caption elemHover fromLeft">
                            This is a simple sliding image with caption. You can have more than one caption and decide the layout of the caption via css.
                        </div>
                    </div>
                    
                    <div data-thumb="images/thumbs/megamind_07.jpg">
                        <img src="images/slides/megamind_07.jpg"> 
                        <div class="caption elemHover fromRight" style="bottom:65px; padding-bottom:5px; color:#ff0; text-transform:uppercase">
                            Here you can see two captions.
                        </div>
                        <div class="caption elemHover fromLeft" style="padding-top:5px;">
                            The first are loaded immediately before than the second one
                        </div>
                    </div>
                    
                    <div data-thumb="images/thumbs/wall-e.jpg" data-time="7000">
                        <img src="images/slides/wall-e.jpg">
                        <div class="elemHover caption fromLeft" style="bottom:70px; width:auto; -webkit-border-top-right-radius: 6px; -webkit-border-bottom-right-radius: 6px; -moz-border-radius-topright: 6px; -moz-border-radius-bottomright: 6px; border-top-right-radius: 6px; border-bottom-right-radius: 6px;">
                            You can also get the same effect as the caption with:
                        </div>
                        <div class="elemHover button fromTop" data-easing="easeOutExpo" style="left:388px; bottom:78px;">
                            A button
                        </div>
                        <div class="elemHover button button2 fromBottom" data-easing="easeOutExpo" style="left:512px; bottom:78px;">
                            Or two buttons
                        </div>
                        <div class="elemHover fadeIn" style="left:600px; bottom:auto; top:0; padding-top:50px; color:#ff0; font-size:13px; line-height:20px; width:auto; -webkit-border-top-right-radius: 6px; -webkit-border-bottom-right-radius: 6px; -moz-border-radius-topright: 6px; -moz-border-radius-bottomright: 6px; border-top-right-radius: 6px; border-bottom-right-radius: 6px; background:url(images/demo/arrow_caption.png) no-repeat 230px 30px">
                            Or any other html element...<br>
                            and you can decide the transition time of any slide
                        </div>
                    </div>
                    
                    <div data-thumb="images/thumbs/up-official-trailer-fake.jpg">
                        <iframe width="940" height="470" src="http://www.youtube.com/embed/qas5lWp7_R0?wmode=transparent&autoplay=1" data-fake="images/slides/up-official-trailer-fake.jpg" frameborder="0" allowfullscreen></iframe>
                        <div class="elemHover caption fromLeft elemToHide" style="bottom: 350px; width:auto; -webkit-border-top-right-radius: 6px; -webkit-border-bottom-right-radius: 6px; -moz-border-radius-topright: 6px; -moz-border-radius-bottomright: 6px; border-top-right-radius: 6px; border-bottom-right-radius: 6px; left:0">
                            You can also display videos, but it requires a "fake image"... read the documentation please
                        </div>
                    </div>
                    
                    <div data-thumb="images/thumbs/big_buck_bunny.jpg" data-time="7000">
                        <div style="position:absolute; top:0; left:0; width:900px; height:430px; padding:20px; background:#fff; color:#222;">
                        	<div style="float:left; width:300px;">
                                <p><br><br>You can display any html element directly in the slider, but pay attention, with many elements the transition effect could be slowed.<br>
                                In this case you can see a Vimeo video and a price table</p>
                                <iframe src="http://player.vimeo.com/video/1084537?title=0&amp;byline=0&amp;portrait=0&amp;color=f0bc00&amp;autoplay=1" data-fake="images/slides/big_buck_bunny.jpg" width="300" height="169" frameborder="0"></iframe>
                            </div>
                            <div class="price_table"><div>
                                <div class="price_column highlighted" style="top:0; left:190px; height:387px; background:#fff; -moz-box-shadow: 0 1px 4px #666;	-webkit-box-shadow: 0 1px 4px #666; box-shadow: 0 1px 4px #666;"><div>
                                </div></div><!-- .price_column --> 
                                <div class="price_column" style="top:0; left:0; height:383px; background:#ddd; -moz-box-shadow: 0 1px 4px #666;	-webkit-box-shadow: 0 1px 4px #666; box-shadow: 0 1px 4px #666;"><div> 
                                </div></div><!-- .price_column --> 
                                <div class="price_column" style="top:0; left:380px; height:383px; background:#ddd; -moz-box-shadow: 0 1px 4px #666;	-webkit-box-shadow: 0 1px 4px #666; box-shadow: 0 1px 4px #666;"><div>
                                </div></div><!-- .price_column -->
                                <div class="price_column highlighted fadeIn" style="top:0; left:190px;"><div>
                                    <div class="price_title">Standard</div><!-- .price_title --> 
                                    <div class="price_price">$9/mo.</div><!-- .price_price --> 
                                    <div class="price_explanation">And as the day advanced and the engine drivers</div><!-- .price_explanation --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_error">Error sign</div><!-- .pix_error --> 
                                    <div>
                                        <a class="button button3" href="#">Purchase</a>
                                    </div>
                                </div></div><!-- .price_column --> 
                                <div class="price_column fromTop" style="top:0; left:0"><div> 
                                    <div class="price_title">Basic</div><!-- .price_title --> 
                                    <div class="price_price">Free</div><!-- .price_price --> 
                                    <div class="price_explanation">And as the day advanced and the engine drivers</div><!-- .price_explanation --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_error">Error sign</div><!-- .pix_error --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_error">Error sign</div><!-- .pix_error --> 
                                    <div>
                                        <a class="button" href="#">Purchase</a>
                                    </div> 
                                </div></div><!-- .price_column --> 
                                <div class="price_column fromBottom" style="top:0; left:380px;"><div>
                                    <div class="price_title">Professional</div><!-- .price_title --> 
                                    <div class="price_price">$19/mo.</div><!-- .price_price --> 
                                    <div class="price_explanation">And as the day advanced and the engine drivers</div><!-- .price_explanation --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div class="pix_check">Check sign</div><!-- .pix_check --> 
                                    <div>
                                        <a class="button" href="#">Purchase</a>
                                    </div> 
                                </div></div><!-- .price_column --> 
                            </div></div><!-- price_table -->
                        </div>
                    </div>
                    
                    
                    <div data-thumb="images/thumbs/ratatouille2.jpg">
                        <img src="images/slides/ratatouille2.jpg">
                    </div>
                    
               </div>
              </div>
              <br /><br />
              
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