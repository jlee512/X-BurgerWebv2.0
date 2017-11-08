<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>xBurger</title>
      
        <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="" type="image/x-icon"> <!-- Add burger icon-->
    </head>
    <body>
<!--======= Start Nav ==========-->
        

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="images/logo-transparent.png" width="100" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="indexxburger.jsp">HOME |</a>
              
            </li>
            <li class="nav-item">
              <a class="nav-link" href="orderpage.jsp#">ORDER |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp#">LOGIN |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="indexxburger.jsp#about">ABOUT |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="indexxburger.jsp#contact">CONTACT |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">HISTORY</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!--======= Start Home ==========-->
         
        <div id="top" class="starter_container ">
            <video autoplay loop id="video-background" muted plays-inline>
             <source src="images/lightBack.mp4" type="video/mp4">
            </video>

            <div class="follow_container">
                <div class="col-md-6 col-md-offset-3">
                   
                    <img src="/images/logo-transparent.png" width="450" height="320">
                    
                    <hr>
                    <a href="orderpage.jsp"><button type="button" class="btn btn-primary" >ORDER NOW</button></a>

                    <hr>
                </div>
            </div>
        </div>

        <!-- ============ About Us ============= -->

        <section id="about" class="description_content">
            <div class="text-content container">
                <div class="col-md-6">
                    <h1>About us</h1>
                    <br></br>
                    <div class="fa fa-cutlery fa-2x"></div>
                    <p class="desc-text">WE’VE BEEN PERFECTING GOURMET BURGERS SINCE 1989, AND KNOW THAT THE SECRET TO CREATING THE WORLD’S BEST BURGERS RIGHT HERE IN NZ IS SIMPLE ...</p>
                    <br></br>
                    <p class="desc-text">
                    IT’S ALL ABOUT MOUTHWATERING FLAVOUR AND SUPER-FRESH WHOLESOME FOOD, HANDMADE WITH LOVE FROM THE FINEST LOCAL INGREDIENTS.</p>
                </div>
                <div class="col-md-6">
                    <div class="img-section">
                       <img src="/images/bacon.png" width="400" height="400">
                   </div>
                </div>
            </div>
        </section>

        <!-- ============ Social  ============= -->
      
        <section class="social_connect">
            <div class="text-content container"> 
                <div class="col-md-6">
                    <br></br>
                    <span class="social_heading">FOLLOW US</span>

                    <ul class="social_icons">
                    <br></br>
                     <br></br>
       
                    </ul>
                </div>
                <div class="col-md-4">
                    <br></br>
                    <span class="social_heading">OR GET THE APP</span>
                    <br></br>
                    <br></br>
                    <br></br>
                    
                </div>
            </div>
        </section>

        <!-- ============ Contact  ============= -->

        <section id="contact">
            <div class="description_content">
                <h1 id="contact-header">Contact Us</h1>
                <br></br>
                <br></br>
                <br></br>
                <div class="row">
                    <div class="col-md-12">
                        <div class="inner contact">
                            <!-- Form Area -->
                            <div class="contact-form">
                                <!-- Form -->
                                <form id="contact-us" method="post" action="contact.php">
                                    <!-- Left Inputs -->
                                    <div class="col-md-6 ">
                                        <!-- Name -->
                                        <input type="text" name="name" id="name" required="required" class="form" placeholder="Name" />
                                        <!-- Email -->
                                        <input type="email" name="email" id="email" required="required" class="form" placeholder="Email" />
                                        <!-- Subject -->
                                        <input type="text" name="subject" id="subject" required="required" class="form" placeholder="Subject" />
                                    </div><!-- End Left Inputs -->
                                    <!-- Right Inputs -->
                                    <div class="col-md-6">
                                        <!-- Message -->
                                        <textarea name="message" id="message" class="form textarea"  placeholder="Message"></textarea>
                                    </div><!-- End Right Inputs -->
                                    <!-- Bottom Submit -->
                                    <div class="relative fullwidth col-xs-12">
                                        <!-- Send Button -->
                                        <button type="submit" id="submit" name="submit" class="btn btn-primary">SEND MESSAGE</button> 
                                        <br></br>
                                    </div><!-- End Bottom Submit -->
                                    <!-- Clear -->
                                    <div class="clear"></div>
                                </form>
                            </div><!-- End Contact Form Area -->
                        </div><!-- End Inner -->
                    </div>
                </div>
            </div>
        </section>

        <!-- ============ Footer Section  ============= -->

        <footer class="sub_footer">
            <div class="container">
            
                <div class="col-md-4"><p class="sub-footer-text text-center">Built By <a href="#" target="_blank">Team Extreme</a></p></div>
            </div>
        </footer>

        <script src="/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="/js/main.js" ></script>
        <!-- Bootstrap core JavaScript -->
        <script src="/js/bootstrap.bundle.min.js"></script>

    </body>
</html>