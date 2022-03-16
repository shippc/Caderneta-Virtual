<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menuindex.jsp"/> 

        <section class="intro-single" id="introducao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">

                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a class="meneee" href="index.jsp">Página Inicial</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Cadastro de Usuário </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container p-t-20">
            <form class="formulario" action="ValidarForm" method="post">
                <h2 class="text-center p-b-50 p-t-20">Formulário de Cadastro</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">E-mail</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="email" name="txtEmail" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Senha</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="password" name="txtSenha" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome Completo</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtNome" id="nome" placeholder="Digite o seu nome completo" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Data de Nascimento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="date" name="txtData" id="data_nasc" placeholder="dd/mm/aaaa" required> 
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Etnia</label>
                        <div class="wrap-input">
                            <select name="optionEtnia" id="etnia" class="inputdadim">
                                <option selected>Escolha</option>
                                <option>Branca</option>
                                <option>Negra</option>
                                <option>Amarela</option>
                                <option>Parda</option>
                                <option>Indígena</option>
                                <option></option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome do Pai</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtPai" id="nome_pai" placeholder="Digite o nome completo do seu pai">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-male" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Nome da Mãe</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtMae" id="nome_mae" placeholder="Digite o nome completo da sua mãe" required>  
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-female" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">CPF</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="cpf" id="cpf" placeholder="000.000.000-00" maxlenght="14">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="input">CEP</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCEP" class="inputdados" id="cep" placeholder="00000.000" maxlength="9">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        </div>        
                    </div>
                    <div class="form-group col-md-4">
                        <label for="input">RG</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="rg" id="rg" placeholder="00.000.000-00" maxlenght="13">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nº do Cartão SUS</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtSUS" id="cartao_sus" placeholder="000.0000.0000.0000" maxlength="18">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card-o"></i></span> 
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Registro Civil de Nascimento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtRegistro" id="registro_civil" placeholder="000000.00.00.0000.0.000000.000.0000000.00" maxlength="41">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-file-text"></i></span> 
                        </div>
                    </div>

                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Endereço</label>
                        <div class="wrap-input">
                            <input type="text" name="txtEndereco" class="inputdados" id="endereco" placeholder="Logradouro" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>  
                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <label for="input">Telefone</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="tel" name="txtTelefone" id="telefone" placeholder="(00) 0000-0000" maxlenght="10">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-phone" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Celular</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="tel" name="txtCelular" id="celular" placeholder="(00) 00000-0000" maxlenght="11">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados-phone"><i class="fa fa-mobile" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="input">Estado</label>
                        <div class="wrap-input">
                            <select name="optionEstado" id="estado" class="inputdadim" required>
                                <option selected value="">Escolha</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapá</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceará</option>
                                <option>Distrito Federal</option>
                                <option>Espírito Santo</option>
                                <option>Goiás</option>
                                <option>Maranhão</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerais</option>
                                <option>Pará</option>
                                <option>Paraíba</option>
                                <option>Paraná</option>
                                <option>Pernambuco</option>
                                <option>Piauí</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rondônia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>São Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>  
                        </div>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="input">Cidade</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCidade" class="inputdados" id="cidade" placeholder="Nome da sua cidade" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="input">Bairro</label>
                        <div class="wrap-input">
                            <input type="text" name="txtBairro" class="inputdados" id="bairro" placeholder="Nome do seu bairro" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center bot text-center">
                    <input type="hidden" name="acao" value="cadastrarUsuarioTotal">
                    <button type="submit" class="btn btn-primary btn-send">Cadastrar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>


        </div>

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
