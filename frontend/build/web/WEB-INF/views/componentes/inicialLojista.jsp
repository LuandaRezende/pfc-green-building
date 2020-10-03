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
        <link rel="stylesheet" href="<c:url value="../resources/vendor/nouislider/nouislider.css"/>">
        <!-- Google fonts - Playfair Display-->
        <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700"/>">
        <!-- Google fonts - Poppins-->
        <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700"/>">
        <!-- swiper-->
        <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css"/>">
        <!-- Magnigic Popup-->
        <link rel="stylesheet" href="<c:url value="../resources/vendor/magnific-popup/magnific-popup.css"/>">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="<c:url value="../resources/css/style.default.css"/>" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="<c:url value="../resources/css/custom.css"/>">
        <!-- Favicon-->
        <link rel="shortcut icon" href="<c:url value="../resources/img/favicon.png"/>">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="<c:url value="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    </head>
    <body style="padding-top: 72px;">

        <div style="height: 8px; top: 71px;" class="progress rounded-0 sticky-top">
            <div role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="progress-bar"></div>
        </div>
        <section class="py-5 py-lg-7">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <p class="subtitle text-primary">Olá lojista</p>
                        <h1 class="h2 mb-5">A mudança começa com você!</h1>
                        <p>Seja bem-vindo(a)!</p> <p >Cadastre os anúncios de materiais sustentáveis disponíveis em sua loja. </p>
                        <p >Para que possamos colaborar com meio ambiente, precisamos que você anúncie o maior número de materiais sustentáveis que possua, a fim de que os clientes tenham opções e sigam essa prática.</p>
                      
                    </div>
                    <div class="col-lg-5 ml-auto d-flex align-items-center"><img src="../resources/img/illustration/undraw_celebration_0jvk.svg" alt="" style="width: 400px;" class="img-fluid"></div>
                </div>
            </div>
        </section>


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
        <script src="../resources/vendor/jquery/jquery.min.js"></script>
        <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
        <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Magnific Popup - Lightbox for the gallery-->
        <script src="../resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
        <!-- Smooth scroll-->
        <script src="../resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
        <!-- Bootstrap Select-->
        <script src="../resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
        <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
        <script src="../resources/vendor/object-fit-images/ofi.min.js"></script>
        <!-- Swiper Carousel                       -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
        <script>var basePath = ''</script>
        <!-- Main Theme JS file    -->
        <script src="../resources/js/theme.js"></script>
    </body>
</html>
