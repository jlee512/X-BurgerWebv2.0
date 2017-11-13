
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
                <a class="nav-link" href="/">HOME |</a>

            </li>
            <li class="nav-item">
                <a class="nav-link" href="/order">ORDER |</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/login">LOGIN |</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/#about">ABOUT |</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/#contact">CONTACT |</a>
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

<div class="container" id="portfolio">




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
                    <button class="checkout__option checkout__option--silent checkout__cancel"><i class="fa fa-angle-left"></i> Continue shopping</button>
                    <button class="checkout__option checkout__option--loud" data-toggle="modal" data-target="#myModal" data-backdrop="false" >Pay now</button>




                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                                </div>

                                <!-- CREDIT CARD FORM STARTS HERE -->
                                <div class="panel panel-default credit-card-box">
                                    <div class="panel-heading display-table" >
                                        <div class="row display-tr" >
                                            <h3 class="panel-title display-td" >Payment Details</h3>
                                            <div class="display-td" >

                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <form role="form" id="payment-form">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="form-group">
                                                        <label for="cardNumber">CARD NUMBER</label>
                                                        <div class="input-group">
                                                            <input
                                                                    type="tel"
                                                                    class="form-control"
                                                                    name="cardNumber"
                                                                    placeholder="Valid Card Number"
                                                                    autocomplete="cc-number"
                                                                    required autofocus
                                                            />
                                                            <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-7 col-md-7">
                                                    <div class="form-group">
                                                        <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                                        <input
                                                                type="tel"
                                                                class="form-control"
                                                                name="cardExpiry"
                                                                placeholder="MM / YY"
                                                                autocomplete="cc-exp"
                                                                required
                                                        />
                                                    </div>
                                                </div>
                                                <div class="col-xs-5 col-md-5 pull-right">
                                                    <div class="form-group">
                                                        <label for="cardCVC">CV CODE</label>
                                                        <input
                                                                type="tel"
                                                                class="form-control"
                                                                name="cardCVC"
                                                                placeholder="CVC"
                                                                autocomplete="cc-csc"
                                                                required
                                                        />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="form-group">

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <button class="btn btn-success btn-lg btn-block" type="submit">Pay Now</button>
                                                </div>
                                            </div>
                                            <div class="row" style="display:none;">
                                                <div class="col-xs-12">
                                                    <p class="payment-errors"></p>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                                <!-- CREDIT CARD FORM ENDS HERE -->
                            </div>
                        </div>
                    </div>



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


    <!--- Start order grid -->



    <h2 id="choose">Choose a burger:</h2>

    <div class="row text-center">

        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#">
                        <img src="images/hamburger.jpg" class="img-thumbnail img-responsive">
                    </a>
                </div>
                <div class="panel-footer">
                    Ham Burger
                    <input id="checkBox" type="checkbox">
                </div>

            </div>
        </div>


        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#">
                        <img src="images/cheeseburger.jpg" class="img-thumbnail img-responsive">
                    </a>
                </div>
                <div class="panel-footer">
                    Cheese Burger
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>


        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#">
                        <img src="images/porkburger.jpg" class="img-thumbnail img-responsive">
                    </a>
                </div>
                <div class="panel-footer">
                    Pork Burger
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#">
                        <img src="images/chickenburger.jpg" class="img-thumbnail img-responsive">
                    </a>
                </div>
                <div class="panel-footer">
                    Chicken Burger
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>
    </div>

    <!--Create own-->

    <h2 id="choose">Or create your own:</h2>

    <div class="btn-group btn-group-justified">
  <span><a href="#" class="btn btn-primary" onclick="showBun()">Bun</a>
    <span><a href="#" class="btn btn-primary" onclick="showBeef()">Meat</a>
    <span><a href="#" class="btn btn-primary" onclick="showCheese()">Cheese</a>
    <span><a href="#" class="btn btn-primary" onclick="showSalad()">Salad</a>
    <span><a href="#" class="btn btn-primary" onclick="showSauce()">Sauce</a>
    </div>

    <div class="row text-center" id="bunCol">

        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/white.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    White
                    <input id="checkBox" type="checkbox">
                </div>

            </div>
        </div>


        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/wholemeal.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Wholemeal
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/sourdough_1.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Sourdough
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

    </div>

    <!-- Meat -->

    <div class="row text-center" id="beefCol">
        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/beef.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Beef
                    <input id="checkBox" type="checkbox">
                </div>

            </div>
        </div>


        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/chicken.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Chicken
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/pork.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Pork
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>


    </div>

    <!-- Cheese -->

    <div class="row text-center" id="cheeseCol">
        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/swiss.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Swiss
                    <input id="checkBox" type="checkbox">
                </div>

            </div>
        </div>


        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/halloumi.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Halloumi
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/smoked.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Smoked
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

    </div>

    <!-- Salad -->


    <div class="row text-center" id="saladCol">
        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/pickle.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Pickle
                    <input id="checkBox" type="checkbox">
                </div>

            </div>
        </div>


        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/lettuce.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class="panel-footer">
                    Lettuce
                    <input id="checkBox" type="checkbox">
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-sm-3 col-xs-4">

            <div class="panel panel-default">
                <div class="panel-body">

                    <img src="images/tomato.jpg" class="img-thumbnail img-responsive">

                </div>
                <div class "panel-footer">
                Tomato
                <input id="checkBox" type="checkbox">
            </div>
        </div>
    </div>

</div>

<!-- Sauce -->

<div class="row text-center" id="sauceCol">
    <div class="col-lg-2 col-sm-3 col-xs-4">
        <div class="panel panel-default">
            <div class="panel-body">

                <img src="images/tomatosauce.jpg" class="img-thumbnail img-responsive">

            </div>
            <div class="panel-footer">
                Tomato Sauce
                <input id="checkBox" type="checkbox">
            </div>

        </div>
    </div>


    <div class="col-lg-2 col-sm-3 col-xs-4">

        <div class="panel panel-default">
            <div class="panel-body">

                <img src="images/brownsauce.jpg" class="img-thumbnail img-responsive">

            </div>
            <div class="panel-footer">
                Brown Sauce
                <input id="checkBox" type="checkbox">
            </div>
        </div>
    </div>

    <div class="col-lg-2 col-sm-3 col-xs-4">

        <div class="panel panel-default">
            <div class="panel-body">

                <img src="images/aioli.jpg" class="img-thumbnail img-responsive">

            </div>
            <div class="panel-footer">
                Aioli
                <input id="checkBox" type="checkbox">
            </div>
        </div>
    </div>

</div>


<!-- ============ Sidebar animation script ============= -->
<script src="js/classie.js"></script>
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


<script type="text/javascript" src="/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
<script type="text/javascript" src="/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
<script type="text/javascript" src="js/orderpage.js" ></script>
<!-- Bootstrap core JavaScript -->
<script src="/jquery/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>

</body>
</html>