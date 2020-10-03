<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Green Building</title>
    </head>
    <body>
        <jsp:include page = "/WEB-INF/views/componentes/cabecalhoLojista.jsp" />
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="panel col">
                        <div class="panel-body ">
                            <form method="POST">
                                <p  class="h3 text-left" style="color:#000000"><font size="6" face="Impact, Charcoal, sans-serif">Cadastrar Loja</font></p>
                                <br>
                                <div class="row">
                                    <br>
                                    <br>
                                    <br>

                                    <div class="form-group col-md-8">
                                        <label for="exampleInputEmail1">Nome loja</label>
                                        <input type="text" class="form-control" id="nomeLoja" name="nomeLoja" aria-describedby="emailHelp" placeholder="Enter email">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="exampleInputPassword1">Cnpj</label>
                                        <input type="number" class="form-control" id="cnpj" name="cnpj" placeholder="number">
                                    </div>    
                                </div>
                                <div class="row">
                                    <br>
                                    <br>


                                    <div class="form-group col-md-4">
                                        <label for="exampleInputPassword1">Telefone fixo</label>
                                        <input type="number" class="form-control" id="fixo" name="fixo" placeholder="number">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="exampleInputPassword1">Telefone celular</label>
                                        <input type="number" class="form-control" id="celular" name="celular" placeholder="number">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="exampleInputPassword1">Whatsapp</label>
                                        <input type="number" name="whatsapp" class="form-control" id="whatsapp" placeholder="number">
                                    </div>
                                </div>
                                <div class="form-group col-med-12">
                                    <label for="exampleInputPassword1">E-mail pra contato</label>
                                    <input type="number" name="email" class="form-control" id="email" placeholder="text">
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block ">Cadastrar Loja</button>
                            </form>
                        </div>

                    </div>
                </div>
                <div class="col-md-2">                    
                   <!-- <img src="resources/img/img6.jpg" class="rounded float-left" alt="Imagem de um quadrado gen�rico com bordas arredondadas, em uma figure.">-->
                </div>             
            </div>

        </div>
        
        <br>
        <br>
        <br>
        <br>
        <jsp:include page = "/WEB-INF/views/componentes/footer.jsp"/>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>