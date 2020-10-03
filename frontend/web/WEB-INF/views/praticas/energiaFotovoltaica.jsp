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
            <h1 class="hero-heading mb-3">Energia Solar</h1>
          </div>
              <!-- Additional required wrapper-->
              <div class="swiper-wrapper">
                  
                <!-- Slides-->
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/es1.jpg" alt="Our street" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/es3.jpg" alt="Rear entrance" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/es4.jpg" alt="Kitchen" class="img-fluid"></div>
                <div class="swiper-slide"><img style="height:600px;" src="resources/img/photo/es5.jpg" alt="Kitchen" class="img-fluid"></div>
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
              <h4 >Principais vantagens e desvantagens da energia solar</h4>
                <p class="lead text-justify">
                    Além do uso progressivo da energia solar residencial, existe cada vez mais a sua utilização na produção de energia elétrica a grande escala através de parques e usinas solares, em todo o mundo.  <br>
                    <br>
                    A energia solar é a energia produzida pelo Sol e é convertida em energia útil por seres humanos, quer para a produção de electricidade ou de calor algo (como as suas principais aplicações). Anualmente, o Sol produz 4 milhões de vezes mais energia do que consumimos, para o seu potencial é ilimitado.
                    <br>
                    <br>
                    Para se ter uma ideia, em apenas um segundo o sol produz mais energia (internamente) que toda energia usada pela humanidade desde o começo dos tempos.
                    <br>
                    <br>
                    Uma outra forma de se exprimir esta imensa grandeza energética, basta dizer que a energia que a terra recebe por ano vinda do sol, representa mais que 15000 vezes o consumo mundial anual de energéticos.
                    <br>
                    <br>
                    15% da energia emitida pelo sol que chega a terra é reflectida de volta para o espaço. Outros 30% são perdidos na evaporação da água a qual sobe para a atmosfera produzindo chuva. A energia solar é também absorvida pelas plantas, pela terra e oceanos. A energia restante, para manter o equilíbrio energético do planeta, deve então ser emitida sob a forma de radiação térmica.
                    <br>
                    <br>
                    Considerando que a energia solar está disponível de forma absolutamente gratuita, pergunta-se por que é seu aproveitamento ainda é tão limitado? O problema é que a energia solar apresenta-se sob a forma disseminada e a sua captação, pelo menos para potências elevadas, requer instalações complexas e dispendiosas.
                    <br>
                    <br>
                    O aproveitamento da energia solar poderá em teoria e a longo prazo tornar-se como a grande solução para todos os problemas energéticos da nossa sociedade, apesar de todas as vantagens aparentes possui também desvantagens no decorrer do seu aproveitamento.
                </p>
              <hr class="my-4">
                <p>Passo a passo de construção de telhado verde</p>
             
              </div>
              <div class="jumbotron">
              <h4>Vantagens da energia solar</h4>
              
              <ul>
                  <li class="lead text-justify">
                      A energia solar não polui durante seu uso. A poluição decorrente da fabricação dos equipamentos necessários para a construção dos painéis solares é totalmente controlável utilizando as formas de controlo existentes actualmente. 
                  </li>
                  <li class="lead text-justify">
                      As centrais necessitam de manutenção mínima.
                  </li>
                  <li class="lead text-justify">
                      Os painéis solares são a cada dia mais potentes ao mesmo tempo que seu custo vem decaindo. Isso torna cada vez mais a energia solar uma solução economicamente viável. Saiba qual o tempo de vida útil dos painéis solares fotovoltaicos.
                  </li>
                  <li class="lead text-justify">
                      A energia solar é excelente em lugares remotos ou de difícil acesso, pois sua instalação em pequena escala não obriga a enormes investimentos em linhas de transmissão.
                  </li>
                  <li class="lead text-justify">
                      Em países tropicais, como o Brasil, a utilização da energia solar é viável em praticamente todo o território, e, em locais longe dos centros de produção energética sua utilização ajuda a diminuir a procura energética nestes e consequentemente a perda de energia que ocorreria na transmissão.
                  </li>
                  
              </ul><p class="lead">

              <hr class="my-4">
              <p>Vantagens</p>
             
              </div>
              <div class="jumbotron">
              <h4>Desvantagens da energia solar</h4>
              <ul>
                    <li class="lead text-justify">
                     Existe variação nas quantidades produzidas de acordo com a situação climatérica (chuvas, neve), além de que durante a noite não existe produção alguma, o que obriga a que existam meios de armazenamento da energia produzida durante o dia em locais onde os painéis solares não estejam ligados à rede de transmissão de energia.
                    </li>
                    <li class="lead text-justify">
                     Locais em latitudes médias e altas (Ex: Finlândia, Islândia, Nova Zelândia e Sul da Argentina e Chile) sofrem quedas bruscas de produção durante os meses de Inverno devido à menor disponibilidade diária de energia solar. Locais com frequente cobertura de nuvens (Londres), tendem a ter variações diárias de produção de acordo com o grau de nebulosidade.   
                    </li>
                    <li class="lead text-justify">
                        As formas de armazenamento da energia solar são pouco eficientes quando comparadas por exemplo aos combustíveis fósseis (carvão, petróleo e gás), e a energia hidroeléctrica (água).
                    </li>
                    <li class="lead text-justify">
                        Os painéis solares têm um rendimento de apenas 25%, apesar deste valor ter vindo a aumentar ao longo dos anos.
                    </li>
                </ul>  
              <hr class="my-4">
              <p>Desvantagens</p>
             
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
