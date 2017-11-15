<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 14/11/2017
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Payment Page</title>


    <jsp:include page="headertags.jsp" />

    <link rel="stylesheet" href="css/payment.css" media="screen" type="text/css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-4">&nbsp</div>
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                </div>
                <div class="panel-body">
                    <form role="form" action="/process_payment" method="post">
                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" class="use-saved" id="saved" name="saved-card"/>
                                    Use Saved Card
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" class="use-saved" id="remember" name="saved-card"/>
                                    Remember My Card
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" class="use-saved" id="guest" name="saved-card" checked/>
                                    Checkout as Guest
                                </label>
                            </div>
                        </div>
                        <div class="form-group" id="cardDetails">
                            <label for="cardNumber">
                                CARD NUMBER</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="cardNumber" name="cardNum"
                                       placeholder="Valid Card Number"
                                       required autofocus/>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            </div>
                        </div>
                        <div class="row" id="cardDetails2">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="expityMonth">
                                        EXPIRY DATE</label>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input type="text" class="form-control" id="expityMonth" name="expiryMon"
                                               placeholder="MM" required/>
                                    </div>
                                    <div class="col-xs-6 col-lg-6 pl-ziro">
                                        <input type="text" class="form-control" id="expityYear" name="expiryYear"
                                               placeholder="YY" required/></div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cvCode">
                                        CCV</label>
                                    <input type="password" class="form-control" id="cvCode" name="ccv" placeholder="CV"
                                           required/>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div id="pin-append">
                            <div class="col-xs-12 col-md-12" id="guestname-template">
                                <div class="form-group">
                                    <label for="guestname"></label>
                                        <label>ENTER YOUR AN ORDER NAME</label>
                                        <input type="password" class="form-control" id="guestname" name="guestname"
                                               placeholder="Order Name" required/>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success btn-lg btn-block" role="button">Pay</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-4">&nbsp</div>
    </div>
</div>

<!-- If you're using Stripe for payments -->
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>

<script src="/js/payment.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>


</body>
</html>
