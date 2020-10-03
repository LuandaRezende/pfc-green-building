<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

        <!-- Business Casual -->
        <link href="<c:url value="/resources/css/business-casual.css"/>" rel="stylesheet">
        <!--Estilo css -->
        <link href="<c:url value="/resources/css/estilo.css"/>" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="<c:url value="resources/js/html5shiv.min.js"/>"</script>
          <script src="<c:url value="resources/js/respond.min.js"/>"</script>
        <![endif]-->
        <!-- Fonts -->
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"/>" rel="stylesheet" type="text/css">

    </head>
    <body>

        
            <!--informa��es do usuario logado-->
        <!-- <c:if test="${not empty usuarioLogado}">
             <div id="logado">
                 <h1>O usu�rio logado � ${usuarioLogado}</h1>
 
             </div>
        </c:if>-->
        <!-- Navigation -->


        <nav class="fh5co-nav-style-2 " role="navigation" data-offcanvass-position="fh5co-offcanvass-left">
            <div class="container">
                <div class="col-lg-1 col-md-4 col-sm-3 col-xs-12 fh5co-logo">
                   <a href="#"><h4 style="color:#000/9" class="cover-text-lead wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInUp;">Green Building</h4></a>
                </div>
                <div class="col-lg-7 col-md-4 col-sm-3 text-center fh5co-link-wrap text-center">
                    <ul data-offcanvass="yes">

                        <li class="active">
                            <a href="/GreenBuilding/index.jsp">Home</a>
                       </li>
                        <li>
                            <a href="<c:url value=""/>">Materiais</a>
                        </li>
                        <li>
                            <a href="<c:url value=""/>" >Not�cias</a>
                        </li>
                        <li>
                            <a href="<c:url value=""/>">Pr�ticas</a>
                        </li>
                    </ul>
                </div> 
                <div class="col-lg-4 col-md-5 col-sm-3 text-right fh5co-link-wrap">
                    <ul class="fh5co-special" data-offcanvass="yes">
                        <c:if test="${not empty usuarioLogado}">
                            <li>
                                <a href="<c:url value="/anuncio/"/>">Gerenciar</a>
                            </li>
                            <li>
                                <a href="<c:url value="/logout/"/>">Logout</a>
                            </li>
                            <li>
                                <a href="<c:url value="/pessoa/pessoaDados/"/>">Meus dados</a>
                            </li>  
                        </c:if>
                        <c:if test="${ empty usuarioLogado}">
                            <li>
                                <a href="<c:url value="login"/>">Login</a>       
                            </li>
                            <li>
                                <a href="<c:url value="cadastroUsuario"/>" class="call-to-action">Cadastre-se</a>
                            </li> 
                        </c:if>

                    </ul>
                </div>
            </div>
        </nav>


    </body>
</html>

