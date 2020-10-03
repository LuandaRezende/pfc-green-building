<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <jsp:include page = "/WEB-INF/views/componentes/cabecalhoLojista2.jsp" />
        <title>JSP Page</title>
    </head>
    <body>


        <section class="py-5">
            <div class="container">
                <c:if test="${anuncia eq null}">
                    <h1>Cadastrar loja</h1>
                </c:if>

                <c:if test="${anuncia ne null}">
                    <h1>Editar Loja</h1>
                </c:if>
                <p class="subtitle text-primary">cadastrar dados da loja</p>
                <h1 class="h2 mb-5">  <span class="text-muted float-right"></span>      </h1>
               
                <form method="POST">
                    <div class="row form-block">
                        <div class="col-lg-4">
                            <h4>mudar</h4>
                            <p class="text-muted text-sm">O nome inserido neste campo, será disponibilizado a todos os usuário na aplicação, aparecerá em seus anuncios para que saibam quem está anunciando</p>
                        </div>
                        <div class="col-lg-7 ml-auto">
                            <div class="form-group"></div>
                            <div class="form-group">
                                <label class="form-label">Material</label>
                                <select id="material" name="material" class="form-control">
                                    <option class="active">Selecione um material</option>

                                    <c:forEach var="material" items="${materiais}">
                                        <option value="${material.id}">${material.nome} - ${material.descricao}</option>
                                    </c:forEach>
                                </select>        
                            </div>
                            <div class="form-group">
                                <label class="form-label">${material.nome} </label>


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
                                <div class="form-group">
                                     <label for="Valor:" class="form-label">Valor:</label>
                                     <input name="valor" id="valor" class="form-control" type="text"
                                     <c:if test="${anuncia ne null}"> value="${anuncia.valor}" </c:if>>

                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="observacao" class="form-label">Observacao:</label>
                                            <input name="observacao" id="observacao" class="form-control" type="text"
                                            <c:if test="${anuncia ne null}"> value="${anuncia.observacao}"</c:if>>

                                        </div>

                                    </div> 
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="estoque" class="form-label">Quantidade estoque:</label>
                                            <input name="qtd_estoque" id="qtd_estoque" class="form-control" type="text"
                                            <c:if test="${anuncia ne null}"> value="${anuncia.qtd_estoque}" </c:if>>
                                        </div>
                                    </div><button type="submit">Enviar</button>

                                </div>
                            </div>
                    </div>
                </form>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </body>
</html>