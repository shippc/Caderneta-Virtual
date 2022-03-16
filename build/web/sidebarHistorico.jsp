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

                <div class="container-fluid">
                    <div class="lista">
                        <h2 class="text-center p-b-20">Sistema de Histórico</h2>
                        <div class="tab-content">                            
                            <table class="table table-sm table-responsive-md table-bordered table-hover text-center tab-historico">
                                <ul class="justify-content-center list-inline text-center p-b-15">
                                    <li class="list-inline-item p-r-10"><% out.print(acs.getEmail());%></li>
                                    <li class="list-inline-item">${usuarios.nascimento}</li>                                        
                                </ul>
                                <thead>
                                    <tr>
                                        <th style="width: 9%;">Data</th>
                                        <th>Idade</th>
                                        <th>Peso</th>
                                        <th>Altura</th>
                                        <th>Faixa Etária</th>
                                        <th>Perimetro Cefálico</th>
                                        <th>IMC</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${historico}" var="historico">
                                        <tr>
                                            <td>${historico.lancamento}</td>
                                            <td>${historico.idade}</td>
                                            <td>${historico.peso}</td>
                                            <td>${historico.altura}</td>
                                            <td>${historico.unidade}</td>
                                            <td>${historico.perimetro}</td>
                                            <td>${historico.IMC}</td>                                            
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
