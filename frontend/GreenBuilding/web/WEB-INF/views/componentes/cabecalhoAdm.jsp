
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
         <link href="<c:url value="/resources/css/menu.css"/>" rel="stylesheet">

    </head>
    <body>


<header style="background:#009933; width: 100%; height: 120px;">
    <h3 style="color:white; text-align: left;padding: 45px;">GREEN BUILDING</h3>
</header>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
    
  <div class="navbar-collapse">
      <a class="nav-item nav-link active" href="login/perfil">Início <span class="sr-only">(Página atual)</span></a>
      <a class="nav-item nav-link" href="/GreenBuilding/materiais">Materiais</a>
      <a class="nav-item nav-link" href="/GreenBuilding/categorias">Categoria de material</a>
      <a class="nav-item nav-link" href="/GreenBuilding/tipos">Tipo de material</a>
      <a class="nav-item nav-link" href="/GreenBuilding/lojas">Lojas</a>
  </div>
</nav>

</body>
</html>


    
