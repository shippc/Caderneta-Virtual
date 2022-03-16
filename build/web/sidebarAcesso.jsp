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
        <jsp:include page="head.jsp"/>

    </head>
    <body>
        <jsp:include page="menulogin.jsp"/>
        <jsp:useBean id="id" scope="request" class="br.com.senaces.bean.AcessoBean"/>

        <%
            AcessoBean acs = new AcessoBean();
            acs = (AcessoBean) session.getAttribute("acesso");
            System.out.println("Bem vindo, " + acs.getTipo() + " " + acs.getEmail());
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
                    <form class="formulario">
                        <h2 class="text-center" style="padding-bottom: 3%;">Dados de Acesso</h2>
                        <fieldset disabled>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="disabledTextInput">Email</label>
                                    <div class="wrap-input">
                                        <input class="inputdados" type="email" name="txtEmail" id="disabledTextInputEmail" value="${acesso.email}">
                                        <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="disableTextInput">Senha</label>
                                    <div class="wrap-input">
                                        <input class="inputdados" type="password" name="txtSenha" id="disableTextInputPassword" value="${acesso.senha}">
                                        <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                    </div>

                                </div>
                            </div>
                        </fieldset>
                        <ul class="nav justify-content-center bot">
                            <!-- Botão que abre a janela modal -->
                            <button type="button" class="btn btn-primary btn-alter navbar-toggle-box-collapse d-none d-md-block" data-toggle="modal" data-target="#myModalAtualizar" aria-expanded="false"> <span aria-hidden="true">Alterar Dados</span></button>
                        </ul>
                    </form>
                </div>



                <!-- Início da Janela Modal Atualizar Acesso -->
                <div class="modal fade" id="myModalAtualizar" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header"> <!-- Header do Modal -->
                                <h5 class="modal-title text-center">Atualize seus Dados na Caderneta Virtual!</h5><!-- Título -->
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><!-- Botão fechar do Modal -->
                            </div>
                            <div class="modal-body"> <!-- Corpo do modal -->
                                <!-- Início do Formulário Atualizar Acesso -->
                                <form action="ValidarAcesso" id="formAtualizarAcesso" method="POST" name="formAtualizarAcesso">
                                    <span class="form-title fa fa-user-circle" id="user-cads"></span>
                                    <div class="wrap-input">
                                        <input class="input-login" type="email" id="tEmail" placeholder="Novo Email" name="txtCadastroEmail" id="txtCadastroEmail" required>
                                        <span class="focus-input-login"></span><span class="symbol-input-login"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                    </div>
                                    <div class="wrap-input">
                                        <input class="input-login" type="password" placeholder="Nova senha" name="my_password" id="my_password" required>
                                        <span class="focus-input-login"></span><span class="symbol-input-login"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                    </div>
                                    <div class="wrap-input">
                                        <input class="input-login" type="password" placeholder="Confirme a nova senha" name="my_conf_password" id="my_conf_password" required>
                                        <span class="focus-input-login"></span><span class="symbol-input-login"> <i class="fa fa-lock" aria-hidden="true"></i></span>
                                    </div>  
                                    <div class="container-form-btn">
                                        <input type="hidden" name="acao" value="atualizarAcesso">
                                        <input type="hidden" name="txtIdUsuario" value="<% out.print(acs.getIdusuario()); %>">
                                        <input type="hidden" name="idusuario" value="<% out.print(acs.getIdusuario()); %>">
                                        <button class="login-form-btn" type="button" onClick="SenhaValidada()">Enviar</button>
                                    </div>
                                    <div class="text-center p-t-14"><span class="txt1 a-modal">Memorize os seus novos dados para não perdê-los!</span></div> 
                                </form>
                                <!-- Fim do Formulário Atualizar Acesso -->
                            </div>
                            <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 80%;">
                            <div class="text-center p-b-25"><span class="txt1 a-modal">Mudou de idéia? <a class="txt2 menaaa" href="#" data-dismiss="modal" style="font-weight: bold;">Fechar janela</a></span></div>
                        </div>
                    </div>
                </div>
                <!-- Fim do Modal Atualizar Acesso -->  


            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>

    </body>
</html>
