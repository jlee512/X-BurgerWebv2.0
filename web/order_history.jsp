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
    <title>Order History</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<c:forEach items="${order_list}" var="order">
    <p>${order.order_id}</p>
    <%--<c:forEach items="order_list.items" var="item">--%>
        <%--<c:if test="${item == order_list.items[0]}">--%>
            <%--<p> ${item.item_type}</p>--%>
        <%--</c:if>--%>
        <%--<c:forEach items="order_list.items.ingredients" var="ingredient">--%>
            <%--<p>         ${ingredient.ingredient_name}</p>--%>
        <%--</c:forEach>--%>
    <%--</c:forEach>--%>
</c:forEach>

</body>
</html>
