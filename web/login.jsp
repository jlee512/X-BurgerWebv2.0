<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
      
        <link rel="stylesheet" href="/css/main.css" media="screen" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/css/loginstyle.css">
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/css/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="" type="image/x-icon"> <!-- Add burger icon-->
    </head>
    <body>

    <c:if test="${loginStatus == 'active'}">
        <c:redirect url="/order"/>
    </c:if>

    <p>${loginStatus}</p>

<!--======= Start Nav ==========-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="/images/logo-transparent.png" width="100" height="60">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
            <a class="nav-link" href="/indexxburger.jsp">HOME |</a>
              
            </li>
            <li class="nav-item">
              <a class="nav-link" href="orderpage.jsp#">ORDER |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp#">LOGIN |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="indexxburger.jsp#about">ABOUT |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="indexxburger.jsp#contact">CONTACT |</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">HISTORY</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

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
        <li><a href="#up" onclick="sign_up()" id="signup">SIGN UP</a><span class="linea_bajo_nom"></span>
        </li>
      </ul>
      </div>
  <div class="cont_text_inputs">
      <input type="text" class="input_form_sign " placeholder="NAME" name="name_us" />

      <input type="hidden" class="input_form_sign " placeholder="NAME" name="username" value="" />

      <input type="text" class="input_form_sign d_block active_inp" placeholder="EMAIL" name="email" />

    <input type="password" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" name="password" />
    <input type="password" class="input_form_sign" placeholder="CONFIRM PASSWORD" name="conf_pass_us" />
    
    </div>
      </div>
<div class="cont_btn">
     <button class="btn_sign">SIGN IN</button>
      
      </div>
      
    </form>
    </div>
    
  </div>
  


  
    <script  src="js/loginjs.js"></script>


        <!-- ============ Footer Section  ============= -->

        <footer class="sub_footer">
            <div class="container">
            
                <div class="col-md-4"><p class="sub-footer-text text-center">Built By <a href="#" target="_blank">Team Extreme</a></p></div>
            </div>
        </footer>
 
        <script type="text/javascript" src="/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="/js/main.js" ></script>
        <!-- Bootstrap core JavaScript -->
        <script src="/jquery/jquery.min.js"></script>
        <script src="/js/bootstrap.bundle.min.js"></script>
        <script src="/js/loginjs.js"></script>

    </body>
</html>