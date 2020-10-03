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
            <h1>Materiais cadastrados</h1>

            <br>

            <a class="btn btn-primary" href="<c:url value="/materiais/novo"/>">Adicionar</a><br>

            <table class="table">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Tipo</th>
                        <th>Categoria</th>
                        <th>Descrição</th>
                        <th>Fabricante</th>
                        <th>Imagem</th>
                        <th>Opções</th>
                    </tr> 
                </thead>
                
                <tbody>
                    <c:forEach var="material" items="${materialList}">
                        <tr>

                            <td>${material.nome}</td>   

                            <td id="tipo" name="Fk_tipo_id">
                                <c:forEach var="tipo" items="${tipos}">
                                     <c:if test="${tipo.id == material.fk_tipo_id}">${tipo.nome}</c:if>
                                </c:forEach>
                            </td>

                            <td id="categoria" name="Fk_categoria_id">
                                <c:forEach var="categoria" items="${categorias}">
                                    <c:if test="${categoria.id == material.fk_categoria_id}">${categoria.nome}</c:if>
                                </c:forEach>
                            </td>


                            <td>${material.descricao}</td>
                            <td>${material.fabricante}</td>
                            <td>
                                <img width="200" <c:if test="${material ne null}"> src="${material.imagem}" </c:if> >
                            </td>
                            <td>
                                <a href="<c:url value="/materiais/${material.id}/update"/>" 
                                   class="btn btn-primary">Editar</a>
                                <a href="<c:url value="/materiais/${material.id}/delete"/>"
                                   class="btn btn-danger">Excluir</a>
                            </td>
                        </tr>             
                    </c:forEach>   
                </tbody>
            </table>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
