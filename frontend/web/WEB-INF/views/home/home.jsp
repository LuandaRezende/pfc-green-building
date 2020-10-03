<%-- 
    Document   : index
    Created on : 24/08/2019, 16:53:00
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
  <body style="padding-top: 72px;">
    <header class="header">
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
            
            <div class="d-flex align-items-center"> <a href="<c:url value="index.jsp"/>" claass="navbar-brand py-1" class="d-inline-block align-top"><img src="resources/img/logo-greenbuilding.png" ></a>
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
                            <li class="megamenu-list-item"><a href="<c:url value="/materiaislistado"/>" class="megamenu-list-link">Materiais</a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="index-2.jsp"/>" class="megamenu-list-link"></a></li>
                          </ul></div>
                          <!-- Megamenu list-->
                         
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Práticas Sustentáveis</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a href="<c:url value="telhado_verde"/>" class="megamenu-list-link"> Telhado Verde  </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="energia_fotovoltaica"/>" class="megamenu-list-link">Energia Solar   </a></li>
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
                            <li class="megamenu-list-item"><a href="<c:url value="inspiracoes2"/>" class="megamenu-list-link">ASTRID HILL   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="inspiracoes3"/>" class="megamenu-list-link">WILKKEL HOUSE   </a></li>
                            <li class="megamenu-list-item"><a href="<c:url value="inspiracoes4"/>" class="megamenu-list-link">WAST HOUSE  <span class="badge badge-info ml-1">New</span>   </a></li>
                            
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
    <section class="py-6 bg-gray-100">
      <div class="container">
        <div class="text-center pb-lg-4">
          
          <h2 class="mb-5">Materiais sustentáveis ao seu alcance!</h2>
          <p class="subtitle text-secondary">Um maior incentivo para sua construção.</p>
        </div>
        <div class="row">
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="px-0 px-lg-3">
              <div class="icon-rounded bg-primary-light mb-3">
                <svg class="svg-icon text-primary w-2rem h-2rem">
                  <use xlink:href="<c:url value="#destination-map-1"/>"> </use>
                </svg>
              </div>
              <h3 class="h5">Encontre a loja mais próxima</h3>
              <p class="text-muted">As lojas mais próximas da sua localização que anunciam o material sustentável desejado.</p>
            </div>
          </div>
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="px-0 px-lg-3">
              <div class="icon-rounded bg-primary-light mb-3">
                <svg class="svg-icon text-primary w-2rem h-2rem">
                  <use xlink:href="<c:url value="#pay-by-card-1"/>"> </use>
                </svg>
              </div>
              <h3 class="h5">Encomende sem medo</h3>
              <p class="text-muted">Entre em contato com a loja da maneira que preferir e realize as compras sem preocupação. </p>
            </div>
          </div>
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="px-0 px-lg-3">
              <div class="icon-rounded bg-primary-light mb-3">
                <svg class="svg-icon text-primary w-2rem h-2rem">
                  <use xlink:href="<c:url value="#heart-1"/>"> </use>
                </svg>
              </div>
              <h3 class="h5">Faça a diferença</h3>
              <p class="text-muted">Ao comprar materiais sustentáveis, você estará ajudando a preservar nosso planeta.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-white">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-primary">Construções Sustentáveis pelo mundo</p>
            <h2>Inspire-se </h2>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a href="<c:url value="category.jsp"/>" class="text-muted text-sm">
               
              Veja outras idéias incríveis<i class="fas fa-angle-double-right ml-2"></i></a></div>
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
                <div class="card card-poster gradient-overlay mb-4 mb-lg-0"><a href="<c:url value="category.jsp"/>" class="tile-link"></a><img src="resources/img/photo/wastehouse.jpg" alt="Card image" class="bg-image">
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
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-secondary">Compre materiais sustentáveis         </p>
            <h2>Conheça os mais procurados no mês</h2>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a href="<c:url value="category.jsp"/>" class="text-muted text-sm">
               
              Veja todos materias<i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <!-- Slider main container-->
        
        
        
        <div data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}" class="swiper-container swiper-container-mx-negative swiper-init">
          <!-- Additional required wrapper-->
          
         
          
          
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e33b1527bfe2abaf92" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="resources/img/photo/tijolo.jpg" alt="Tijolos, Well-Appointed Room" class="img-fluid"/><a href="<c:url value="detail-rooms.jsp"/>" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="resources/img/avatar/construai.jpg" alt="Pamela" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Construai</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="<c:url value="#heart-1"/>"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark">Tijolo ecológico</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Pouso Alegre -MG</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">R$800</span>/milheiro</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e322f3375db4d89128" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="resources/img/photo/luzled.jpg" alt="Cute Quirky Garden apt, NYC adjacent" class="img-fluid"/><a href="<c:url value="detail-rooms.jsp"/>" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="resources/img/avatar/bloquel.jpg" alt="John" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Bloquel</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="<c:url value="#heart-1"/>"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark">Lâmpada Eletrônica de Led 3U E27 12w</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Pouso Alegre - MG</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">R$7</span>/cada</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e3a31e62979bf147c9" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="resources/img/photo/jardimvertical.jpg" alt="Modern Apt - Vibrant Neighborhood!" class="img-fluid"/><a href="<c:url value="detail-rooms.jsp"/>" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="resources/img/avatar/leroy.jpg" alt="Julie" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Leroy Merlin</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="<c:url value="#heart-1"/>"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark">Painel para Jardim Vertical Fibra de Coco 2 Vasos</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Pouso Alegre - MG</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">R$240</span>/cada</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e3503eb77d487e8082" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="resources/img/photo/telha.jpg" alt="Sunny Private Studio-Apartment" class="img-fluid"/><a href="<c:url value="detail-rooms.jsp"/>" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="resources/img/avatar/construminas.jpg" alt="Barbora" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Construminas</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="<c:url value="#heart-1"/>"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark">Telhas sustentável</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Heliodora - MG</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">R$460</span>/milheiro</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div data-marker-id="59c0c8e39aa2edasd626e485d" class="w-100 h-100">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img src="resources/img/photo/grama.jpg" alt="Brooklyn Life, Easy to Manhattan" class="img-fluid"/><a href="<c:url value="detail-rooms.jsp"/>" class="tile-link"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="media text-white text-sm align-items-center"><img src="resources/img/avatar/maglioni.png" alt="Stuart" class="avatar avatar-border-white mr-2"/>
                        <div class="media-body">Maglioni</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-right"><a href="<c:url value="javascript: void();"/>" class="card-fav-icon position-relative z-index-40"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="<c:url value="#heart-1"/>"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a href="<c:url value="detail-rooms.jsp"/>" class="text-decoration-none text-dark">Grama sustentável</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Santa Rita -MG</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-right"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">R$20</span> /m²</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section>
    <!-- Divider Section-->
    <section class="py-7 position-relative dark-overlay"><img src="resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg" alt="" class="bg-image">
      <div class="container">
        <div class="overlay-content text-white py-lg-5">
          <h3 class="display-3 font-weight-bold text-serif text-shadow mb-5">Preparado para conservar o planeta?</h3><a href="<c:url value="category-rooms.jsp"/>" class="btn btn-light">Comece agora!</a>
        </div>
      </div>
    </section>
    <section class="py-7">
      <div class="container">
        <div class="text-center">
          <p class="subtitle text-primary">Opiniões dos clientes</p>
          <h2 class="mb-5">Conheça o que os clientes falam sobre o Green Building</h2>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container testimonials-slider testimonials">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pt-2 pb-5">
            <!-- Slides-->
            <div class="swiper-slide px-3">
              <div class="testimonial card rounded-lg shadow border-0">
                <div class="testimonial-avatar"><img src="resources/img/avatar/avatar-3.jpg" alt="..." class="img-fluid"></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Site incrível! A sustentabilidade precisa ser adotada, é um dos passos para que nossas futuras gerações não sofra a consequencia de nossos erros</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide px-3">
              <div class="testimonial card rounded-lg shadow border-0">
                <div class="testimonial-avatar"><img src="resources/img/avatar/avatar-3.jpg" alt="..." class="img-fluid"></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Site incrível! A sustentabilidade precisa ser adotada, é um dos passos para que nossas futuras gerações não sofra a consequencia de nossos erros</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide px-3">
              <div class="testimonial card rounded-lg shadow border-0">
                <div class="testimonial-avatar"><img src="resources/img/avatar/avatar-3.jpg" alt="..." class="img-fluid"></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Site incrível! A sustentabilidade precisa ser adotada, é um dos passos para que nossas futuras gerações não sofra a consequencia de nossos erros</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide px-3">
              <div class="testimonial card rounded-lg shadow border-0">
                <div class="testimonial-avatar"><img src="resources/img/avatar/avatar-3.jpg" alt="..." class="img-fluid"></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Site incrível! A sustentabilidade precisa ser adotada, é um dos passos para que nossas futuras gerações não sofra a consequencia de nossos erros</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide px-3">
              <div class="testimonial card rounded-lg shadow border-0">
                <div class="testimonial-avatar"><img src="resources/img/avatar/avatar-3.jpg" alt="..." class="img-fluid"></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Site incrível! A sustentabilidade precisa ser adotada, é um dos passos para que nossas futuras gerações não sofra a consequencia de nossos erros </p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide px-3">
              <div class="testimonial card rounded-lg shadow border-0">
                <div class="testimonial-avatar"><img src="resources/img/avatar/avatar-3.jpg" alt="..." class="img-fluid"></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Site incrível! A sustentabilidade precisa ser adotada, é um dos passos para que nossas futuras gerações não sofra a consequencia de nossos erros </p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-pagination">     </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-secondary">Práticas para construção sustentável</p>
            <h2>E que comecem as obras!</h2>
          </div>
          <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a href="<c:url value="blog.jsp"/>" class="text-muted text-sm">
               
              Veja mais práticas<i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <div class="row">
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card shadow border-0 h-100"><a href="<c:url value="telhado_verde"/>" <img src="resources/img/photo/telhadoverde1.jpg" alt="..." class="img-fluid card-img-top"></a>
              <div class="card-body"><a href="<c:url value="telhado_verde"/>" class="text-uppercase text-muted text-sm letter-spacing-2">Construção </a>
                <h5 class="my-2"><a href="<c:url value="telhado_verde"/>" class="text-dark">Passo a passo de construção de telhado verde</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock mr-2"></i>06 de setembro de 2019</p>
                <p class="my-2 text-muted text-sm">Fizemos uma reforma sustentável na Casa Modelo e, executamos um telhado verde para cobrir um anexo na construção...</p><a href="<c:url value="telhado_verde"/>" class="btn btn-link pl-0">ver mais<i class="fa fa-long-arrow-alt-right ml-2"></i></a>
              </div>
            </div>
          </div>
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card shadow border-0 h-100"><a href="<c:url value="energia_fotovoltaica"/>"mg src="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..." class="img-fluid card-img-top"/></a>
              <div class="card-body"><a href="<c:url value="energia_fotovoltaica"/>" class="text-uppercase text-muted text-sm letter-spacing-2">dicas </a>
                <h5 class="my-2"><a href="<c:url value="energia_fotovoltaica"/>" class="text-dark">Vantagens ao usar energia fotovoltaica</a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock mr-2"></i>02 de setembro de 2016</p>
                <p class="my-2 text-muted text-sm">Os sistemas fotovoltaicos são geradores de energia que utilizam a energia do sol como único combustível....</p><a href="<c:url value="energia_fotovoltaica"/>" class="btn btn-link pl-0">ver mais<i class="fa fa-long-arrow-alt-right ml-2"></i></a>
              </div>
            </div>
          </div>
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4">
            <div class="card shadow border-0 h-100"><a href="<c:url value="post.jsp"/>"mg src="resources/img/photo/photo-1482463084673-98272196658a.jpg" alt="..." class="img-fluid card-img-top"/></a>
              <div class="card-body"><a href="<c:url value="#"/>" class="text-uppercase text-muted text-sm letter-spacing-2">construção</a>
                <h5 class="my-2"><a href="<c:url value="post.jsp"/>" class="text-dark">Passo a passo de fossa sustentável      </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock mr-2"></i>08 de agosto de 2018</p>
                <p class="my-2 text-muted text-sm">A fossa séptica é uma alternativa interessante para reaproveitar materiais que seriam descartados...</p><a href="<c:url value="post.jsp"/>" class="btn btn-link pl-0">ver mais<i class="fa fa-long-arrow-alt-right ml-2"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Instagram-->
    <section>
      <div class="container-fluid px-0">
        <div class="swiper-container instagram-slider">
          <div class="swiper-wrapper">
          <%--  <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-1.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-2.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-3.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-4.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-5.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-6.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-7.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-8.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-9.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-10.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-11.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-12.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-13.jpg" alt="" class="img-fluid hover-scale"></a></div>
            <div class="swiper-slide overflow-hidden"><a href="<c:url value="#"/>"><img src="resources/img/instagram/instagram-14.jpg" alt="" class="img-fluid hover-scale"></a></div>
       --%>   </div>
        </div>
      </div>
    </section>
        
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 bg-gray-200 text-muted"> 
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="font-weight-bold text-uppercase text-dark mb-3">Green Building</div>
              <p>O custo do cuidado é sempre menor que o custo do reparo</p>
              <ul class="list-inline">
                <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="twitter" class="text-muted text-hover-primary"><i class="fab fa-twitter"></i></a></li>
                <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="facebook" class="text-muted text-hover-primary"><i class="fab fa-facebook"></i></a></li>
                <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="instagram" class="text-muted text-hover-primary"><i class="fab fa-instagram"></i></a></li>
                <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="pinterest" class="text-muted text-hover-primary"><i class="fab fa-pinterest"></i></a></li>
                <li class="list-inline-item"><a href="<c:url value="#"/>" target="_blank" title="vimeo" class="text-muted text-hover-primary"><i class="fab fa-vimeo"></i></a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Anúncios de materiais</h6>
              <ul class="list-unstyled">
                 
                <li>< a href="<c:url value="/materiaislistado"/>" class="text-muted">Materiais</a></li>
                            <li><a href="<c:url value="/lojista/materiais"/>" class="text-muted">Pesquisar material</a></li>
                          
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Loja</h6>
              <ul class="list-unstyled">
                <li><a href="<c:url value="/lojista/lojas"/>" class="text-muted">Cadastrar loja</a></li>
                </ul>
            </div>
            
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 font-weight-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-left">
              <p class="text-sm mb-md-0"> 2019 CLM Corporation.  Todos os direitos reservados.</p>
            </div>
            <!--<div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-right">
                <li class="list-inline-item"><img src="../resources/img/visa.svg" alt="..." class="w-2rem"></li>
                <li class="list-inline-item"><img src="../resources/img/mastercard.svg" alt="..." class="w-2rem"></li>
                <li class="list-inline-item"><img src="../resources/img/paypal.svg" alt="..." class="w-2rem"></li>
                <li class="list-inline-item"><img src="../resources/img/western-union.svg" alt="..." class="w-2rem"></li>
              </ul>
            </div>-->
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

