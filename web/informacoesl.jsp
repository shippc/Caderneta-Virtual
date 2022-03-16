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
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <div class="container-fluid" style="padding: 0%;"> 

            <jsp:include page="menuinformacoesl.jsp" flush="true"/>

            <!-- Ínicio da Introdução das Informações -->
            <section class="intro-single" id="introducao">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="title-single-box">
                                <h1 class="title-single">Tudo que você precisa saber para uma vida com boa saúde!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="indexl.jsp">Pagina Inicial</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page"> Informações </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Fim da Introdução das Informações--> 

            <!-- Ínicio das Informações -->
            <section class="news-grid grid" style="padding-top: 5%;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/Perímetro cefálico.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="acompanhandol.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="acompanhandol.jsp"  target="_blank">Acompanhando a Saúde da Criança</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/hermosa-madre-camisa-azul-delantal-preparando-ensalada-vegetales-frescos-casa_1157-13941.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="alimentacaol.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="alimentacaol.jsp"  target="_blank">Alimentação Saudável da Criança</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/pequeno-bebe-chupando-leche-mama_8353-9468.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="amamentacaol.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="amamentacaol.jsp"  target="_blank">Amamentando o Bebê</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/mother-and-daughter-2629795_1920.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="desenvolvimentol.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="desenvolvimentol.jsp"  target="_blank">Desenvolvimento da Criança</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/baby-1866623_1920.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="primeirol.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="primeirol.jsp"  target="_blank">Os Primeiros Dias de Vida</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/20643.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="registrocivill.jsp" target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="registrocivill.jsp"  target="_blank">Registro Civil de Nascimento </a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/doctor-899037_1920.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="saudel.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="saudel.jsp"  target="_blank">Saúde da Criança</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/3556296.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="especiall.jsp"  target="_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="especiall.jsp"  target="_blank">Situações Especiais</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-4">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/primer-plano-mano-medico-guantes-azules-que-dan-jeringa-brazo-paciente_23-2148050551.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="calendariol.jsp" target="a_blank" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a target="a_blank" href="calendariol.jsp">Vacinação</a> </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            </section>
        </div>
        <!-- Fim das Informações --> 
        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
