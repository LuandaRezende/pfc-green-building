<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Green Building</title>
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
            <!-- Navbar-->
            <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
                <div class="container-fluid">

                    <div class="d-flex align-items-center"> <a href="<c:url value="index.jsp"/>" claass="navbar-brand py-1"><img src="/resources/img/logo1.png" alt=""></a>
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
                                                        <li class="megamenu-list-item"><a href="<c:url value="index.jsp"/>" class="megamenu-list-link">Materiais   </a></li>
                                                        <li class="megamenu-list-item"><a href="<c:url value="index-2.jsp"/>" class="megamenu-list-link">Lojas   </a></li>
                                                    </ul></div>
                                                <!-- Megamenu list-->

                                                <div class="col-lg-3">
                                                    <!-- Megamenu list-->
                                                    <h6 class="text-uppercase">Práticas Sustentáveis</h6>
                                                    <ul class="megamenu-list list-unstyled">
                                                        <li class="megamenu-list-item"><a href="<c:url value="category-rooms.jsp"/>" class="megamenu-list-link"> Dicas   </a></li>
                                                        <li class="megamenu-list-item"><a href="<c:url value="category-2-rooms.jsp"/>" class="megamenu-list-link">Informações   </a></li>
                                                        <!--<li class="megamenu-list-item"><a href="<c:url value="category-3-rooms.jsp"/>" class="megamenu-list-link">Category - no map   </a></li>
                                                        <li class="megamenu-list-item"><a href="<c:url value="detail-rooms.jsp"/>" class="megamenu-list-link">Room detail   </a></li>-->
                                                    </ul>
                                                    <!-- Megamenu list-->
                                                    <!--<h6 class="text-uppercase">Blog</h6>
                                                    <ul class="megamenu-list list-unstyled">
                                                      <li class="megamenu-list-item"><a href="<c:url value="blog.jsp"/>" class="megamenu-list-link">Blog   </a></li>
                                                      <li class="megamenu-list-item"><a href="<c:url value="post.jsp"/>" class="megamenu-list-link">Post   </a></li>
                                                    </ul>-->
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
                                                      <!--  <li class="megamenu-list-item"><a href="<c:url value="user-booking-1.jsp"/>" class="megamenu-list-link">Booking process - 4 pages <span class="badge badge-warning ml-1">New</span>   </a></li>
                                                        <li class="megamenu-list-item"><a href="<c:url value="user-grid.jsp"/>" class="megamenu-list-link">Bookings &mdash; grid view <span class="badge badge-warning ml-1">New</span>   </a></li>--!>
                                                      </ul>
                                                        <!-- Megamenu list-->
                                                        <!-- <h6 class="text-uppercase">Host</h6>
                                                         <ul class="megamenu-list list-unstyled">
                                                           <li class="megamenu-list-item"><a href="<c:url value="user-add-0.jsp"/>" class="megamenu-list-link">Add new listing - 6 pages   </a></li>
                                                           <li class="megamenu-list-item"><a href="<c:url value="user-list.jsp"/>" class="megamenu-list-link">Bookings &mdash; list view <span class="badge badge-warning ml-1">New</span>   </a></li>
                                                         </ul>-->
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
                            <!-- /Megamenu end-->
                           <!-- <li class="nav-item"><a href="<c:url value="contact.jsp"/>" class="nav-link" ta-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle ">Contact</a>
                            </li>
                            <li class="nav-item dropdown"><a id="docsDropdownMenuLink" href="<c:url value="index.jsp"/>"ta-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle ">
                                 
                                Docs</a>
                              <div aria-labelledby="docsDropdownMenuLink" class="dropdown-menu dropdown-menu-right">
                                <h6 class="dropdown-header font-weight-normal">Documentation</h6><a href="<c:url value="docs/docs-introduction.jsp"/>" class="dropdown-item">Introduction </a><a href="<c:url value="docs/docs-directory-structure.jsp"/>" class="dropdown-item">Directory structure </a><a href="<c:url value="docs/docs-gulp.jsp"/>" class="dropdown-item">Gulp </a><a href="<c:url value="docs/docs-customizing-css.jsp"/>" class="dropdown-item">Customizing CSS </a><a href="<c:url value="docs/docs-credits.jsp"/>" class="dropdown-item">Credits </a><a href="<c:url value="docs/docs-changelog.jsp"/>" class="dropdown-item">Changelog </a>
                                <div class="dropdown-divider"></div>
                                <h6 class="dropdown-header font-weight-normal">Components</h6><a href="<c:url value="docs/components-bootstrap.jsp"/>" class="dropdown-item">Bootstrap </a><a href="<c:url value="docs/components-directory.jsp"/>" class="dropdown-item">Theme </a>
                              </div>
                            </li>-->
                            <li class="nav-item dropdown"><a id="docsDropdownMenuLink" href="<c:url value="login"/>" class="nav-link" >Entrar</a></li>
                            <!--<li class="nav-item dropdown"><a href="<c:url value="cadastroUsuario"/>" class="nav-link">Cadastre-se</a></li>-->
                            <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a href="<c:url value="cadastroUsuario"/>" class="btn btn-primary">Cadastre-se</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- /Navbar -->
        </header>
        <section class="hero-home">
            <div class="swiper-container hero-slider">
                <div class="swiper-wrapper dark-overlay">
                    <div style="background-image:url(resources/img/photo/teste.png)" class="swiper-slide"></div>
                    <div style="background-image:url(resources/img/photo/teste2.jpg)" class="swiper-slide"></div>
                    <div style="background-image:url(resources/img/photo/teste3.jpg)" class="swiper-slide"></div>
                    <div style="background-image:url(resources/img/photo/teste4.jpg)" class="swiper-slide"></div>
                </div>
            </div>
            <div class="container py-6 py-md-7 text-white z-index-20">
                <div class="row">
                    <div class="col-xl-10">
                        <div class="text-center text-lg-left">
                            <p class="subtitle letter-spacing-4 mb-2 text-secondary text-shadow">Construção inteligente com materiais sustentáveis</p>
                            <h1 class="display-3 font-weight-bold text-shadow">O que você procura?</h1>
                        </div>
                        <div class="search-bar mt-5 p-3 p-lg-1 pl-lg-4">
                            <form action="<c:url value="/pesquisar"/>" method="POST">
                                <div class="row">
                                    <div class="col-lg-10 d-flex align-items-center form-group">
                                        <input type="text" name="palavra" placeholder="Digite o nome do material" class="form-control border-0 shadow-0">
                                    </div>


                                    <div class="col-lg-2">
                                        <button type="submit" class="btn btn-primary btn-block rounded-xl h-100">buscar </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="container-fluid pt-5 pb-3 border-bottom px-lg-5">
            <div class="row">
                <div class="col-xl-8">
                    <h1>Materiais Buscados:</h1>
                    <p class="lead text-muted">Escolha o material desejado e entre em contato com a loja</p>
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
                            <div class="col-sm-8 col-xl-4 mb-5">
                                <div class="card h-100 border-0 shadow">
                                    <div class="card-img-top overflow-hidden gradient-overlay" id="material" name="Fk_material_id" data-toggle="modal" data-target="#ExemploModalCentralizado">
                                        <img src="${anuncia.material.imagem}" class="img-fluid"/>


                                        <div class="card-img-overlay-bottom z-index-20">
                                            <div class="media text-white text-sm align-items-center"><a href="https://wa.me/5535998647827"><img src="/resources/img/avatar/avatar-9.png" alt="Barbora" class="avatar avatar-border-white mr-2"/> <a/>

                                            </div>
                                        </div>
                                        <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                                                <svg class="svg-icon text-white">
                                                <use xlink:href="<c:url value="#heart-1"/>"> </use>
                                                </svg></a></div>
                                    </div>
                                    <div class="card-body d-flex align-items-center">
                                        <div class="w-100">
                                            <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark" id="material" name="Fk_material_id">${anuncia.material.nome}</a></h6>
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


                        <!-- Pagination -->

                    </div>
                </div>
            </div>
        </div>
        <%--<c:forEach items="${anunciaList}" var="anuncia">
            
            <p>${anuncia.material.nome}</p>
            
            <br><br>
            
        </c:forEach>--%>

    </body>
</html>
