<%-- 
    Document   : perfil
    Created on : 22/06/2019, 12:37:54
    Author     : sacha
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Hello, world!</title>
    </head>
    <body>
        <jsp:include page = "/WEB-INF/views/componentes/cabecalhoLojista.jsp" />
        <jsp:include page = "/WEB-INF/views/componentes/inicialLojista.jsp" />
        <jsp:include page = "/WEB-INF/views/componentes/footerLojista.jsp" />
        
      <!--  <div class="container">
        <!--        <button name="button"><a href="/cadastroMaterial.jsp/">Cadastrar material</a></button>-->
        
       <!-- <h6><center style="padding:50px;"> Bem vindo querido usuário!</center></h6>
        
        
        <!-- Botão para acionar modal -->
<!--        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ExemploModalCentralizado" >
            Cadastrar material
        </button>

         Modal 
        <div class="modal fade" id="ExemploModalCentralizado" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="TituloModalCentralizado" style="color:#000">CADASTRO DE MATERIAL</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form action="<c:url value="/cadastroLoja"/>" method="POST">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nome material</label>
                                <select>
                                    <option value="volvo"></option>
                                    <option value="saab">Tijolo</option>
                                    <option value="opel">Pedra</option>
                                    <option value="audi">Cimento</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Descrição</label>
                                <select>
                                    <option value="volvo"></option>
                                    <option value="saab">Saab</option>
                                    <option value="opel">Opel</option>
                                    <option value="audi">Audi</option>
                                </select>
                            </div>    
                            <div class="form-group">
                                <label for="exampleInputPassword1">Imagem</label>
                                <input type="number" class="form-control" id="telefoneFixo" placeholder="number">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Fabricante</label>
                                <select>
                                    <option value="volvo"></option>
                                    <option value="saab">Saab</option>
                                    <option value="opel">Opel</option>
                                    <option value="audi">Audi</option>
                                </select>
                            </div> 
                            <div>
                                <label for="exampleInputPassword1">Valor</label>    
                                <input type="number" class="form-control" id="telefoneFixo" placeholder="number">
                            </div>
                            <button type="submit" class="btn btn-primary">Cadastrar material</button>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        <button type="button" class="btn btn-primary">Salvar mudanças</button>
                    </div>
                </div>
            </div>
        </div>






        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </body>
</html>


<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Green Building</title>

        <!-- Bootstrap -->
        <script src="<c:url value="../resources/js/jquery.js"/>"></script>
        <script src="<c:url value="../resources/js/bootstrap.min.js"/>"></script>

        <link href="<c:url value="../resources/css/bootstrap.min.css"/>" rel="stylesheet">

        <!-- Business Casual -->
        <link href="<c:url value="../resources/css/business-casual.css"/>" rel="stylesheet">

        <!-- Price Slider Stylesheets -->
        <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
        <!-- Google fonts - Playfair Display-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
        <!-- Google fonts - Poppins-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
        <!-- swiper-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
        <!-- Magnigic Popup-->
        <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/custom.css">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/favicon.png">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="<c:url value="../resources/js/html5shiv.min.js"/>"</script>
          <script src="<c:url value="../resources/js/respond.min.js"/>"</script>
        <![endif]-->
        <!-- Fonts -->
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"/>" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.css"/>
        <script type="text/javascript" src="jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>

    </head>

    <body>
        <jsp:include page = "/WEB-INF/views/componentes/menuInicial.jsp" />
        <div class="fh5co-cover fh5co-cover-style-2 " data-stellar-background-ratio="0.5" data-next="yes"  style="background-image: url(/resources/img/img3.jpg);">
            <div>

                <br><br><br><br><br><br><br><br>
                <div class="row p-b">
                    <div class="col-md-6 col-md-offset-3 text-center">
                        <h1 class="display-1"></h1></div>
                </div> 
            </div>
            <div class="row p-b">
                <div>
                    <!--<h1><font face="Georgia">"Semear ideias ecológicas e plantar sustentabilidade é ter a garantia de colhermos um futuro fértil e consciente"<br><h3>Sivaldo Filho</h3></font></h1></div>
                    -->
                    <form>
                        <div class="form-row">
                            <div class="container">
                                <div class="row justify-content-md-center">
                                    <div class="form-group">
                                        <div class="form-group col-md-4"></div>
                                        <div class="form-group col-md-6">
                                            <h1 class="cover-text-lead wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInUp;">Green Building</h1>
                                        </div>
                                        <div class="form-group col-md-2"></div> 
                                    </div>
</div>
                                    <br>
                                    
                                    <div class="row justify-content-md-center">
                                    <div class="form-group">
                                        <div class="form-group col-md-3"></div> 
                                        <div class="form-group col-md-6">
                                            <input type="text" class="form-control" placeholder="Digite o Material que deseja encontrar">
                                        </div>
                                        <div class="form-group col-md-3"></div> 
                                    </div>
                                    <br>
                                    <br>
                                    </div>
                                    <div class="row justify-content-md-center">
                                    <div class="form-group">
                                        <div class="form-check col-md-4"></div>

                                    <div class="form-check col-md-3">
                                        <input class="form-check-input" type="checkbox" id="gridCheck">
                                        <label class="form-check-label" for="gridCheck" style="color: #FFF">
                                            Procurar por lojas mais próximas
                                        </label>
                                    </div>

                                    <div class="form-check col-md-2">
                                        <button type="submit" class="btn btn-secondary">Pesquisar</button>
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>



            <div class="fh5co-blog-style-1">
                <div class="container">
                    <div class="row p-b">
                        <div class="col-md-6 col-md-offset-3 text-center">
                            <h2 class="fh5co-heading wow fadeInUp" data-wow-duration="1s" style="color:#000">Práticas Sustentáveis</h2>
                            <p class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".8s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.8s; animation-name: fadeInUp;"></p>
                        </div>
                    </div>
                    <div class="row p-b">
                        <div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12">
                            <div class="fh5co-post wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.1s" style="visibility: visible; animation-duration: 1s; animation-delay: 1.1s; animation-name: fadeInLeft;">
                                <div class="fh5co-post-image">
                                    <div class="fh5co-overlay"></div>	
                                    <div class="fh5co-category"><a href="#">Green Building</a></div>	
                                    <img src="../resources/img/img1.jpg" alt="Image" class="img-responsive">
                                </div>
                                <div class="fh5co-post-text">
                                    <h3><a href="#">o que á a construção Sustentável?</a>
                                        <small>Informação</small></h3>
                                    <p>A construção sustentável é uma forma de se construir casas e edifícios, harmonizando-os com o meio ambiente...</p>
                                </div>
                                <div class="fh5co-post-meta">
                                    <a href="#"><i class="icon-chat"></i> por</a>
                                    <a href="#"><i class="icon-clock2"></i> Caio Zeurgo</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12">
                            <div class="fh5co-post wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.4s" style="visibility: visible; animation-duration: 1s; animation-delay: 1.4s; animation-name: fadeInLeft;">
                                <div class="fh5co-post-image">
                                    <div class="fh5co-overlay"></div>	
                                    <div class="fh5co-category"><a href="#">Green Building</a></div>	
                                    <img src="../resources/img/img5.jpg" alt="Image" class="img-responsive">
                                </div>
                                <div class="fh5co-post-text">
                                    <h3><a href="#">Quais as vantagens da construção sustentável?</a>
                                        <small>Informação</small></h3>
                                    <p>Construções sustentáveis ( greenbuilding ) garantem o retorno financeiro do investimento a médio prazo e a economia ...</p>
                                </div>
                                <div class="fh5co-post-meta">
                                    <a href="#"><i class="icon-chat"></i> por</a>
                                    <a href="#"><i class="icon-clock2"></i> Luanda</a>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-sm-block"></div>
                        <div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12">
                            <div class="fh5co-post wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1.7s" style="visibility: visible; animation-duration: 1s; animation-delay: 1.7s; animation-name: fadeInLeft;">
                                <div class="fh5co-post-image">
                                    <div class="fh5co-overlay"></div>	
                                    <div class="fh5co-category"><a href="#">Green Building</a></div>	
                                    <img src="../resources/img/img8.jpg" alt="Image" class="img-responsive">
                                </div>
                                <div class="fh5co-post-text">
                                    <h3><a href="#">Energia Sustentável</a>
                                        <small>Dicas</small></h3>

                                    <p> A energia sustentável é a energia obtida a partir de recursos inesgotáveis. Por definição, a energia sustentável atende às necessidades do presente sem comprometer a capacidade das gerações futuras satisfazerem as suas necessidades

                                    </p>
                                </div>
                                <div class="fh5co-post-meta">
                                    <a href="#"><i class="icon-chat"></i> por</a>
                                    <a href="#"><i class="icon-clock2"></i> Miller </a>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-sm-block"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-4 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s" style="visibility: visible; animation-duration: 1s; animation-delay: 2s; animation-name: fadeInUp;">
                            <a href="<c:url value="/adocao/"/>" class="btn btn-primary btn-lg">Ver mais dicas</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="fh5co-features-style-1" style="background-image: url(/resources/img/img991.jpg);" data-stellar-background-ratio="0.5">
                <div class="fh5co-overlay"></div>
                <div class="container" style="z-index: 3; position: relative;">
                    <div class="row p-b">
                        <div class="col-md-6 col-md-offset-3 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                            <h2 class="fh5co-heading">Vantagens da Construção Sustentável!</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="fh5co-features">
                            <div class="fh5co-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay=".8s">
                                <div class="icon"><i class="icon-ribbon"></i></div>

                                <p>A redução de gastos energéticos com iluminação e climatização</p>
                            </div>
                            <div class="fh5co-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.1s">
                                <div class="icon"><i class="icon-image22"></i></div>

                                <p>A facilitação da mão de obra, já que os materiais são mais leves e menos nocivos</p>
                            </div>
                            <div class="fh5co-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.4s">
                                <div class="icon"><i class=" icon-monitor"></i></div>

                                <p>A agilização de processos, considerando a mão de obra facilitada</p>
                            </div>

                            <div class="fh5co-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.7s">
                                <div class="icon"><i class="icon-video2"></i></div>

                                <p>Imóveis com ambientes mais agradáveis e atraentes</p>
                            </div>
                            <div class="fh5co-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s">
                                <div class="icon"><i class="icon-bag"></i></div>

                                <p>Estruturas com mais resistência a deterioração</p>
                            </div>
                            <div class="fh5co-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.3s">
                                <div class="icon"><i class="icon-mail2"></i></div>

                                <p>Menor custo de manutenção</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="fh5co-project-style-2" style="background-image: url(/resources/img/branco.png);" data-stellar-background-ratio="0">
                <div class="container">
                    <div class="row p-b">

                    </div>
                </div>


                <div class="fh5co-projects">
                    <ul>
                        <li class="wow fadeInUp" style="background-image: url(/resources/img/img99.png);" data-wow-duration="1s" data-wow-delay="1.4s" data-stellar-background-ratio="2.5">
                            <a href="#">
                                <div class="fh5co-overlay"></div>
                                <div class="container">
                                    <div class="fh5co-text">
                                        <div class="fh5co-text-inner">
                                            <div id="myCarousel" class="carousel slide" data-ride="carousel">


                                                <div class="carousel-inner" role="listbox">
                                                    <div class="item active">
                                                        <div class="col-md-6"><h3>Pensar Sustentável</h3></div>
                                                        <div class="col-md-6"><p>Pensar em sustentabilidade é pensar na família, no próximo e em você mesmo</p></div>

                                                    </div>
                                                    <div class="item">
                                                        <div class="col-md-6"><h3>Sustentabilidade é a solução</h3></div>
                                                        <div class="col-md-6"><p> O Homem falhou em cuidar da Mãe Terra, resta à sustentabilidade.</p></div>

                                                    </div>
                                                    <div class="item">
                                                        <div class="text-center" style="size:7"><h1>Construa consciente, construa SUSTENTÀVEL!</h1></div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>

            <!-- /.container -->

            <jsp:include page = "/WEB-INF/views/componentes/footer.jsp"/>

            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="<c:url value="../resources/js/jquery.js"/>"</script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="<c:url value="../resources/js/bootstrap.min.js"/>"</script>

            <!-- Script to Activate the Carousel -->
            <script>
                $('.carousel').carousel({
                    interval: 5000 //changes the speed
                })
            </script>

    </body>

</html>

<%-- 
    Document   : user-add-0
    Created on : 24/08/2019, 17:14:32
    Author     : Caio Zeurgo
--%><%--
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
    <header class="header">
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
          <div class="d-flex align-items-center"><a href="<c:url value="index.jsp"/>" class="navbar-brand py-1"><h6>Green Building</h6></a>
            <form action="#" id="search" class="form-inline d-none d-sm-flex">
              <div class="input-label-absolute input-label-absolute-left input-reset input-expand ml-lg-2 ml-xl-3"> 
                <label for="search_search" class="label-absolute"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input id="search_search" placeholder="Search" aria-label="Search" class="form-control form-control-sm border-0 shadow-0 bg-gray-200">
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
                <input id="searchcollapsed_search" placeholder="Search" aria-label="Search" class="form-control form-control-sm border-0 shadow-0 bg-gray-200">
                <button type="reset" class="btn btn-reset btn-sm"><i class="fa-times fas">           </i></button>
              </div>
            </form>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown"><a id="homeDropdownMenuLink" href="<c:url value="index.jsp"/>"ta-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle active">
                   
                  Inicio</a>
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
                          <h6 class="text-uppercase">Dicas Sustentaveis</h6>
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
                            <li class="megamenu-list-item"><a href="<c:url value="/inspiracao4.jsp"/>" class="megamenu-list-link">CASA AQUA   </a></li>
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
                              <h6 class="text-uppercase">Melhores Lojas</h6>
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
                              <p class="mb-0 text-muted text-sm">24/7 suporte</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="<c:url value="#secure-payment-1"/>"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Compre com segurança</h6>
                              <p class="mb-0 text-muted text-sm">compra confiável</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block"><img src="/resources/img/photo/wikkelhouse.jpg" alt="" class="bg-image"></div>
                  </div>
                </div>
              </li>
              <!-- /Megamenu end-->
           <li class="nav-item dropdown ml-lg-3"><a id="userDropdownMenuLink" href="<c:url value="#"/>" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <img src="../resources/img/avatar/avatar-10.jpg" alt="Jack London" class="avatar avatar-sm avatar-border-white mr-2"></a>
                <div aria-labelledby="userDropdownMenuLink" class="dropdown-menu dropdown-menu-right">
                  <div class="dropdown-divider"></div><a href="<c:url value="../login"/>" class="dropdown-item"><i class="fas fa-sign-out-alt mr-2 text-muted"></i> Sign out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
              <!-- /Megamenu end-->
              
              
      <!-- /Navbar -->
    </header>
    <div style="height: 8px; top: 71px;" class="progress rounded-0 sticky-top">
      <div role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="progress-bar"></div>
    </div>
    <section class="py-5 py-lg-7">
      <div class="container">
        <div class="row">
          <div class="col-lg-5">
            <p class="subtitle text-primary">Adicione novos materiais na lista</p>
            <h1 class="h2 mb-5">A mudança começa com você</h1>
            <p class="text-muted">Olá lojista, seja bem vindo, cadastre já os materiais sustentáveis disponiveis em sua loja e aguarde contato de cliente que assim como você, se preocupa com nosso planeta. </p>
            <p class="text-muted mb-5">Lembrando que para que possamos colaborar, precisamos que você anúncie o maior número de materiais sustentável que possua, para que nossos clientes tenham opções e sigam esta prática.</p>
            <p class="mb-5 mb-lg-0"> <a href="<c:url value="/lojista/materiais"/>" class="btn btn-primary">Adicionar Material</a></p>
          </div>
          <div class="col-lg-5 ml-auto d-flex align-items-center"><img src="../resources/img/illustration/undraw_celebration_0jvk.svg" alt="" style="width: 400px;" class="img-fluid"></div>
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
    <script src="js/theme.js"></script>
  </body>
</html>
--%>