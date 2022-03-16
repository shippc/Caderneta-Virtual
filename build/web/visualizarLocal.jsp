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
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <li class="breadcrumb-item color-b" aria-current="page"> Lista de Locais </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
         <div class="container-fluid" id="to-breadcrumb">
            <div class="lista">
                <h2 class="text-center p-b-50">Lista de Locais</h2>
                <table class="table table-sm table-responsive-sm table-bordered table-hover text-center tab-historico">
                    <thead>
                        <tr>
                            <th style="width: 13%;">ID Local</th>
                            <th style="width: 13%;">ID Endereço</th>
                            <th style="width: 25%;">Nome</th>
                            <th style="width: 15%;">Estado</th>
                            <th>CEP</th>
                            <th>Editar</th>
                            <th>Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${local}" var="local">
                            <tr>
                                <td>${local.idlocal}</td>
                                <td>${local.idendereco}</td>
                                <td>${local.nome}</td>
                                <td>${local.estado}</td>
                                <td>${local.cep}</td>
                                
                                
                                <td>
                                    <a href="/ProjetoIntegrador/ValidarLocal?acao=editarLocal&idlocal=${local.idlocal}&idendereco=${local.idendereco}">
                                        <span data-toggle="tooltip" title="Editar"><i class="fa fa-pencil-square" aria-hidden="true"></i></span>
                                    </a>
                                </td>
                                <td>
                                    <a href="/ProjetoIntegrador/ValidarLocal?acao=toexcluirLocal&idlocal=${local.idlocal}&idendereco=${local.idendereco}">
                                        <span data-toggle="tooltip" title="Excluir"><i class="fa fa-times-circle" aria-hidden="true"></i></span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>    
            </div>
        </div>

        
        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
