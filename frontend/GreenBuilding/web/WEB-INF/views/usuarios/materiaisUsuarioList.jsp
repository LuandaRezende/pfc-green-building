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
        <link rel="stylesheet" href="<c:url value="/resources/vendor/nouislider/nouislider.css"/>">
        <!-- Google fonts - Playfair Display-->
        <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700"/>">
        <!-- Google fonts - Poppins-->
        <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700"/>">
        <!-- swiper-->
        <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css"/>">
        <!-- Magnigic Popup-->
        <link rel="stylesheet" href="<c:url value="/resources/vendor/magnific-popup/magnific-popup.css"/>">
        <!-- Leaflet Maps-->
        <link rel="stylesheet" href="<c:url value="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css"/>" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin="">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.default.css"/>" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
        <!-- Favicon-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.png"/>">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="<c:url value="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page = "/WEB-INF/views/componentes/cabecalhoInicio.jsp" />
   
       
<div class="container-fluid pt-5 pb-3 border-bottom px-lg-5">
            <div class="row">
                <div class="col-xl-8">
                    <h1>Stay on Manhattan, NY    </h1>
                    <p class="lead text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
                </div>
            </div>
        </div>
        <div class="container-fluid py-5 px-lg-5">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">

                    <div class="row">

                        <!-- place item-->
                        <c:forEach var="anuncia" items="${anunciaList}">
                            <div data-marker-id="59c0c8e3503eb77d487e8082" class="col-sm-6 col-xl-4 mb-5">
                                <div class="card h-100 border-0 shadow">
                                    <div class="card-img-top overflow-hidden gradient-overlay" id="material" name="Fk_material_id" data-toggle="modal" data-target="#ExemploModalCentralizado"><c:forEach var="material" items="${materiais}">
                                            <c:if test="${material.id == anuncia.fk_material_id}"><img src="${material.imagem}" class="img-fluid"/></c:if>
                                        </c:forEach> 
                                      
                                        <div class="card-img-overlay-bottom z-index-20">
                                            <div class="media text-white text-sm align-items-center"><a href="https://wa.me/5535998647827"><img src="/resources/img/avatar/wpp.png" alt="Barbora" class="avatar avatar-border-white mr-2"></a> 
                                                
                                            </div>
                                        </div>
                                        <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                                                <svg class="svg-icon text-white">
                                                <use xlink:href="<c:url value="#heart-1"/>"> </use>
                                                </svg></a></div>
                                    </div>
                                    <div class="card-body d-flex align-items-center">
                                        <div class="w-100">
                                            <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark" id="material" name="Fk_material_id"><c:forEach var="material" items="${materiais}">
                                                        <c:if test="${material.id == anuncia.fk_material_id}">${material.nome}</c:if>
                                                    </c:forEach></a></h6>
                                            <div class="d-flex card-subtitle mb-3">
                                                <p class="flex-grow-1 mb-0 text-muted text-sm">Shared room</p>
                                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                                </p>
                                            </div>
                                            <p class="card-text text-muted"><span class="h4 text-primary">R$ ${anuncia.valor},00 </span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                        
                       
                    </div>
                </div>
                            <div class="col-lg-2"></div>
            </div>
            </div>





            <jsp:include page = "/WEB-INF/views/componentes/footerLojista.jsp" />
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
                    ajax.onload = function (e) {
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
            <script src="/resources/vendor/jquery/jquery.min.js"></script>
            <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
            <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Magnific Popup - Lightbox for the gallery-->
            <script src="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
            <!-- Smooth scroll-->
            <script src="/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
            <!-- Bootstrap Select-->
            <script src="/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
            <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
            <script src="/resources/vendor/object-fit-images/ofi.min.js"></script>
            <!-- Swiper Carousel                       -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
            <script>var basePath = ''</script>
            <!-- Main Theme JS file    -->
            <script src="/resources/js/theme.js"></script>
    </body>
</html>

