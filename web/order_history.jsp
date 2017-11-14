<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anderstimo1
  Date: 14/11/2017
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Order History</title>

    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/checkout-sidebar.css"/>
    <link rel="stylesheet" type="text/css" href="css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="css/orderstyle.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="fonts/font-awesome.min.css" rel="stylesheet">
    <link rel="icon" href="" type="image/x-icon"> <!-- Add burger icon-->
</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container">

<c:forEach items="${order_list}" var="order" varStatus="outerloop">
    <div class="col-sm-6, col-md-4, col-lg-3">
    <div class="card">
        <div class="card-body">
            <h4><class = "card-title"><strong>Order ${order.order_id}</strong></h4>
            <p class="card-text"><strong>Time: ${order.order_datetime}</strong></p>
            <p class="card-text"><strong>Status: ${order.status}</strong></p>
            ${order.setPriceString()}
            <p class="card-text"><strong>Price: ${order.priceString}</strong></p>

            <a class="btn btn-primary" data-toggle="collapse" href="#${outerloop.index}" aria-expanded="false" aria-controls="${outerloop.index}">
                Ingredients
            </a>
            <div class="collapse" id="${outerloop.index}">
    <c:forEach items="${order.items}" var="item" varStatus="innerloop">
            <p class="card-text"><strong> ${innerloop.index+1}: ${item.item_type}</strong></p>
        <c:forEach items="${item.ingredients}" var="stock">
            <p class="card-text">           ${stock.ingredient_name}</p>
        </c:forEach>
        <p></p>
    </c:forEach>
        </div>
    </div>
    </div>
    </div>
</c:forEach>
</div>

<script type="text/javascript" src="/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="/js/main.js" ></script>
<!-- Bootstrap core JavaScript -->
<script src="/jquery/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/loginjs.js"></script>
<script src="js/checkpass.js"></script>

</body>
</html>
