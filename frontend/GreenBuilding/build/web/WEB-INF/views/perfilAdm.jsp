
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         
        <jsp:include page = "/WEB-INF/views/componentes/cabecalhoAdm.jsp" />

        <c:forEach var="user" items="${userList}">
            <h6 style="padding: 50px;"><center>Bem vindo Administrador!</center></h6></c:forEach>
            


<!--        <a data-toggle="modal" href="#myModal" class="btn btn-primary">Cadastrar material</a>-->

<!--        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content" style="width: 500px">
                    <div class="modal-header">
                        <button type="button" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Cadastro de material</h4>
                    </div><div class="container"></div>
                    <div class="modal-body">
                        <form action="<c:url value="/login/perfil"/>" method="POST">
                            <form action="<c:url value="/cadastroCategoria"/>" method="POST">
                                <label for="exampleInputEmail1">Categoria</label>
                                <input type="text" id="nomeCategoria" name="nomeCategoria" class="form-control"  aria-describedby="emailHelp" placeholder="digite a categoria"><br><br>
                                <label for="exampleInputEmail1">Descricao</label>
                                <input type="text" id="descricaoCategoria" name="descricaoCategoria" class="form-control"  aria-describedby="emailHelp" placeholder="digite a descricao">

                                <form action="<c:url value="/cadastroTipo"/>" method="POST">
                                    <label for="exampleInputEmail1">Tipo</label>
                                    <input type="text" id="nomeTipo" name="nomeTipo" class="form-control"  aria-describedby="emailHelp" placeholder="digite o tipo"><br><br>
                                    <label for="exampleInputEmail1">Descricao</label>
                                    <input type="text" id="descricaoTipo" name="descricaoTipo" class="form-control"  aria-describedby="emailHelp" placeholder="digite a descricao">                    

                                    <form action="<c:url value="/cadastroMaterialAdm"/>" method="POST">
                                        <label for="exampleInputEmail1">Nome material</label>
                                        <input type="text" class="form-control" id="nomeMaterial" name="nomeMaterial" aria-describedby="emailHelp" placeholder="digite o nome do material">
                                        <label for="exampleInputEmail1">Descrição</label>
                                        <input type="text" class="form-control" id="descricaoMaterial" name="descricaoMaterial" aria-describedby="emailHelp" placeholder="digite a descricao">
                                        <input type="file" name="pic" accept="image/*">
                                        <label for="exampleInputEmail1">Fabricante</label>
                                        <input type="text" class="form-control" id="fabricante" name="fabricante" aria-describedby="emailHelp" placeholder="digite o nome do fabricante">

                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">Cadastrar</button>

                                        </div>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>

                                        </div>

                                        </div>
                                        </div>
                                        </div>


                                        <div class="modal fade" id="cadastroMaterial" tabindex="-1" role="dialog" aria-labelledby="cadastroMaterial" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="cadastroMaterialH5">Cadastro</h5>
                                                        <button type="button" id="cadastroMaterialButtom" name="cadastroMaterialButtom" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>

                                                        <div>
                                                            <form action="<c:url value="/cadastroMaterialAdm"/>" method="POST">
                                                                <label for="exampleInputEmail1">Nome</label>
                                                                <input type="text" id="nomeMaterial" name="nomeMaterial" class="form-control"  aria-describedby="emailHelp" placeholder="digite a categoria"><br><br>
                                                                <label for="exampleInputEmail1">Descricao</label>
                                                                <input type="text" id="descricaoMaterial" name="descricaoMaterial" class="form-control"  aria-describedby="emailHelp" placeholder="digite a descricao">

                                                                <button type="submit" class="btn btn-primary">Cadastrar</button>

                                                            </form>
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                        </div>

                                                    </div><br><br>      

                                                </div>
                                            </div>
                                        </div>
                                        <br><br>









                                        <div class="modal fade" id="cadastroCategoriaDiv" tabindex="-1" role="dialog" aria-labelledby="cadastroCategoriaDiv" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="cadastroCategoriaH5">Cadastro Categoria</h5>
                                                        <button type="button" id="cadastroCategoriaButtom" name="cadastroCategoriaButtom" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>

                                                        <div class="modal-footer">
                                                            <form action="<c:url value="/cadastroCategoria"/>" method="POST">
                                                                <label for="exampleInputEmail1">Categoria</label>
                                                                <input type="text" id="nomeCategoria" name="nomeCategoria" class="form-control"  aria-describedby="emailHelp" placeholder="digite a categoria"><br><br>
                                                                <label for="exampleInputEmail1">Descricao</label>
                                                                <input type="text" id="descricaoCategoria" name="descricaoCategoria" class="form-control"  aria-describedby="emailHelp" placeholder="digite a descricao">

                                                                <button type="submit" class="btn btn-primary">Cadastrar</button></form>
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                        </div>

                                                    </div><br><br>      

                                                </div>
                                            </div>
                                        </div>
                                        <br><br>




                                         Modal 
                                        <div class="modal fade" id="cadastroTipo" tabindex="-1" role="dialog" aria-labelledby="cadastroTipo" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="cadastroTipo">Cadastro tipo</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>

                                                        <div class="modal-footer">
                                                            <form action="<c:url value="/cadastroTipo"/>" method="POST">
                                                                <label for="exampleInputEmail1">Tipo</label>
                                                                <input type="text" id="nomeTipo" name="nomeTipo" class="form-control"  aria-describedby="emailHelp" placeholder="digite o tipo"><br><br>
                                                                <label for="exampleInputEmail1">Descricao</label>
                                                                <input type="text" id="descricaoTipo" name="descricaoTipo" class="form-control"  aria-describedby="emailHelp" placeholder="digite a descricao">

                                                                <button type="submit" class="btn btn-primary">Cadastrar</button>
                                                            </form>
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                        </div>

                                                    </div><br><br>



                                                </div>
                                            </div>
                                        </div>
                                        <br><br>
                                         Modal 
                                        <div class="modal fade" id="cadastroPratica" tabindex="-1" role="dialog" aria-labelledby="cadastroPratica" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="cadastroPratica">Cadastro praticas sustentaveis</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div><br><br>
                                                    <form>
                                                        <span>Sobre a prática sustentável</span><br>
                                                        <label for="exampleInputEmail1">Nome</label><br>
                                                        <input type="text" class="form-control" id="descricaoTipo" name="tipo" aria-describedby="emailHelp" placeholder="digite o tipo">
                                                        <label for="exampleInputEmail1">Descricao</label>
                                                        <input type="text" class="form-control" id="descricaoTipo" name="descricaoTipo" aria-describedby="emailHelp" placeholder="digite a descricao">
                                                        <label for="exampleInputEmail1">Material utilizado</label>
                                                        <input type="text" class="form-control" id="descricaoTipo" name="descricaoTipo" aria-describedby="emailHelp" placeholder="digite a descricao">
                                                        <input type="file" name="pic" accept="image/*">
                                                        <input type="submit"><br><br>
                                                    </form>
                                                    <br><br>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary">Cadastrar</button>
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#materiaisCadastrados" role="tab" aria-controls="pills-home" aria-selected="true">Materiais cadastrados</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#categoriasCadastradas" role="tab" aria-controls="categoriasCadastradas" aria-selected="false">Categorias cadastradas</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#tiposCadastrados" role="tab" aria-controls="tiposCadastrados" aria-selected="false">Tipos cadastrados</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#lojasCadastradas" role="tab" aria-controls="lojasCadastradas" aria-selected="false">Lojas cadastradas</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#praticasSustentaveis" role="tab" aria-controls="praticasSustentaveis" aria-selected="false">Práticas Sustentáveis Cadastradas</a>
                                            </li>
                                        </ul>


                                        <div class="tab-content" id="pills-tabContent">
                                            <div class="tab-pane fade show active" id="materiaisCadastrados" role="tabpanel" aria-labelledby="pills-home-tab">
                                                <c:if test="${materialList.isEmpty()}">
                                                    <div class="text-center">
                                                        <span>Não há materiais cadastrados</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${!materialList.isEmpty()}">
                                                    <div class="col-md-7" style="display: flex;">



                                                        <div class="col-md-5">



                                                            <c:forEach var="material" items="${materialList}" >
                                                                <h3>${material.nome}</h3>
                                                                <p>Descrição do material: ${material.descricao}</p>
                                                                <p>Fabricante do material: ${material.fabricante}</p>

                                                                <a class="btn btn-primary" href="<c:url value="/listMateriais/${material.id}/update"/>" data-toggle="modal" data-target="#editarMaterial">
                                                                    Editar
                                                                </a>
                                                                <a class="btn btn-primary" href="<c:url value="/listMateriais/${material.id}/update"/>">
                                                                    Editar
                                                                </a>
                                                                <a 
                                                                    href="<c:url value="/listMateriais/${material.id}/delete"/>" class="btn btn-danger">
                                                                    Excluir
                                                                </a>

                                                                <hr>
                                                            </c:forEach>








                                                            <div class="modal fade" id="editarMaterial" tabindex="-1" role="dialog" aria-labelledby="editarMaterialDiv" aria-hidden="true">
                                                                <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="editarMaterialH5">Editar material</h5>
                                                                            <button type="button" id="editarMaterialButtom" name="editarMaterialButtom" class="close" data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>

                                                                            <div class="modal-footer">
                                                                                <form action="<c:url value="/listMateriais/2/update"/>" method="POST">
                                                                                    <label for="material">Material</label>
                                                                                    <input type="text" id="" value="${material.nome}" name="nome" class="form-control"  aria-describedby="emailHelp" placeholder="">
                                                                                    <label for="descricaoMaterial">Descrição</label>
                                                                                    <input type="text" id="" value="${material.descricao}" name="descricao" class="form-control"  aria-describedby="emailHelp" placeholder=""><br><br>


                                                                                    <button type="submit" class="btn btn-primary" >Editar</button></form>
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                                            </div>

                                                                        </div><br><br>      

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <br><br>


                                                        </div>

                                                    </div>



                                                </c:if>



                                                <hr>


                                            </div>







                                            <div class="tab-pane fade" id="categoriasCadastradas" role="tabpanel" aria-labelledby="categoriasCadastradas">
                                                <c:if test="${categoriaList.isEmpty()}">
                                                    <div class="text-center">
                                                        <span>Não há categorias cadastrados</span>
                                                    </div>
                                                </c:if>

                                                <c:if test="${!categoriaList.isEmpty()}">
                                                    <div class="col-md-12">
                                                        <c:forEach var="categoria" items="${categoriaList}" >
                                                            <p>Nome categoria: ${categoria.nome}</p>
                                                            <p>Descrição categoria: ${categoria.descricao}</p>

                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editarMaterial">
                                                                Editar
                                                            </button>
                                                            <button type="button" class="btn btn-danger">
                                                                Excluir
                                                            </button>
                                                            <hr>
                                                        </c:forEach>
                                                    </div>  
                                                </c:if>


                                            </div>















                                            <div class="tab-pane fade" id="tiposCadastrados" role="tabpanel" aria-labelledby="tiposCadastrados">
                                                <div class="col-md-12">
                                                    <c:if test="${tipoList.isEmpty()}">
                                                        <div class="text-center">
                                                            <span>Não há tipos cadastrados</span>
                                                        </div>
                                                    </c:if>
                                                    <c:forEach var="tipo" items="${tipoList}" >
                                                        <p>Nome tipo: ${tipo.nome}</p>
                                                        <p>Descrição tipo: ${tipo.descricao}</p>

                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editarMaterial">
                                                            Editar
                                                        </button>
                                                        <button type="button" class="btn btn-danger">
                                                            Excluir
                                                        </button>
                                                        <hr>
                                                    </c:forEach>



                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="lojasCadastradas" role="tabpanel" aria-labelledby="lojasCadastradas">
                                                <c:if test="${lojaList eq null}">
                                                    <div class="text-center">
                                                        <span>Não há lojas cadastrados</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${lojaList ne null}">
                                                    <div class="col-md-12">
                                                        <c:forEach var="loja" items="${lojaList}" >
                                                            <p>Nome loja: ${loja.nome}</p>
                                                            <p>Cnpj: ${loja.cpnj}</p>
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editarMaterial">
                                                                Editar
                                                            </button>
                                                            <button type="button" class="btn btn-danger">
                                                                Excluir
                                                            </button>
                                                            <hr>
                                                        </c:forEach>

                                                    </div>
                                                </c:if>
                                            </div>

                                        </div>

                                        <div class="tab-pane fade" id="praticasSustentaveis" role="tabpanel" aria-labelledby="praticasSustentaveis">Praticas sustentaveis</div>

                                        </div>

                                        </div>



                                         Optional JavaScript 


                                        <script>
                                            $('#openBtn').click(function () {
                                                $('#myModal').modal({show: true})
                                            });

                                        </script>-->
                                        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                                        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                                        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                                        </body>
                                        </html>
