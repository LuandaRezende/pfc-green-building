<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Green Building</title>

        <!-- Bootstrap -->
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

        <!-- Business Casual -->
        <link href="<c:url value="/resources/css/business-casual.css"/>" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="<c:url value="resource/js/html5shiv.min.js"/>"</script>
          <script src="<c:url value="resource/js/respond.min.js"/>"</script>
        <![endif]-->
        <!-- Fonts -->
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"/>" rel="stylesheet" type="text/css">

    </head>
    <body>
        <jsp:include page = "/WEB-INF/views/componentes/menuInicial.jsp" />
         <nav class="fh5co-nav-style-1 ">
            <div class="container-fluid">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 fh5co-logo">
                    <!--<a href="#" class="js-fh5co-mobile-toggle fh5co-nav-toggle"><i></i></a>-->
                    <a href="/GreenBuilding/index.jsp"><h3 style="color:#000\9" class="cover-text-lead wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInUp;">Green Building</h3></a>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>


        <div class="container">
            <div class="row">

                <form method="POST">
                    <div class="panel col-md-6 ">
                        <div class="panel-body">

                            <div class="form-group ">
                                <p  class="h3 text-left" style="color:#000000"><font size="6" face="Impact, Charcoal, sans-serif">Cadastrar</font></p>
                                <label for="exampleInputEmail1">E-mail para login</label>
                                <input type="text" class="form-control" id="emailLoja" name="emailLoja" aria-describedby="emailHelp">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Senha</label>
                                <input type="text" class="form-control" id="senha" name="senha" type="password" id="senha">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Confirmar senha</label>
                                <input type="text" class="form-control" id="confirmarSenha" name="confirmarSenha" type="password" id="senha">
                            </div>            
                            <div class="form-group form-check">
                                <input type="checkbox" id="tipo" name="tipo" class="form-check-input" id="exampleCheck1">
                            </div>
                            <div class="form-group form-check">
                                <input type="checkbox" id="situacao" name="situacao" class="form-check-input" id="exampleCheck1">
                            </div>
                            <button type="submit" class="btn btn-primary" onclick="funcao1()">Cadastrar usuario</button>

                        </div>
                    </div>
                    <div class="panel col-md-6 ">
                        <div class="panel-body">
                            <p class="h3 text-left" style="color:#666666"><font size="18" face="Impact, Charcoal, sans-serif">A SUA CONTA GLOBAL <br>DÁ-LHE ACESSO A:</font></p>
                            <br>
                            <ul class="list-unstyled">
                                <li>

                                    <span class="glyphicon glyphicon-ok"><font size="4" face="arial"> Uma única conta global para anúnciar <br>todos os materiais sustentáveis da sua loja</font></span>  
                                    <br>
                                    <br>
                                    <span class="glyphicon glyphicon-ok"> <font size="4" face="arial"> Você receberá 1 MÊS GRÀTIS para poder se <br>adaptar a essa nova plataforma inovadora! </span>  
                                    <br>
                                    <br>
                                    <span class="glyphicon glyphicon-ok"> <font size="4" face="arial"> Adicionar ou alterar as preferências de email</span>  
                                    <br>
                                    <br>
                                </li>
                                <br>
                                <br>

                            </ul>
                        </div>

                    </div>
                </form>
            </div>

        </div>

        <script>
            function funcao1()
            {
                var x;
                var r = confirm("PARABÉNS, VOCÊ GANHOU UM MÊS GRATIS PARA UTILIZAR NOSSO SISTEMA");
                if (r == true)
                {
                    x = "você pressionou OK!";
                } else
                {
                    x = "Você pressionou Cancelar!";
                }
                document.getElementById("demo").innerHTML = x;
            }
        </script>


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>               
    </body>
</html>--%>

<%-- 
    Document   : signup
    Created on : 24/08/2019, 17:13:13
    Author     : Caio Zeurgo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="<c:url value="resources/vendor/nouislider/nouislider.css"/>">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700"/>">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700"/>">
    <!-- swiper-->
    <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css"/>">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="<c:url value="resources/vendor/magnific-popup/magnific-popup.css"/>">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<c:url value="resources/css/style.default.css"/>" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<c:url value="resources/css/custom.css"/>">
    <!-- Favicon-->
    <link rel="shortcut icon" href="<c:url value="resources/img/favicon.png"/>">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="<c:url value="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  </head>
  <body>
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xl-6 position-relative">
            <div class="mb-4"><img alt="" style="max-width: 4rem;" class="img-fluid mb-4">
              <h2>Cadastre-se</h2>
            </div>
            <form class="form-validate" method="POST">
              <div class="form-group">
                <label for="exampleInputEmail1" class="form-label"> Endereço de e-mail</label>
                <input name="emailLoja" id="emailLoja" type="email" placeholder="nome@mail.com" autocomplete="off" required data-msg="Por favor entre com e-mail" class="form-control">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1" class="form-label"> Senha</label>
                <input name="senha" id="senha" placeholder="senha" type="password" required data-msg="Por favor entre com sua senha" class="form-control">
              </div>
              <div class="form-group mb-4">
                <label for="V" class="form-label"> Confirme sua senha</label>
                <input name="confirmarSenha" id="confirmarSenha" placeholder="senha" type="password" required data-msg="Por favor entre com sua senha" class="form-control">
              </div>
              <button type="submit" class="btn btn-lg btn-block btn-primary">Cadastrar</button>
              <hr data-content="OU" class="my-3 hr-text letter-spacing-2">
              <button class="btn btn btn-outline-primary btn-block btn-social mb-3"><i class="fa-2x fa-facebook-f fab btn-social-icon"> </i>Conecte <span class="d-none d-sm-inline">com o Facebook</span></button>
              <button class="btn btn btn-outline-muted btn-block btn-social mb-3"><i class="fa-2x fa-google fab btn-social-icon"> </i>Conecte <span class="d-none d-sm-inline">com o Google</span></button>
              <hr class="my-4">
              <p class="text-sm text-muted">Cadastrando-se você concorda com <a href="<c:url value="#"/>">Termos e condições</a> e <a href="<c:url value="#"/>">Política de privacide</a>.</p>
            </form><a href="<c:url value="index.jsp"/>" class="close-absolute mr-md-5 mr-xl-6 pt-5"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="<c:url value="#close-1"/>"> </use>
              </svg></a>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div style="background-image: url(resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg);" class="bg-cover h-100 mr-n3"></div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-1/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/js/theme.js"></script>
  </body>
</html>
