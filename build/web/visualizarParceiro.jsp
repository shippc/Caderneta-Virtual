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
                                <li class="breadcrumb-item color-b" aria-current="page"> Lista de Parceiros </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
         <div class="container-fluid" id="to-breadcrumb">
            <div class="lista">
                <h2 class="text-center p-b-50">Lista de Parceiros</h2>
                <table class="table table-sm table-responsive-sm table-bordered table-hover text-center">
                    <thead>
                        <tr>
                            <th style="width: 12%;">ID Parceiro</th>
                            <th style="width: 12%;">ID Endereço</th>
                            <th style="width: 17%;">Nome</th>
                            <th style="width: 17%;">Email</th>
                            <th>CNPJ</th>
                            <th style="width: 10%;">Editar</th>
                            <th style="width: 10%;">Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${parceiro}" var="parceiro">
                            <tr>
                                <td>${parceiro.idparceiro}</td>
                                <td>${parceiro.idendereco}</td>
                                <td>${parceiro.nome}</td>
                                <td>${parceiro.email}</td>
                                <td>${parceiro.cnpj}</td>
                                <td>
                                    <a href="/ProjetoIntegrador/ValidarParceiro?acao=editarParceiro&idparceiro=${parceiro.idparceiro}&idendereco=${parceiro.idendereco}">
                                        <span data-toggle="tooltip" title="Editar"><i class="fa fa-pencil-square" aria-hidden="true"></i></span>
                                    </a>
                                </td>
                                <td>
                                    <a href="/ProjetoIntegrador/ValidarParceiro?acao=toexcluirParceiro&idparceiro=${parceiro.idparceiro}&idendereco=${parceiro.idendereco}">
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
