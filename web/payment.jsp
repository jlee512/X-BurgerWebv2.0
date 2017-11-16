<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


    <jsp:include page="headertags.jsp"/>

    <link rel="stylesheet" href="css/payment.css" media="screen" type="text/css">
</head>
<body>

<c:if test="${order_pending == null}">
    <c:redirect url="/order"/>
</c:if>

<div class="container">
    <div class="row">
        <div class="col-md-4">&nbsp</div>
        <div class="col-xs-12 col-md-4" style="padding-top: 15px; background-color: white;">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                </div>
                <div class="panel-body">
                    <form role="form" action="/process_payment" method="post">
                        <div class="form-group">
                            <c:if test="${sessionScope.loginStatus == 'active' && customer.cardToken != ''}">
                                <div class="checkbox">
                                    <label>
                                        <input type="radio" class="use-saved" id="saved" name="saved-card"
                                               value="savedCard"/>
                                        Use Saved Card
                                    </label>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.loginStatus == 'active'}">
                                <div class="checkbox">
                                    <label>
                                        <input type="radio" class="use-saved" id="remember" name="saved-card"
                                               value="rememberCard"/>
                                        Remember My Card
                                    </label>
                                </div>
                            </c:if>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" class="use-saved" id="guest" name="saved-card" value="guest"
                                           checked/>
                                    Checkout as Guest
                                </label>
                            </div>
                        </div>
                        <div id="new-card-entry">
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
                        <div class="d-flex flex-column justify-content-center" id="cardDetails2">
                            <div class="d-flex flex-row justify-content-center">
                                <div class="form-group">
                                    <label for="expityMonth">
                                        EXPIRY DATE</label>
                                    <div class="d-flex">
                                        <input type="text" class="form-control" id="expityMonth" name="expiryMon"
                                               placeholder="MM" minlength="2" maxlength="2" required/>
                                    </div>
                                    <div class="d-flex">
                                        <input type="text" class="form-control" id="expityYear" name="expiryYear"
                                               placeholder="YYYY" minlength="4" maxlength="4" required/></div>
                                </div>
                            </div>
                            <div class="d-flex flex-row justify-content-center">
                                <div class="form-group">
                                    <label for="cvCode">
                                        CCV</label>
                                    <input type="password" class="form-control" id="cvCode" name="ccv" placeholder="CCV"
                                           required/>
                                </div>
                            </div>
                        </div>
                        </div>
                        <br/>
                        <div id="pin-append">

                        </div>
                        <c:if test="${sessionScope.loginStatus != 'active'}">
                            <div id="order-name-append">
                                <div class="d-flex flex-row justify-content-center" id="guestname-template">
                                    <div class="form-group">
                                        <label for="guestname"></label>
                                        <label>ENTER AN ORDER NAME</label>
                                        <input type="text" class="form-control" id="guestname" name="guestname"
                                               placeholder="Order Name" required/>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <button type="submit" class="btn btn-success btn-lg btn-block" role="button">Pay</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-4">&nbsp</div>
    </div>
</div>

<!-- If you're using Stripe for payments -->
<jsp:include page="footertags.jsp"/>

<script src="/js/payment.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>


</body>
</html>
