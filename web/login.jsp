<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <jsp:include page="headertags.jsp"/>

    <link rel="stylesheet" href="css/loginstyle.css">
</head>
<body>

<c:if test="${loginStatus == 'active'}">
    <c:redirect url="/order"/>
</c:if>

<p>${loginStatus}</p>

<!--======= Start Nav ==========-->
<jsp:include page="navbar.jsp"/>

<!--======= Login ==========-->

<div class="cont_principal">

    <div class="cont_centrar">
        <div class="cont_login">
            <form id="loginform" action="/login_validation" method="post">
                <div class="cont_tabs_login">
                    <ul class='ul_tabs'>
                        <li class="active"><a href="#" onclick="sign_in()" id="signin">SIGN IN</a>
                            <span class="linea_bajo_nom"></span>
                        </li>
                        <li><a href="#up" onclick="sign_up()" id="signup">SIGN UP</a><span
                                class="linea_bajo_nom"></span>
                        </li>
                    </ul>
                </div>
                <div class="cont_text_inputs">
                    <input type="text" class="input_form_sign " placeholder="NAME" name="name_us"/>

                    <input type="text" class="input_form_sign d_block active_inp" placeholder="EMAIL" name="email"/>

                    <input type="password" id="pass" class="input_form_sign d_block  active_inp" placeholder="PASSWORD"
                           name="pass_us"/>
                    <input type="password" class="input_form_sign d_block" placeholder="CONFIRM PASSWORD"
                           name="conf_pass_us"/>
                    <label type="text" id="meter" class="input_form_sign d_block" placeholder="PASSWORD" name="pass_us"
                    />
                    <span id="pass_type"></span>
                </div>


                <div class="cont_btn">
                    <button class="btn_sign">SIGN IN</button>

                </div>

            </form>
        </div>

    </div>
</div>


<script src="js/loginjs.js"></script>


<!-- ============ Footer Section  ============= -->
<jsp:include page="footertags.jsp"/>
<script src="/js/loginjs.js"></script>
<script src="js/checkpass.js"></script>

</body>
</html>