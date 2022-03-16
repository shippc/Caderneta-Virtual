<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            try {
                if (session.getAttribute("acesso") == null) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            }
        %>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menulogin.jsp"/>
        <jsp:useBean id="id" scope="request" class="br.com.senaces.bean.AcessoBean"/>

        <%
            AcessoBean acs = new AcessoBean();
            acs = (AcessoBean) session.getAttribute("acesso");
        %>

        <div class="wrapper" id="introducao"> 
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <button type="button" class="close" id="collapseSidebar"> <span style="color: #000;" aria-hidden="true">&times;</span> </button>
                    <h3 class="text-center">
                        <a class="meneee" href="sidebar.jsp">
                            <span style="font-size: 70pt;">
                            <i class="fa fa-user-circle text-center" aria-hidden="true"></i>
                            </span>
                        </a>
                    </h3>
                </div>
                <ul class="nav nav-tabs flex-column list-unstyled components text-center">
                    <li><a href="#subMenuPage" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Minha Conta</a>
                        <ul class="collapse list-unstyled" id="subMenuPage">
                            <li><a href="/ProjetoIntegrador/ValidarAcesso?acao=listarAcesso&idusuario=<% out.print(acs.getIdusuario()); %>">Meu Acesso</a></li>
                            <li><a href="/ProjetoIntegrador/ValidarForm?acao=listarDados&idusuario=<% out.print(acs.getIdusuario()); %>">Meus Dados</a></li>
                            <li><a href="/ProjetoIntegrador/ValidarForm?acao=listarEndereco&idusuario=<% out.print(acs.getIdusuario()); %>">Meu Endereço</a></li>
                        </ul>
                    </li>
                    <li><a href="/ProjetoIntegrador/ValidarHistorico?acao=listarHistoricoUsuario&idusuario=<% out.print(acs.getIdusuario()); %>">Histórico</a></li>
                    <li><a href="/ProjetoIntegrador/ValidarRegistro?acao=listarVacinas&idusuario=<% out.print(acs.getIdusuario());%>">Minhas Vacinas</a></li>
                    <li><a href="/ProjetoIntegrador/ValidarLocal?acao=listarLocais">Locais de Vacinação</a></li>
                </ul>
                <ul class="list-unstyled CTAs">
                    <li><a href="/ProjetoIntegrador/ValidarAcesso?acao=deslogar" class="deslogar">Deslogar</a></li>
                </ul>
            </nav>

            <!-- Page Content  -->

            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="btn btn-info"><span class="fa fa-bars"></span> </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> </button>
                        <%
                            if (acs.getTipo().equals("Administrador")) {
                        %>
                        <jsp:include page="menuadmin.jsp"/><%                            }
                        %>  
                    </div>
                </nav>
                <div class="container">
                    <form class="formulario" action="ValidarForm" method="post">
                        <h2 class="text-center" style="padding-bottom: 3%;">Dados do Usuário</h2>
                        <fieldset disabled>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="disabledTextInput">E-mail</label>
                                    <div class="wrap-input">
                                        <input class="inputdados" type="email" name="txtEmail" id="disabledTextInputEmail" value="${acesso.email}">
                                        <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="disableTextInput">Senha</label>
                                    <div class="wrap-input">
                                        <input class="inputdados" type="password" name="txtSenha" id="disableTextInputPassword" value="${acesso.senha}">
                                        <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="input">Nome Completo</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="text" name="txtNome" id="nome" value="${usuario.nome}" required>
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="input">Data de Nascimento</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="date" name="txtData" id="data_nasc" value="${usuario.nascimento}" required>
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
                                    <input class="inputdados" type="text" name="txtPai" id="nome_pai" value="${usuario.pai}">
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-male" aria-hidden="true"></i></span>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="input">Nome da Mãe</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="text" name="txtMae" id="nome_mae" value="${usuario.mae}" required>
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-female" aria-hidden="true"></i></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label for="input">RG</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="text" name="rg" id="rg" value="${usuario.rg}">
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span> 
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="input">Telefone</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="tel" name="txtTelefone" id="telefone" value="${usuario.telefone}" maxlenght="10">
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="input">CPF</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="text" name="cpf" id="cpf" value="${usuario.cpf}">
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="input">Celular</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="tel" name="txtCelular" id="celular" value="${usuario.celular}" >
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados-phone"><i class="fa fa-mobile" aria-hidden="true"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="input">Nº do Cartão SUS</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="text" name="txtSUS" id="cartao_sus" value="${usuario.cartao_sus}">
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card-o"></i></span> 
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="input">Registro Civil de Nascimento</label>
                                <div class="wrap-input">
                                    <input class="inputdados" type="text" name="txtRegistro" id="registro_civil" value="${usuario.registro}">
                                    <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-file-text"></i></span>
                                </div>
                            </div>
                        </div>
                        <ul class="nav justify-content-center bot">
                            <input type="hidden" name="acao" value="atualizarDados">
                            <input type="hidden" name="txtIdUsuario" value="${usuario.idusuario}">
                            <input type="hidden" name="idusuario" value="${usuario.idusuario}">
                            <button type="submit" class="btn btn-primary btn-send">Atualizar</button>
                            <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                        </ul>
                    </form>
                </div>
            </div>
        </div>



        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
