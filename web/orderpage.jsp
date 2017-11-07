
<html>

    <head>
        <meta charset="UTF-8">
        <title>Order</title>
      
        
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/checkout-sidebar.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
         <link rel="stylesheet" type="text/css" href="css/orderstyle.css" />
          <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="" type="image/x-icon"> <!-- Add burger icon-->
    </head>
    <body>
<!--======= Start Nav ==========-->
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
     
        <a class="navbar-brand" href="#">
          <img src="images/logo-transparent.png" width="100" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/indexxburger.jsp">HOME |</a>
            
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/orderpage.jsp#">ORDER |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login.jsp#">LOGIN |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/indexxburger.jsp#about">ABOUT |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/indexxburger.jsp#contact">CONTACT |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">HISTORY</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

         <!-- ============ Ingredients Grid ============= -->
            
             <!-- ============ Premade ============= -->

            <section class="container">
            <div><h2 id="selectburger">Select a burger</h2></div>
            <br></br>
            <div class="wrapper">
              <div class="box a">A</div>
              <div class="box b">B</div>
              <div class="box c">C</div>
              <div class="box d">D</div>
              <div class="box e">E</div>
              <div class="box f">F</div>
            </div>
            
             <!-- ============ Create your own ============= -->
     
            






                     <!-- ============ Order Sidebar ============= -->   
                        <div class="col-sm-3 sidenav navbar-right">
                            <div class="checkout">
                                <a class="checkout__button" href="#">Checkout</a>
                                <div class="checkout__order">
                                    <div class="checkout__order-inner">
                                        <table class="checkout__summary">
                                            <thead>
                                                <tr><th>Your Order</th><th>Price</th></tr>
                                            </thead>
                                          
                                            <tbody>
                                                <tr><td><strong>Bun</strong> <span></span></td><td>$2</td></tr>
                                                <tr><td><strong>Lettuce</strong> <span></span></td><td>$1</td></tr>
                                                <tr><td><strong>Tomato</strong> <span></span></td><td>$1</td></tr>
                                                <tr><td><strong>Pattie</strong> <span></span></td><td>$2</td></tr>
                                                <tr><td><strong>BBQ Sauce</strong> <span></span></td><td>$1</td></tr>
                                            </tbody>
                                              <tfoot>
                                                <tr><td colspan="2">Total <span>$8</span></td></tr>

                                            </tfoot>
                                        </table><!-- /checkout__summary -->
                                        <button class="checkout__option checkout__option--silent checkout__cancel"><i class="fa fa-angle-left"></i> Continue shopping</button><button class="checkout__option checkout__option--loud">Pay now</button>
                                    </div><!-- /checkout__order-inner -->
                                </div><!-- /checkout__order -->
                            </div><!-- /checkout -->
                            <div class="dummy-sidebar__item"></div>
                            <div class="dummy-sidebar__item"></div>
                            <div class="dummy-sidebar__item"></div>
                            <div class="dummy-sidebar__item"></div>
                            <div class="dummy-sidebar__item"></div>
                            <div class="dummy-sidebar__overlay"></div>
                        </div>

                        <!-- ============ Grid items ============= -->
                        

                    </div><!-- /dummy-grid -->
                </div>
            </section> 
        </div><!-- /container -->
       

       <!-- ============ Sidebar animation script ============= -->
        <script src="/xBurgers%20Website/js/classie.js"></script>
        <script>
            (function() {
                [].slice.call( document.querySelectorAll( '.checkout' ) ).forEach( function( el ) {
                    var openCtrl = el.querySelector( '.checkout__button' ),
                        closeCtrls = el.querySelectorAll( '.checkout__cancel' );

                    openCtrl.addEventListener( 'click', function(ev) {
                        ev.preventDefault();
                        classie.add( el, 'checkout--active' );
                    } );

                    [].slice.call( closeCtrls ).forEach( function( ctrl ) {
                        ctrl.addEventListener( 'click', function() {
                            classie.remove( el, 'checkout--active' );
                        } );
                    } );
                } );
            })();
        </script>

         <!-- ============ Footer Section  ============= -->

        <footer class="sub_footer">
           
            
                <div class="col-md-4"><p class="sub-footer-text text-center">Built By <a href="#" target="_blank">Team Extreme</a></p></div>
            </div>
        </footer>
 
        <script type="text/javascript" src="/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="js/main.js" ></script>
        <script type="text/javascript" src="/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="js/main.js" ></script>
        <!-- Bootstrap core JavaScript -->
        <script src="/jquery/jquery.min.js"></script>
        <script src="/js/bootstrap.bundle.min.js"></script>

    </body>
</html>