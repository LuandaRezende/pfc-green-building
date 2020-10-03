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
  <body style="padding-top: 72px;">
    <header class="header">
        <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
            
            <div class="d-flex align-items-center"> <a href="<c:url value="index.jsp"/>" claass="navbar-brand py-1"><h6>Green Building</h6></a><!--<img src="resources/img/logo.svg" alt="Directory logo">-->
            <form action="#" id="search" class="form-inline d-none d-sm-flex">
              <div class="input-label-absolute input-label-absolute-left input-reset input-expand ml-lg-2 ml-xl-3"> 
                <label for="search_search" class="label-absolute"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input id="search_search" placeholder="procurar" aria-label="procurar" class="form-control form-control-sm border-0 shadow-0 bg-gray-200">
                <button type="reset" class="btn btn-reset btn-sm"><i class="fa-times fas"></i></button>
              </div>
            </form>
          </div>
          <button type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div id="navbarCollapse" class="collapse navbar-collapse">
            <form action="#" id="searchcollapsed" class="form-inline mt-4 mb-2 d-sm-none">
              <div class="input-label-absolute input-label-absolute-left input-reset w-100">
                <label for="searchcollapsed_search" class="label-absolute"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input id="searchcollapsed_search" placeholder="procurar" aria-label="Procurar" class="form-control form-control-sm border-0 shadow-0 bg-gray-200">
                <button type="reset" class="btn btn-reset btn-sm"><i class="fa-times fas">           </i></button>
              </div>
            </form>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown"><a id="homeDropdownMenuLink" href="<c:url value="index.jsp"/>"ta-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle active">
                   
                  Início</a>
                <div aria-labelledby="homeDropdownMenuLink" class="dropdown-menu"><a href="<c:url value="index.jsp"/>" class="dropdown-item">Rooms</a><a href="<c:url value="index-2.jsp"/>" class="dropdown-item">Restaurants</a></div>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown position-static"><a href="<c:url value="#"/>" data-toggle="dropdown" class="nav-link dropdown-toggle">Menu</a>
                <div class="dropdown-menu megamenu py-lg-0">
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="row p-3 pr-lg-0 pl-lg-5 pt-lg-5">
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Materiais Sustentáveis</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a href="<c:url value="materiaislistado"/>" class="megamenu-list-link">Materiais   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="index-2.jsp"/>" class="megamenu-list-link">Lojas   </a></li>
                          </ul></div>
                          <!-- Megamenu list-->
                         
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Práticas Sustentáveis</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a href="<c:url value="category-rooms.jsp"/>" class="megamenu-list-link"> Dicas   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="category-2-rooms.jsp"/>" class="megamenu-list-link">Informações   </a></li>
                            </ul>
                         
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Inspirações pelo mundo</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a href="<c:url value="inspiracoes"/>" class="megamenu-list-link">CASA AQUA   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="#"/>" class="megamenu-list-link">ASTRID HILL   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="#"/>" class="megamenu-list-link">WILKKEL HOUSE   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="#"/>" class="megamenu-list-link">WAST HOUSE  <span class="badge badge-info ml-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="#"/>" class="megamenu-list-link">   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Usuário</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a href="<c:url value="login"/>" class="megamenu-list-link">Entrar   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="cadastroUsuario"/>" class="megamenu-list-link">Cadastrar  </a></li>
                          
                        </div>
                      </div>
                      <div class="row megamenu-services d-none d-lg-flex pl-lg-5">
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="<c:url value="#destination-map-1"/>"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Lojas de construção</h6>
                              <p class="mb-0 text-muted text-sm">Encontre a mais próxima</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="<c:url value="#money-box-1"/>"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Melhores preços</h6>
                              <p class="mb-0 text-muted text-sm">faça diferentes orçamentos</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="<c:url value="#customer-support-1"/>"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">(035) 3449-0000</h6>
                              <p class="mb-0 text-muted text-sm">suporte 24h x 7 dias na semana</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="<c:url value="#secure-payment-1"/>"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Contato seguro com a loja</h6>
                              <p class="mb-0 text-muted text-sm">compra confiável</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block"><img src="resources/img/photo/wikkelhouse.jpg" alt="" class="bg-image"></div>
                  </div>
                </div>
              </li>
            
              <li class="nav-item dropdown"><a id="docsDropdownMenuLink" href="<c:url value="login"/>" class="nav-link" >Entrar</a></li>
              
              <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a href="<c:url value="cadastroUsuario"/>" class="btn btn-primary">Cadastre-se</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
            
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
    <script src="resorces/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="resorces/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/js/theme.js"></script>
  </body>
</html>
