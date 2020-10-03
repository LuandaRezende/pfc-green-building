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

            <c:if test="${loja ne null}">
                <h1>Cadastrar loja</h1>
            </c:if>

            <c:if test="${loja eq null}">
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
