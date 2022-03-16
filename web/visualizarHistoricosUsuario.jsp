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
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarHistorico?acao=listarHistoricos">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Lista de Hist�ricos </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container-fluid" id="to-breadcrumb">
            <div class="lista">
                <h2 class="text-center p-t-30 p-b-30"><p>Lista de Hist�ricos do Usu�rio </p><p class="active">${objeto.nome}</p></h2>
                <nav aria-label="breadcrumb" class="breadcumb-list breadcrumb-box d-flex justify-content-lg-center p-b-20">
                    <ol class="breadcrumb justify-content-lg-center">
                        <li class="breadcrumb-item color-b" aria-current="page"> Lista �nica </li>
                        <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarHistorico?acao=listarHistoricos">Lista Geral</a> </li>
                    </ol>
                </nav>
                <table class="table table-sm table-responsive-sm table-bordered table-hover text-center tab-historico">
                    <thead>
                        <tr>
                            <th style="width: 13%;">ID Hist�rico</th>
                            <th style="width: 13%;">ID Usu�rio</th>
                            <th>Lan�amento</th>
                            <th>Idade</th>
                            <th style="width: 10%;">Peso</th>
                            <th>Altura</th>
                            <th>Unidade</th>
                            <th>Perimetro</th>
                            <th>IMC</th>
                            <th>Editar</th>
                            <th>Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${historico}" var="historico">
                            <tr>
                                <td>${historico.idhistorico}</td>
                                <td>${historico.idusuario}</td>
                                <td>${historico.lancamento}</td>
                                <td>${historico.idade}</td>
                                <td>${historico.peso}</td>
                                <td>${historico.altura}</td>
                                <td>${historico.unidade}</td>
                                <td>${historico.perimetro}</td>
                                <td>${historico.IMC}</td>
                                <td>
                                    <a href="/ProjetoIntegrador/ValidarHistorico?acao=editarHistorico&idhistorico=${historico.idhistorico}">
                                        <span data-toggle="tooltip" title="Editar"><i class="fa fa-pencil-square" aria-hidden="true"></i></span>
                                    </a>
                                </td>
                                <td>
                                    <a href="/ProjetoIntegrador/ValidarHistorico?acao=excluirHistorico&idhistorico=${historico.idhistorico}">
                                        <span data-toggle="tooltip" title="Excluir"><i class="fa fa-times-circle" aria-hidden="true"></i></span>
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
