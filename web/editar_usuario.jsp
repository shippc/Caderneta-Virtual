<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            try {
                if (session.getAttribute("acesso") == null) {
                    System.out.println("Cheguei aqui");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                if (session.getAttribute("acesso") != null) {
                    AcessoBean acs = new AcessoBean();
                    acs = (AcessoBean) session.getAttribute("acesso");
                    if (acs.getTipo().equals("Usuario")) {
                        request.getRequestDispatcher("indexl.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            }
        %>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menulogin.jsp" flush="true"/>
        
        <section class="intro-single" id="introducao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarForm?acao=listarUsuario">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Edição de Usuário </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarForm" method="post">
                <h2 class="text-center p-b-50">Edição de Dados do Usuário</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">E-mail</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="email" name="txtEmail" value="${acesso.email}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Senha</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="password" name="txtSenha" value="${acesso.senha}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome Completo</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtNome" id="nome" value="${usuario.nome}" placeholder="Digite o seu nome completo">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Data de Nascimento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="date" name="txtData" id="data_nasc" value="${usuario.nascimento}" placeholder="dd/mm/aaaa">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Etnia</label>
                        <div class="wrap-input">
                            <select name="optionEtnia" id="etnia" class="inputdadim">
                                <option selected>${usuario.etnia}</option>
                                <option>Branca</option>
                                <option>Negra</option>
                                <option>Amarela</option>
                                <option>Parda</option>
                                <option>Indígena</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome do Pai</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtPai" id="nome_pai" value="${usuario.pai}" placeholder="Digite o nome completo do seu pai">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-male" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Nome da Mãe</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtMae" id="nome_mae" value="${usuario.mae}" placeholder="Digite o nome completo da sua mãe">  
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-female" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="input">CPF</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="cpf" id="cpf" value="${usuario.cpf}" placeholder="000.000.000-00" maxlenght="14">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">CEP</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCEP" class="inputdados" id="cep" value="${endereco.cep}" placeholder="00000.000" maxlength="9">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        </div>        
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">RG</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="rg" id="rg" value="${usuario.rg}" placeholder="00.000.000-00" maxlenght="13">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Telefone</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="tel" name="txtTelefone" id="telefone" value="${usuario.telefone}" placeholder="(00) 0000-0000" maxlenght="10">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-phone" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Nº do Cartão SUS</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtSUS" id="cartao_sus" value="${usuario.cartao_sus}" placeholder="000.0000.0000.0000" maxlength="18">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card-o"></i></span> 
                        </div>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="input">Registro Civil de Nascimento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtRegistro" id="registro_civil" value="${usuario.registro}" placeholder="000000.00.00.0000.0.000000.000.0000000.00" maxlength="41">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-file-text"></i></span> 
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Celular</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="tel" name="txtCelular" id="celular" value="${usuario.celular}" placeholder="(00) 00000-0000" maxlenght="11">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados-phone"><i class="fa fa-mobile" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Endereço</label>
                        <div class="wrap-input">
                            <input type="text" name="txtEndereco" class="inputdados" id="endereco" value="${endereco.endereco}" placeholder="Logradouro">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>  
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Estado</label>
                        <div class="wrap-input">
                            <select name="optionEstado" id="estado" class="inputdadim">
                                <option selected>${endereco.estado}</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapa</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceara</option>
                                <option>Distrito Federal</option>
                                <option>Espirito Santo</option>
                                <option>Goias</option>
                                <option>Maranhao</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerais</option>
                                <option>Para</option>
                                <option>Paraiba</option>
                                <option>Parana</option>
                                <option>Pernambuco</option>
                                <option>Piaui</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rondonia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>Sao Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>  
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Cidade</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCidade" class="inputdados" id="cidade" value="${endereco.cidade}" placeholder="Nome da sua cidade">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Bairro</label>
                        <div class="wrap-input">
                            <input type="text" name="txtBairro" class="inputdados" id="bairro" value="${endereco.bairro}" placeholder="Nome do seu bairro">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center bot text-center">
                    <input type="hidden" name="acao" value="atualizar">
                    <input type="hidden" name="txtIdEndereco" value="${endereco.idendereco}">
                    <input type="hidden" name="idusuario" value="${acesso.idusuario}">
                    <input type="hidden" name="txtIdUsuario" value="${usuario.idusuario}">
                    <button type="submit" class="btn btn-primary btn-send">Atualizar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>

            </form>


        </div>
        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
