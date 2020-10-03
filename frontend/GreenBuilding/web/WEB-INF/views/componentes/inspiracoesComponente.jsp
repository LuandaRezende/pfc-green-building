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
        <section class="py-6 bg-white">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-primary">Outras casas sustentaveis para se admirar! </p>
            <h2>Inspire-se </h2>
          </div>
          
        </div>
        <div class="row">
          <div class="swiper-container guides-slider">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper pb-5">
              <!-- Slides-->
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="<c:url value="inspiracoes"/>" class="tile-link"></a><img src="resources/img/photo/casaaqua.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Casa Aqua</h6>
                    <p class="card-text text-sm">por Inovatech Engenharia (Brasil)</p>
                  </div>
                </div>
              </div>
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="<c:url value="inspiracoes2"/>" class="tile-link"></a><img src="resources/img/photo/astridhill.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Astrid Hill</h6>
                    <p class="card-text text-sm">por Tsao-McKown (Singapura)</p>
                  </div>
                </div>
              </div>
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="<c:url value="inspiracoes3"/>" class="tile-link"></a><img src="resources/img/photo/wikkelhouse.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Wikkelhouse</h6>
                    <p class="card-text text-sm">por Fiction Factory (Holanda) </p>
                  </div>
                </div>
              </div>
              <div class="swiper-slide h-auto px-2">
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="<c:url value="inspiracoes4"/>" class="tile-link"></a><img src="resources/img/photo/wastehouse.jpg" alt="Card image" class="bg-image">
                  <div class="card-body overlay-content">
                    <h6 class="card-title text-shadow text-uppercase">Waste House</h6>
                    <p class="card-text text-sm">por East Sussex BBM(Inglaterra)</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-pagination d-md-none"> </div>
          </div>
        </div>
      </div>
    </section>

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
