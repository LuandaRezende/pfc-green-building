<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <jsp:include page = "/WEB-INF/views/componentes/cabecalhoAdm.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">

            <c:if test="${material eq null}">
                <h1>Cadastrar Material</h1>
            </c:if>

            <c:if test="${material ne null}">
                <h1>Editar Material</h1>
            </c:if>

            <form method="POST">
                <br>
                <label for="nome">Nome:</label>  
                <br>
                <input name="nome" id="nome" type="text" 
                       <c:if test="${material ne null}"> value="${material.nome}" </c:if> ><br>
                <label for="descricao">Descrição:</label>  
                <br>
                <input name="descricao" id="descricao" type="text"
                <c:if test="${material ne null}"> value="${material.descricao}" </c:if> ><br>
                <label for="fabricante">Fabricante:</label>  
                <br>
                <label for="tipo">Tipo: asdasd</label> 
                    <br>    
                <select id="tipo" name="tipo">
                    
                     <c:forEach var="tipo" items="${tipos}">
                         <option <c:if test="${tipo.id == material.fk_tipo_id}"> selected </c:if> value="${tipo.id}">${tipo.nome}</option>
                    </c:forEach>
                 

                 </select>
                       
                <br>
                <
                <input name="fabricante" id="fabricante" type="text"
                      <c:if test="${material ne null}"> value="${material.fabricante}" </c:if> ><br>

                <button type="submit">Enviar</button>

            </form>

        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
