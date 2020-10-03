<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <jsp:include page = "/WEB-INF/views/componentes/cabecalhoLojista.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">

            <c:if test="${loja eq null}">
                <h1>Cadastrar loja</h1>
            </c:if>

            <c:if test="${loja ne null}">
                <h1>Editar Loja</h1>
            </c:if>

               <form method="POST">
                <br>
                <label>Nome:</label>  
                <br>
                <input name="nome_loja" id="nome_loja" type="text" 
                <c:if test="${loja ne null}"> value="${loja.nomeLoja}"</c:if> >
                
                <br>
                <label>Cnpj</label>  
                <br>
                <input name="cnpj" id="cnpj" type="text"
                <c:if test="${loja ne null}"> value="${loja.cnpj}" </c:if>>
                
                <br>
                <label>Telefone fixo</label>
                <input name="fixo" id="fixo" type="text"
                <c:if test="${contato ne null}"> value="${contato.fixo}" </c:if>>
                <br>
                
                <label>Celular da empresa</label>
                <input name="celular" id="cnpj" type="text"
                <c:if test="${contato ne null}"> value="${contato.celular}"</c:if>>
                <br>
                
                <label>WhatsApp</label>
                <input name="whatsapp" id="whatsapp" type="text"
                <c:if test="${contato ne null}"> value="${contato.whatsapp}" </c:if>>
                <br>
                
                <label>Email</label>
                <input name="email" id="email" type="text"
                <c:if test="${contato ne null}"> value="${contato.email}" </c:if>>
                
                
                
                
                
                
                
                
         
                     

                <a href="<c:url value="/lojas/cadastradas"/>" class="btn btn-primary"><button type="submit">Cadastrar loja lojista</button></a>

            </form>

        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

--%>


<%-- 
    Document   : user-add-1
    Created on : 24/08/2019, 17:14:48
    Author     : Caio Zeurgo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Cadastrar Loja</title>
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
        <jsp:include page = "/WEB-INF/views/componentes/cabecalhoLojista2.jsp" />
    </header>
    <div style="height: 8px; top: 71px;" class="progress rounded-0 sticky-top">
        <div role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" class="progress-bar"></div>
    </div>
    <section class="py-5">
        <div class="container">
            <c:if test="${loja eq null}">
                <h1>Cadastrar loja</h1>
            </c:if>

            <c:if test="${loja ne null}">
                <h1>Editar Loja</h1>
            </c:if>
            <p class="subtitle text-primary">cadastrar dados da loja</p>
            <h1 class="h2 mb-5">  <span class="text-muted float-right"></span>      </h1>
            <form method="POST">
                <div class="row form-block">
                    <div class="col-lg-4">
                        <h4>Identificação da loja</h4>
                        <p class="text-muted text-sm">O nome inserido neste campo, será disponibilizado a todos os usuário na aplicação, aparecerá em seus anuncios para que saibam quem está anunciando</p>
                    </div>
                    <div class="col-lg-7 ml-auto">
                        <div class="form-group"></div>
                        <div class="form-group">
                            <label class="form-label">Nome da Loja</label>
                            <input name="nome_loja" id="nome_loja" class="form-control" type="text" 
                                   <c:if test="${loja ne null}"> value="${loja.nomeLoja}"</c:if>>

                            </div>
                            <div class="form-group">
                                <label class="form-label"> CNPJ da Loja</label>
                                <input name="cnpj" id="cnpj" class="form-control" type="text"
                                <c:if test="${loja ne null}"> value="${loja.cnpj}" </c:if>>

                            </div>
                            <div class="form-group">

                            </div>
                            <div class="form-group">

                            </div>
                        </div>
                    </div>
                    <div class="row form-block">
                        <div class="col-lg-4">
                            <h4>Contatos da Loja</h4>
                            <p class="text-muted text-sm">Aqui será cadastrado os dados para contato, para que o cliente possa entrar em contato com vocês ao escolher a sua loja</p>
                        </div>
                        <div class="col-lg-7 ml-auto">

                            <!-- Street-->
                            <div class="form-group">
                                <label for="form_street" class="form-label">Telefone fixo</label>
                                <input name="fixo" id="fixo" class="form-control" type="text"
                                <c:if test="${contato ne null}"> value="${contato.fixo}" </c:if>>

                            </div>
                            <!-- City + State-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_city" class="form-label">Celular</label>
                                        <input name="celular" id="cnpj" class="form-control" type="text"
                                        <c:if test="${contato ne null}"> value="${contato.celular}"</c:if>>

                                    </div>

                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_state" class="form-label">WhatsApp</label>
                                        <input name="whatsapp" id="whatsapp" class="form-control" type="text"
                                        <c:if test="${contato ne null}"> value="${contato.whatsapp}" </c:if>>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form_email" class="form-label">Email</label>
                                        <input name="email" id="email" class="form-control" type="text"
                                        <c:if test="${contato ne null}"> value="${contato.email}" </c:if>>

                                    </div>
                                </div>

                            </div>
                            <div class="col text-center text-sm-right">
                                <button type="submit"href="<c:url value="/lojas/cadastradas"/>" class="btn btn-primary px-2">Cadastrar loja</button>

                        </div>
                    </div>
                    <div class="row form-block flex-column flex-sm-row">
                        <div class="col text-center text-sm-left">
                        </div>

                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
        <!-- Main block - menus, subscribe form-->
        <div class="py-6 bg-gray-200 text-muted"> 
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="font-weight-bold text-uppercase text-dark mb-3">Directory</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="twitter" class="text-muted text-hover-primary"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="facebook" class="text-muted text-hover-primary"><i class="fab fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="instagram" class="text-muted text-hover-primary"><i class="fab fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="pinterest" class="text-muted text-hover-primary"><i class="fab fa-pinterest"></i></a></li>
                            <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="vimeo" class="text-muted text-hover-primary"><i class="fab fa-vimeo"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                        <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
                        <ul class="list-unstyled">
                            <li><a href="<c:url value="index.jsp"/>" class="text-muted">Rooms     </a></li>
                            <li><a href="<c:url value="category-rooms.jsp"/>" class="text-muted">Map on top     </a></li>
                            <li><a href="<c:url value="category-2-rooms.jsp"/>" class="text-muted">Side map     </a></li>
                            <li><a href="<c:url value="category-3-rooms.jsp"/>" class="text-muted">No map     </a></li>
                            <li><a href="<c:url value="detail-rooms.jsp"/>" class="text-muted">Room detail     </a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                        <h6 class="text-uppercase text-dark mb-3">Pages</h6>
                        <ul class="list-unstyled">
                            <li><a href="<c:url value="contact.jsp"/>" class="text-muted">Contact                                   </a></li>
                            <li><a href="<c:url value="pricing.jsp"/>" class="text-muted">Pricing                                   </a></li>
                            <li><a href="<c:url value="text.jsp"/>" class="text-muted">Text page                                   </a></li>
                            <li><a href="<c:url value="faq.jsp"/>" class="text-muted">F.A.Q.s  <span class="badge badge-info ml-1">New</span>                                   </a></li>
                            <li><a href="<c:url value="coming-soon.jsp"/>" class="text-muted">Coming soon                                   </a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
                        <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
                        <form action="#" id="newsletter-form">
                            <div class="input-group mb-3">
                                <input type="email" placeholder="Your Email Address" aria-label="Your Email Address" class="form-control bg-transparent border-dark border-right-0">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-outline-dark border-left-0"> <i class="fa fa-paper-plane text-lg"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright section of the footer-->
        <div class="py-4 font-weight-light bg-gray-800 text-gray-300">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center text-md-left">
                        <p class="text-sm mb-md-0">&copy; 2019 Your company.  All rights reserved.</p>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-right">
                            <li class="list-inline-item"><img src="../resources/img/visa.svg" alt="..." class="w-2rem"></li>
                            <li class="list-inline-item"><img src="../resources/img/mastercard.svg" alt="..." class="w-2rem"></li>
                            <li class="list-inline-item"><img src="../resources/img/paypal.svg" alt="..." class="w-2rem"></li>
                            <li class="list-inline-item"><img src="../resources/img/western-union.svg" alt="..." class="w-2rem"></li>
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