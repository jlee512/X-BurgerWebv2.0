<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="main.java.entity.Stock" %>
<%@ page import="java.util.ArrayList" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Order</title>


    <jsp:include page="headertags.jsp"/>

    <link rel="stylesheet" type="text/css" href="css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="css/orderstyle.css"/>
    <link rel="stylesheet" type="text/css" href="css/checkout-sidebar.css"/>

</head>
<body>

<jsp:include page="navbar.jsp"/>

<!-- ============ Ingredients Grid ============= -->

<!-- ============ Premade ============= -->

<div class="container" id="portfolio">


    <!-- ============ Order Sidebar ============= -->

    <!--- Start order grid -->


    <h2 id="choose">1) Choose a burger:</h2>

        <div class="d-flex flex-row flex-wrap justify-content-around align-items-center">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <a href="#">
                            <img src="images/white.jpg" class="img-thumbnail img-responsive">
                        </a>
                    </div>
                    <div class="panel-footer">
                        <button id="plain" class="btn btn-info" style="min-width: 100%;">
                            Plain
                        </button>
                    </div>

                </div>

                <div class="panel panel-default">
                    <div class="panel-body">
                        <a href="#">
                            <img src="images/hamburger.jpg" class="img-thumbnail img-responsive">
                        </a>
                    </div>
                    <div class="panel-footer">
                        <button id="hamburger" class="btn btn-info" style="min-width: 100%;">
                            Hamburger
                        </button>
                    </div>

                </div>

                <div class="panel panel-default">
                    <div class="panel-body">
                        <a href="#">
                            <img src="images/cheeseburger.jpg" class="img-thumbnail img-responsive">
                        </a>
                    </div>
                    <div class="panel-footer">
                        <button id="cheeseburger" class="btn btn-info" style="min-width: 100%;">
                            Cheeseburger
                        </button>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">
                        <a href="#">
                            <img src="images/porkburger.jpg" class="img-thumbnail img-responsive">
                        </a>
                    </div>
                    <div class="panel-footer">
                        <button id="porkburger" class="btn btn-info" style="min-width: 100%;">
                            Porkburger
                        </button>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">
                        <a href="#">
                            <img src="images/chickenburger.jpg" class="img-thumbnail img-responsive">
                        </a>
                    </div>
                    <div class="panel-footer">
                        <button id="chickenburger" class="btn btn-info" style="min-width: 100%;">
                            Chickenburger
                        </button>
                    </div>
                </div>
        </div>

    <!--Create own-->

    <h2 id="choose">2) Or create your own:</h2>

    <div class="d-flex flex-row flex-wrap justify-content-center align-items-center">
        <span style="margin: 5px;"><a class="btn btn-primary" onclick="showBun()"><strong style="color: white">Bun</strong></a></span>
        <span style="margin: 5px;"><a class="btn btn-primary" onclick="showBeef()"><strong style="color: white">Meat</strong></a></span>
        <span style="margin: 5px;"><a class="btn btn-primary" onclick="showCheese()"><strong style="color: white">Cheese</strong></a></span>
        <span style="margin: 5px;"><a class="btn btn-primary" onclick="showSalad()"><strong style="color: white">Salad</strong></a></span>
        <span style="margin: 5px;"><a class="btn btn-primary" onclick="showSauce()"><strong style="color: white">Sauce</strong></a></span>
    </div>

    <br/>
    <br/>

    <%--start bun--%>

    <form>

        <div class="burger-container">
            <div class="d-flex flex-row justify-content-center align-items-center flex-wrap" id="bunCol">

                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Bread'}">
                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" style="width: 100%;"
                                         class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>


                                    <p>$${ingredient.price}0</p>


                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_id}" class="burger" type="radio"
                                                   name="${ingredient.category}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>

                    </c:if>

                </c:forEach>

            </div>

            <!-- Meat -->

            <div class="d-none flex-row justify-content-center align-items-center flex-wrap" id="beefCol">

                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Meat'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_id}" class="burger" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>

                    </c:if>

                </c:forEach>

            </div>

            <!-- Cheese -->

            <div class="d-none flex-row justify-content-center align-items-center flex-wrap" id="cheeseCol">

                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Cheese'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_id}" class="burger" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>

                    </c:if>

                </c:forEach>

            </div>

            <!-- Salad -->


            <div class="d-none flex-row justify-content-center align-items-center flex-wrap" id="saladCol">

                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Salad'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_id}" class="burger" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>

                                </div>

                            </div>

                    </c:if>

                </c:forEach>

            </div>
            <!-- Sauce -->

            <div class="d-none flex-row justify-content-center align-items-center flex-wrap" id="sauceCol">
                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Sauce'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_id}" class="burger" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>

                                </div>

                            </div>

                    </c:if>

                </c:forEach>

            </div>

            <span><a class="btn btn-primary"
                     style="display: block;background-color: #e520c7; margin: 0 auto; color: white; text-align: center;"
                     id="add-burger"><strong>Add Burger to Order</strong></a></span>
            <br>
        </div>


        <h2 id="choose-3" style="text-align: left; color: #FFFFFF;">3) Choose your sides and drinks:</h2>

        <div class="d-flex flex-row flex-wrap justify-content-center align-items-center">
            <span style="margin: 5px;"><a class="btn btn-primary" onclick="showSides()"><strong style="color: white">Sides</strong></a></span>
            <span style="margin: 5px;"><a class="btn btn-primary" onclick="showDrinks()"><strong style="color: white">Drinks</strong></a></span>
            <span style="margin: 5px;"><a class="btn btn-primary" onclick="showSpecial()"><strong style="color: white">Secret</strong></a></span>
        </div>

        <!-- Side -->

        <div class="side-container">
            <div class="d-flex flex-row justify-content-center align-items-center flex-wrap" id="sideCol">
                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Side'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_name}" class="side" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>

                    </c:if>

                </c:forEach>
            </div>
            <span><a class="btn btn-primary d-flex justify-content-center align-items-center"
                     style="background-color: #e520c7; margin: 0 auto; color: white; text-align: center;"
                     id="add-side"><strong>Add Side to Order</strong></a></span>
            <br>
        </div>

        <!-- Drinks -->
        <div class="drinks-container">
            <div class="d-none flex-row justify-content-center align-items-center flex-wrap" id="drinksCol">
                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Drink'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">
                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_name}" class="drink" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>

                    </c:if>

                </c:forEach>
            </div>
            <span><a class="btn btn-primary d-none justify-content-center align-items-center"
                     style="background-color: #e520c7; margin: 0 auto; color: white; text-align: center;"
                     id="add-drink"><strong>Add Drink to Order</strong></a></span>
            <br>
        </div>

        <!-- Special -->

        <div class="special-container">
            <div class="d-none flex-row justify-content-center align-items-center flex-wrap" id="specialCol">
                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Special'}">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <button class="btn btn-info" style="min-width: 100%;">${ingredient.ingredient_name}</button>
                                        </c:when>
                                        <c:otherwise>
                                            <button class="btn btn-info" style="min-width: 100%;" disabled>${ingredient.ingredient_name} Unavailable</button>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>$${ingredient.price}0</p>

                                    <c:choose>
                                        <c:when test="${ingredient.stock_level > 5}">
                                            <input id="${ingredient.ingredient_name}" class="special" type="checkbox"
                                                   name="${ingredient.ingredient_id}">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>

                    </c:if>

                </c:forEach>

            </div>
            <span><a class="btn btn-primary d-none justify-content-center align-items-center"
                     style="background-color: #e520c7; margin: 0 auto; color: white; text-align: center;"
                     id="add-special"><strong>Add Secret to Order</strong></a></span>
            <br>
        </div>
    </form>

    <!-- Order Summary -->

    <h2 id="choose-2" style="text-align: left; color: #FFFFFF;">4) Order Summary</h2>

    <form action="/process_order" method="post">
        <div class="order-container">
            <div class="row text-center" id="orderCol">


            </div>
            <span><button id="submit-order" class="btn btn-primary" type="submit"
                          style="display: block; width: 100%; background-color: #e520c7; margin: 0 auto; color: white; font-weight: 700;"
                          id="confirm-order" disabled>Confirm Order</button></span>
            <br>
        </div>
    </form>
</div>


<!-- ============ Sidebar animation script ============= -->
<script src="js/classie.js"></script>
<script>
    (function () {
        [].slice.call(document.querySelectorAll('.checkout')).forEach(function (el) {
            var openCtrl = el.querySelector('.checkout__button'),
                closeCtrls = el.querySelectorAll('.checkout__cancel');

            openCtrl.addEventListener('click', function (ev) {
                ev.preventDefault();
                classie.add(el, 'checkout--active');
            });

            [].slice.call(closeCtrls).forEach(function (ctrl) {
                ctrl.addEventListener('click', function () {
                    classie.remove(el, 'checkout--active');
                });
            });
        });
    })();
</script>

<!-- Bootstrap core JavaScript -->
<jsp:include page="footertags.jsp" />
<script type="text/javascript" src="js/orderpage.js"></script>

</body>
</html>