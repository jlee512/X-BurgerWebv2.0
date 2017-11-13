<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="main.java.entity.Stock" %>
<%@ page import="java.util.ArrayList" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Order</title>


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

<jsp:include page="navbar.jsp" />

<!-- ============ Ingredients Grid ============= -->

<!-- ============ Premade ============= -->

<div class="container" id="portfolio">


    <!-- ============ Order Sidebar ============= -->

    <!--- Start order grid -->


    <h2 id="choose">1) Choose a burger:</h2>

    <div class="row text-center" style="display: inline-block">

        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#">
                        <img src="images/white.jpg" class="img-thumbnail img-responsive">
                    </a>
                </div>
                <div class="panel-footer">
                    <p>Plain</p>
                    <input id="radio-hamburger" type="radio" name="burger-preset">
                </div>

            </div>
        </div>

        <div class="col-lg-2 col-sm-3 col-xs-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="#">
                        <img src="images/hamburger.jpg" class="img-thumbnail img-responsive">
                    </a>
                </div>
                <div class="panel-footer">
                    <p>Hamburger</p>
                    <input id="radio-plain" type="radio" name="burger-preset">
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
                    <p>Cheeseburger</p>
                    <input id="radio-cheeseburger" type="radio" name="burger-preset">
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
                    <p>Pork Burger</p>
                    <input id="radio-porkburger" type="radio" name="burger-preset">
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
                    <p>Chicken Burger</p>
                    <input id="radio-chickenburger" type="radio" name="burger-preset">
                </div>
            </div>
        </div>
    </div>

    <!--Create own-->

    <h2 id="choose">2) Or create your own:</h2>

    <div class="btn-group btn-group-justified">
        <span><a class="btn btn-primary" onclick="showBun()">Bun</a></span>
        <span><a class="btn btn-primary" onclick="showBeef()">Meat</a></span>
        <span><a class="btn btn-primary" onclick="showCheese()">Cheese</a></span>
        <span><a class="btn btn-primary" onclick="showSalad()">Salad</a></span>
        <span><a class="btn btn-primary" onclick="showSauce()">Sauce</a></span>
    </div>

    <%--start bun--%>

    <form>

        <div class="burger-container">
        <div class="row text-center" id="bunCol">

            <c:forEach items="${all_stock}" var="ingredient">

                <c:if test="${ingredient.category == 'Bread'}">

                    <div class="col-lg-2 col-sm-3 col-xs-4">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                            </div>
                            <div class="panel-footer">
                                <p>${ingredient.ingredient_name}</p>
                                <input id="${ingredient.ingredient_id}" class="burger" type="radio" name="${ingredient.category}">
                            </div>

                        </div>
                    </div>

                </c:if>

            </c:forEach>

        </div>

        <!-- Meat -->

        <div class="row text-center" id="beefCol">

            <c:forEach items="${all_stock}" var="ingredient">

                <c:if test="${ingredient.category == 'Meat'}">

                    <div class="col-lg-2 col-sm-3 col-xs-4">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                            </div>
                            <div class="panel-footer">
                                <p>${ingredient.ingredient_name}</p>
                                <input id="${ingredient.ingredient_id}" class="burger" type="checkbox" name="${ingredient.ingredient_id}">
                            </div>

                        </div>
                    </div>

                </c:if>

            </c:forEach>

        </div>

        <!-- Cheese -->

        <div class="row text-center" id="cheeseCol">

            <c:forEach items="${all_stock}" var="ingredient">

                <c:if test="${ingredient.category == 'Cheese'}">

                    <div class="col-lg-2 col-sm-3 col-xs-4">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                            </div>
                            <div class="panel-footer">
                                <p>${ingredient.ingredient_name}</p>
                                <input id="${ingredient.ingredient_id}" class="burger" type="checkbox" name="${ingredient.ingredient_id}">
                            </div>

                        </div>
                    </div>

                </c:if>

            </c:forEach>

        </div>

        <!-- Salad -->


        <div class="row text-center" id="saladCol">

            <c:forEach items="${all_stock}" var="ingredient">

                <c:if test="${ingredient.category == 'Salad'}">

                    <div class="col-lg-2 col-sm-3 col-xs-4">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                            </div>
                            <div class="panel-footer">
                                <p>${ingredient.ingredient_name}</p>
                                <input id="${ingredient.ingredient_id}" class="burger" type="checkbox" name="${ingredient.ingredient_id}">
                            </div>

                        </div>
                    </div>

                </c:if>

            </c:forEach>

        </div>
        <!-- Sauce -->

        <div class="row text-center" id="sauceCol">
            <c:forEach items="${all_stock}" var="ingredient">

                <c:if test="${ingredient.category == 'Sauce'}">

                    <div class="col-lg-2 col-sm-3 col-xs-4">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                            </div>
                            <div class="panel-footer">
                                <p>${ingredient.ingredient_name}</p>
                                <input id="${ingredient.ingredient_id}" class="burger" type="checkbox" name="${ingredient.ingredient_id}">
                            </div>

                        </div>
                    </div>

                </c:if>

            </c:forEach>

        </div>

            <span><a class="btn btn-primary" style="display: block; width: 20%; background-color: #e520c7; margin: 0 auto; color: white;" id="add-burger"><strong>Add Burger to Order</strong></a></span>
            <br>
        </div>


        <h2 id="choose-2" style="text-align: left; color: #FFFFFF;">3) Choose your sides and drinks:</h2>

        <div class="btn-group btn-group-justified">
            <span><a class="btn btn-primary" onclick="showSides()">Sides</a></span>
            <span><a class="btn btn-primary" onclick="showDrinks()">Drinks</a></span>
            <span><a class="btn btn-primary" onclick="showSpecial()">Secret</a></span>
        </div>

        <!-- Side -->

        <div class="side-container">
        <div class="row text-center" id="sideCol">
            <c:forEach items="${all_stock}" var="ingredient">

                <c:if test="${ingredient.category == 'Side'}">

                    <div class="col-lg-2 col-sm-3 col-xs-4">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                            </div>
                            <div class="panel-footer">
                                <p>${ingredient.ingredient_name}</p>
                                <input id="${ingredient.ingredient_id}" class="side" type="checkbox" name="${ingredient.ingredient_id}">
                            </div>

                        </div>
                    </div>

                </c:if>

            </c:forEach>
        </div>
            <span><a class="btn btn-primary" style="display: block; width: 20%; background-color: #e520c7; margin: 0 auto; color: white;" id="add-side"><strong>Add Side to Order</strong></a></span>
            <br>
        </div>

            <!-- Drinks -->
            <div class="drinks-container">
            <div class="row text-center" id="drinksCol">
                <c:forEach items="${all_stock}" var="ingredient">

                    <c:if test="${ingredient.category == 'Drink'}">

                        <div class="col-lg-2 col-sm-3 col-xs-4">
                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                </div>
                                <div class="panel-footer">
                                    <p>${ingredient.ingredient_name}</p>
                                    <input id="${ingredient.ingredient_id}" class="drink" type="checkbox" name="${ingredient.ingredient_id}">
                                </div>

                            </div>
                        </div>

                    </c:if>

                </c:forEach>
            </div>
                <span><a class="btn btn-primary" style="width: 20%; background-color: #e520c7; margin: 0 auto; color: white;" id="add-drink" ><strong>Add Drink to Order</strong></a></span>
                <br>
            </div>

                <!-- Special -->

                <div class="special-container">
                <div class="row text-center" id="specialCol">
                    <c:forEach items="${all_stock}" var="ingredient">

                        <c:if test="${ingredient.category == 'Special'}">

                            <div class="col-lg-2 col-sm-3 col-xs-4">
                                <div class="panel panel-default">
                                    <div class="panel-body">

                                        <img src="${ingredient.img_file_name}" class="img-thumbnail img-responsive">

                                    </div>
                                    <div class="panel-footer">
                                        <p>${ingredient.ingredient_name}</p>
                                        <input id="${ingredient.ingredient_id}" class="special" type="checkbox" name="${ingredient.ingredient_id}">
                                    </div>

                                </div>
                            </div>

                        </c:if>

                    </c:forEach>

                </div>
                    <span><a class="btn btn-primary" style="width: 20%; background-color: #e520c7; margin: 0 auto; color: white;" id="add-special" ><strong>Add Special to Order</strong></a></span>
                    <br>
                </div>
    </form>
</div>

<form>
<div id="order_items" style="display: none;">

</div>
</form>


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
<script src="/jquery/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/orderpage.js"></script>

</body>
</html>