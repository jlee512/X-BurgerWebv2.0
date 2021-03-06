<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 13/11/2017
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--======= Start Nav ==========-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

    <a class="navbar-brand" href="#">
        <img src="images/logo-transparent.png" width="100" height="50">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto" >
            <li class="nav-item">
                <a class="nav-link" href="/">HOME |</a>

            </li>
            <li class="nav-item">
                <a class="nav-link" href="/order">ORDER |</a>
            </li>
            <c:if test="${sessionScope.loginStatus != 'active'}" >
                <li class="nav-item">
                    <a class="nav-link" href="/login">LOGIN |</a>
                </li>
            </c:if>
            <li class="nav-item">
                <a class="nav-link" href="/#about">ABOUT |</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/#contact">CONTACT |</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/history">HISTORY</a>
            </li>
            <c:if test="${sessionScope.loginStatus == 'active'}" >
                <li class="nav-item">
                    <a class="nav-link" href="/logout">| LOGOUT</a>
                </li>
            </c:if>
        </ul>
    </div>
</nav>


