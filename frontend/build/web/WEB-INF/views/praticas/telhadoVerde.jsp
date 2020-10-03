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
            <h1 class="hero-heading mb-3">Telhado verde</h1>
          </div>
              <!-- Additional required wrapper-->
              <div class="swiper-wrapper">
                  
                <!-- Slides-->
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/telhadoverde1.jpg" alt="Our street" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;"  src="resources/img/photo/telhadoverde2.png" alt="Outside" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/telhadoverde3.jpg" alt="Rear entrance" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/telhadoverde4.jpg" alt="Kitchen" class="img-fluid"></div>
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
              <h4 >Primeiro passo - Preparação da laje de cobertura:</h4>
                <p class="lead">
                    Antes de dar início à construção propriamente dita do seu telhado verde é importante preparar sua edificação para isso. Será necessário ter em sua laje de cobertura ralos para captação da água da chuva que for drenada.
                    <br>
                    Para uma boa captação a superfície da laje de cobertura deverá ter uma inclinação que possibilite o escoamento de toda água drenada. Esta inclinação deve ser de no mínimo 1,5%.
                </p>
              <hr class="my-4">
                <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h4>Segundo passo - Impermeabilização da superfície da laje</h4>
              <p class="lead">
              O segundo passo para a construção de seu telhado ecológico é a impermeabilização da superfície do seu telhado. Ou seja, será necessário impermeabilizar a sua laje.
              <br>
              Existem inúmeras maneiras de fazer esta impermeabilização, a mais comum é utilizar a impermeabilização com manta asfáltica. Durante a aplicação da manta asfáltica deve-se tomar muito cuidado com os cantos e encontros com ralos e qualquer outro elemento.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h4>Terceiro passo - Camada de material granular para auxiliar escoamento: </h4>
              <p class="lead">
              O próximo passo é a criação de uma camada de material granular de cerca de 7 a 10 centímetros. Esta camada de material granular funciona como um fundo drenante e também colabora para que o fundo da laje se mantenha arejado.
              <br>
              Na maioria dos casos é utilizado a argila expandida como material granular. Em especial por ser um material leve, o que alivia o peso sobre a laje de cobertura.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h4>Quarto passo - Aplicação de manta geotêxtil:</h4>
              <p class="lead">
              O quarto passo sobre como construir um telhado verde é a aplicação de uma manta geotêxtil sobre a camada de material granular.
              <br>
              Esta manta geotêxtil servirá como um filtro, permitindo que a água da chuva passe e seja drenada e impedindo que o substrato utilizado para as plantas escoe junto da água.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h4>Quinto passo - Camada de substrato:</h4>
              <p class="lead">
              Em seguida é lançada uma camada de substrato, que é a terra própria para receber as plantas do telhado verde.
              <br>
              Esta camada deve ter cerca de 10 centímetros e permitir que as plantas se desenvolvam com qualidade. Na maioria dos casos é utilizada a terra vegetal, ou terra preta adubada.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h4>Sexto passo - Instalação das plantas do telhado verde:</h4>
              <p class="lead">
              O próximo passo de como construir um telhado verde é a instalação das plantas escolhidas para o telhado verde. O bom uso do telhado verde depende muito das plantas que serão plantadas.
              <br>
              Dê preferência por gramíneas e plantas que tenham um tamanho pequeno.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h1 class="display-4">Sétimo passo - Manutenção do telhado verde:</h1>
              <p class="lead">
              O último passo é a manutenção que um telhado verde exige. Por exemplo, um você deverá eliminar todas as plantas invasoras que surgirem ao longo do tempo e até mesmo irrigar seu telhado em períodos muito secos.
              <br>
              É válido inspecionar o funcionamento da sua drenagem para que você não tenha problemas com a estrutura da sua edificação.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h1 class="display-4">Vantagens e cuidados de seu telhado ecológico</h1>
              <p class="lead">
              Uma das principais vantagens de ter um telhado verde é sua diferenciação estética em relação às residências vizinhas. Além disso, este tipo de telhado proporciona um melhor conforto térmico e acústico da residência.
              <br>
              Por aumentar a área verde é também considerado um telhado ecológico.
              <br>
              Mas, para obter as vantagens do telhado verde é necessário estar atento a detalhes importantes como uma estrutura adequado, boa impermeabilização e uma drenagem sempre em bom funcionamento.
              <br>
              Além disso, o controle de plantas indesejadas deve ser realizado rotineiramente. Este controle tem como objetivo evitar o crescimento de plantas maiores do que foram previstas inicialmente, o que aumentaria a carga no telhado.
              </p>
              <hr class="my-4">
              <p>Passo a passo de construção de telhado verde</p>
             
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
