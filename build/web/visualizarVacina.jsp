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
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="head.jsp"/>
        <title>Caderneta Virtual</title>
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
                                <li class="breadcrumb-item"> <a class="meneee" href="sidebar.jsp">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Lista de Vacinas </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container-fluid" id="to-breadcrumb">
            <div class="lista">
                <h2 class="text-center p-b-50">Lista de Vacinas</h2>
                <table class="table table-sm table-responsive-sm table-bordered table-hover text-center">
                    <thead>
                        <tr>
                            <th style="width: 7%;">ID</th>
                            <th>Nome</th>
                            <th>Doses</th>
                            <th>Intervalo</th>
                            <th>Primeira Dose</th>
                            <th>Editar</th>
                            <th>Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${vacina}" var="vacina">
                            <tr>
                                <td>${vacina.idvacina}</td>
                                <td>${vacina.nome}</td>
                                <td>${vacina.doses}</td>
                                <td>${vacina.intervalo}</td>
                                <td>${vacina.primeira_dose}</td>
                                <td class="edit">
                                    <a href="/ProjetoIntegrador/ValidarVacina?acao=editarVacina&idvacina=${vacina.idvacina}">
                                        <span data-toggle="tooltip" title="Editar"><i class="fa fa-pencil-square" aria-hidden="true"></i></span>
                                    </a>
                                </td>
                                <td class="delete">
                                    <a href="/ProjetoIntegrador/ValidarVacina?acao=toexcluirVacina&idvacina=${vacina.idvacina}">
                                        <span data-toggle="tooltip" title="Excluir"><i class="fa fa-times-circle" aria-hidden="true"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
