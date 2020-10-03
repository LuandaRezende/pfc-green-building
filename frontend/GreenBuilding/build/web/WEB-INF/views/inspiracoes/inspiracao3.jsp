<%-- 
    Document   : user-booking-detail
    Created on : 24/08/2019, 17:20:37
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
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="<c:url value="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css"/>" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin="">
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
    <jsp:include page = "/WEB-INF/views/componentes/cabecalhoInicio.jsp" />
    <div class="container-fluid">               
      <div class="row">
        <div class="col-lg-12 col-xl-12 ">
          <section class="mx-n4 mx-xl-n5 mb-4 mb-xl-5">
              
            <!-- Slider main container-->
            <div class="swiper-container booking-detail-slider">
                
                <div class="text-block text-center"><br><br>
            <p class="subtitle">21 de outubro de 2019</p>
            <h1 class="hero-heading mb-3">Wikkelhouse</h1>
          </div>
              <!-- Additional required wrapper-->
              <div class="swiper-wrapper">
                  
                <!-- Slides-->
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/wikkelhouse.jpg" alt="Our street" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;"  src="resources/img/photo/wikkelhouse2.jpg" alt="Outside" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/wikkelhouse3.jpg" alt="Rear entrance" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/wikkelhouse4.jpg" alt="Kitchen" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/wikkelhouse5.jpg" alt="Bedroom" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/wikkelhouse6.jpg" alt="Bedroom" class="img-fluid"></div>
              </div>
              <div class="swiper-pagination swiper-pagination-white"></div>
              <div class="swiper-button-prev swiper-button-white"></div>
              <div class="swiper-button-next swiper-button-white">   </div>
            </div>
          </section>
          <!-- Breadcrumbs -->
          <div class="container">
          <div class="text-block">
              
              <div class="jumbotron">
              <h1 class="display-4">Wikkelhouse</h1>
              <p class="lead">O estúdio holandês Fiction Factory criou uma casa sustentável, feita majoritariamente com papelão, que pode ser montada em apenas um dia. A Wikkelhouse promete ser durável e adaptável, tem vida útil de pelo menos 50 anos e pode ser colocada em qualquer ambiente – na praia, na beira de rios, no interior de um barco e até no topo de um prédio. A habitação é feita a partir de 24 camadas de papelão coladas com um material de alta resistência que formam blocos de 1,2 metros de largura. Quantos mais blocos forem usados, maior a casa. O tamanho e o formato são definidos pelo cliente, as paredes são revestidas externamente com madeira para deixar a estrutura mais sólida, já no interior, o revestimento é personalizado. A finalização garante que a casa seja resistente às chuvas, ao frio e a outras condições naturais. A empresa garante que as árvores cortadas para construir as casas são substituídas por novas.</p>
              <hr class="my-4">
              <p>Construida por Fiction Factory</p>
             
              </div>
          </div>
          </div>
          </div>
          </div>
          </div>
          
           <jsp:include page = "/WEB-INF/views/componentes/inspiracoesComponente.jsp" />
         <footer> 
      <!-- Copyright section of the footer-->
      <div class="py-4 font-weight-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-left">
              <p class="text-sm mb-md-0">&copy; 2019 Your company.  All rights reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-right">
                <li class="list-inline-item"><img src="resources/img/visa.svg" alt="..." class="w-2rem"></li>
                <li class="list-inline-item"><img src="resources/img/mastercard.svg" alt="..." class="w-2rem"></li>
                <li class="list-inline-item"><img src="resources/img/paypal.svg" alt="..." class="w-2rem"></li>
                <li class="list-inline-item"><img src="resources/img/western-union.svg" alt="..." class="w-2rem"></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- /Footer end-->
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
    <!-- Map-->
    <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js" integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA==" crossorigin=""></script>
    <script src="resources/js/map-detail.js">                               </script>
    <script>
      createDetailMap({
          mapId: 'detailSideMap',
          mapZoom: 18,
          mapCenter: [40.732346, -74.0014247],
          markerShow: true,
          markerPosition: [40.732346, -74.0014247],
          markerPath: 'img/marker.svg',
      })                  
    </script>
  </body>
</html>
