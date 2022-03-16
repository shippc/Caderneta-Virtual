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
        <jsp:include page="head.jsp" flush="true"/>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <jsp:include page="menulogin.jsp" flush="true"/>
       
        <section class="intro-single" id="introducao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        <div class="title-single-box">
                            <h1 class="title-single">Encontre locais próximos a você para se vacinar!</h1>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a class="meneee" href="sidebar.jsp">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Locais </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
      
        <section class="section-about">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="about-img-box"> <img src="image/2666.jpg" alt="" class="img-fluid"> </div>
                        <div class="sinse-box">
                            <h3 class="sinse-title">Unidades de Saúde</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="container p-t-100 p-b-70">
            <div class="justify-content-center">
                <div class="row">
                    <div class="col-md-12 section-md-t3">
                        <div class="title-box">
                            <h3 class="title-a text-center">Localização das Unidades de Saúde</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="intro-single p-t-50">
            <div class="container">
                <div class="row">
                    <c:forEach items="${local}" var="local">
                        <div class="col-md-12 col-lg-8" style="margin-bottom:  10%;">
                            <div class="title-single-box">
                                <h4 class="title-location">${local.nome}, 
                                    ${local.endereco},
                                    ${local.bairro}, ${local.cidade} -
                                    ${local.estado}, ${local.cep}<br>
                                    Celular: ${local.celular} Telefone: ${local.telefone}
                                    </div>
                                    </div>
                    </c:forEach>                    
                </div>
            </div>
        </section> 
                                
        <jsp:include page="footer.jsp" flush="true"/>                                
        <jsp:include page="script.jsp" flush="true"/>                                
    </body>                                
</html>
