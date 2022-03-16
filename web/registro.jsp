<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <%
        try {
            if (session.getAttribute("acesso") == null) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("Erro: " + e);
        }
    %>
    <head>
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
                                <li class="breadcrumb-item"> <a class="meneee" href="sidebar.jsp">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Minhas Vacinas </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <h1 class="text-center">Vacinas</h1>
            <div class="row p-t-100">
                <c:forEach items="${tabela}" var="tab">
                    <div class="col-md-12 col-lg-4 p-b-80 content-card">                                 
                            <div class="card card-v">
                                <h3 class="card-img-top text-center card-v-title">${tab.vacina}</h3>
                                <div class="card-body">
                                    <p class="card-text">
                                        Dose: ${tab.dose}<br>
                                        Reforço: ${tab.reforco}<br>
                                        Data: ${tab.data}<br>
                                        Lote: ${tab.lote}<br>
                                        Laboratório: ${tab.laboratorio}<br>
                                        Unidade: ${tab.local}<br>
                                        Nome do Vacinador: ${tab.vacinador}
                                    </p>
                                </div>
                            </div>                        
                    </div>
                </c:forEach>

            </div>
            <h1 class="text-center p-t-40">Campanhas</h1>
            <div class="row p-t-100">
                <c:forEach items="${campanha}" var="camp">
                    <div class="col-md-12 col-lg-4">                        
                        <div class="card card-v">
                            <h3 class="card-img-top text-center card-v-title">${camp.vacina}</h3>
                            <div class="card-body">
                                <p class="card-text">
                                    Dose: ${camp.dose}<br>
                                    Reforço: ${camp.reforco}<br>
                                    Data: ${camp.data}<br>
                                    Lote: ${camp.lote}<br>
                                    Laboratório: ${camp.laboratorio}<br>
                                    Unidade: ${camp.local}<br>
                                    Nome do Vacinador: ${camp.vacinador}
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
