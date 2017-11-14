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

<%--<jsp:include page="navbar.jsp"/>--%>

<c:forEach items="${order_list}" var="order">
    <div class="card" style="width: 20rem">
        <div class="card-body">
            <h4><class = "card-title"><b>Order ${order.order_id}</b></h4>
        <p><b>Time: ${order.order_datetime}</b></p>
        <p><b>Status: ${order.status}</b></p>
        ${order.setPriceString()}
        <p><b>Price: ${order.priceString}</b></p>

    <c:forEach items="${order.items}" var="item" varStatus="loop">
            <p><strong> ${loop.index+1}: ${item.item_type}</strong></p>
        <c:if test="${item != order.items[0]}">

            <%--<c:if test="${item != order.item.order_details_id[${loop.index}]}">--%>
                <%--<p><strong>     ${item.item_type}</strong></p>--%>
            <%--</c:if>--%>
        </c:if>
        <c:forEach items="${item.ingredients}" var="stock">
            <p>           ${stock.ingredient_name}</p>
        </c:forEach>
        <p></p>
    </c:forEach>
            </div>
    </div>
</c:forEach>

<script type="text/javascript" src="/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="/js/main.js" ></script>
<!-- Bootstrap core JavaScript -->
<script src="/jquery/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/loginjs.js"></script>
<script src="js/checkpass.js"></script>

</body>
</html>
