<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>xBurger</title>

    <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="" type="image/x-icon"> <!-- Add burger icon-->
    <%--<link rel="stylesheet" href="css/navbar_refinement.css">--%>
</head>
<body>
<!--======= Start Nav ==========-->

<jsp:include page="navbar.jsp"/>

<!--======= Start Home ==========-->

<div id="top" class="starter_container ">
    <video autoplay loop id="video-background" muted plays-inline>
        <source src="images/lightBack.mp4" type="video/mp4">
    </video>

    <div class="follow_container">
        <%--Spacer--%>
        <div class="d-flex justify-content-center">
            <div class="col-md-6 col-sm-12">

                <img class="img-fluid" src="/images/logo-transparent.png" width="450" height="320">

                <hr>
                <a href="/order">
                    <button type="button" class="btn btn-primary">ORDER NOW</button>
                </a>

                <hr>
            </div>
        </div>
    </div>
</div>

<!-- ============ About Us ============= -->

<section id="about" class="description_content">
    <div class="text-content container">
        <div class="d-flex flex-row justify-content-center align-items-center">
            <div class="col-md-6 col-sm-8">
                <h1>About us</h1>
                <br/>
                <div class="fa fa-cutlery fa-2x"></div>
                <p class="desc-text">WE&#39;VE BEEN PERFECTING GOURMET BURGERS SINCE 1989, AND KNOW THAT THE SECRET TO
                    CREATING THE WORLD&#39;S BEST BURGERS RIGHT HERE IN NZ IS SIMPLE ...</p>
                <br/>
                <p class="desc-text">
                    IT&#39;S ALL ABOUT MOUTHWATERING FLAVOUR AND SUPER-FRESH WHOLESOME FOOD, HANDMADE WITH LOVE FROM THE
                    FINEST LOCAL INGREDIENTS.</p>

            </div>
            <div class="col-md-6 col-sm-4">
                <div class="img-section">
                    <img class="img-fluid" src="/images/bacon.png" width="400" height="400">
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<!-- ============ Social  ============= -->

<section class="social_connect">
    <div class="text-content container">
        <div class="d-flex justify-content-center">
            <div class="col-md-6 col-sm-12">
                <br/>
                <span class="social_heading">FOLLOW US</span>

                <ul class="social_icons">
                    <li><img class="img-fluid" src="images/facebook.png" alt="facebook image"
                             style="height: 70px; width: 70px;"></li>
                    <li><img class="img-fluid" src="images/insta.png" alt="instagram image"
                             style="height: 70px; width: 70px;"></li>
                </ul>
            </div>
            <div class="col-md-4">
                <br/>
                <span class="social_heading">OR GET THE APP</span>
                <ul class="social_icons">
                    <li><img class="img-fluid" src="images/android1.png" alt="android logo"
                             style="height: 70px; width: 70px;"></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- ============ Contact  ============= -->

<section id="contact">
    <div class="description_content">
        <h1 id="contact-header">Contact Us</h1>
        <br/>
        <br/>

        <div class="d-flex justify-content-center">
            <div class="col-md-12">
                <div class="inner contact">
                    <!-- Form Area -->
                    <div class="contact-form">
                        <!-- Form -->
                        <form id="contact-us" method="post" action="contact.php">
                            <!-- Left Inputs -->
                            <div class="d-flex flex-column align-items-center">
                                <div class="col-md-6 col-sm-12 ">
                                    <!-- Name -->
                                    <input type="text" name="name" id="name" required="required" class="form"
                                           placeholder="Name"/>
                                    <!-- Email -->
                                    <input type="email" name="email" id="email" required="required" class="form"
                                           placeholder="Email"/>
                                    <!-- Subject -->
                                    <input type="text" name="subject" id="subject" required="required" class="form"
                                           placeholder="Subject"/>
                                </div><!-- End Left Inputs -->
                                <!-- Right Inputs -->
                                <div class="col-md-6 col-sm-12">
                                    <!-- Message -->
                                    <textarea name="message" id="message" class="form textarea"
                                              placeholder="Message"></textarea>
                                </div><!-- End Right Inputs -->
                                <!-- Bottom Submit -->
                                <div class="col-xs-12">
                                    <!-- Send Button -->
                                    <button type="submit" id="submit" name="submit" class="btn btn-primary">SEND MESSAGE
                                    </button>
                                    <br></br>
                                </div>
                            </div>
                            <!-- End Bottom Submit -->
                            <!-- Clear -->
                            <div class="clear"></div>
                        </form>
                    </div><!-- End Contact Form Area -->
                </div><!-- End Inner -->
            </div>
        </div>
    </div>
    </div>
</section>

<!-- ============ Footer Section  ============= -->

<footer class="sub_footer">
    <div class="container">
        <div class="d-flex justify-content-center">

            <div class="col-md-4"><p class="sub-footer-text text-center">Built By <a href="#" target="_blank">Team
                Extreme</a></p></div>
        </div>
    </div>
</footer>

<script src="/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="/js/bootstrap.bundle.min.js"></script>

</body>
</html>