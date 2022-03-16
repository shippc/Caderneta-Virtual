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

            <jsp:include page="menusistemasl.jsp" flush="true"/>

            <!-- Ínicio da Introdução dos Sistemas -->
            <section class="intro-single" id="introducao">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="title-single-box">
                                <h1 class="title-single">Conheça um pouco dos Sistemas que fornecemos!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="indexl.jsp">Pagina Inicial</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page"> Sistemas </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Fim da Introdução dos Sistemas -->

            <!-- Ínicio dos Sistemas -->
            <section class="section-about">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="about-img-box"> <img src="image/computer-767776_1920.jpg" alt="" class="img-fluid"> </div>
                            <div class="sinse-box">
                                <h3 class="sinse-title">Sistemas</h3>
                            </div>
                        </div>
                        <!-- Ínicio do Sistema de Vacinação -->
                        <div class="col-md-12 section-t8" id="vacinacao">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-7 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Sistema de Vacinação</h3>
                                    </div>
                                    <p class="color-text-a text-justify">Por meio do Sistema de Vacinação que é possível tomar as vacinas. Esse Sistema é o fundamental para que os outros funcionem, porque somente através da vacinação que serão disponibilizados os seus históricos e as suas vacinas tomadas.</p>
                                    <p class="color-text-a text-justify">Apenas empresas cadastradas pelos nossos parceiros que serão disponibilizadas nossos Sistemas. Não é qualquer lugar que vai ter acesso liberado da Caderneta Virtual. Dito isso, nosso Sistema de Vacinação indica quais lugares estão cadastrados e o usuário escolhe qual é o mais acessível.</p>
                                </div>
                                <div class="col-md-5">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a"> <img src="image/vacinação.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fim do Sistema de Vacinação -->
                        <!-- Ínicio do Sistema de Consulta -->
                        <div class="col-md-12 section-t8" id="consulta">
                            <div class="row">                               
                                <div class="col-md-6 col-lg-7 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Sistema de Consulta</h3>
                                    </div>
                                    <p class="color-text-a text-justify">Através do Sistema de Consulta é possível você consultar suas vacinas online em qualquer lugar e em qualquer dispositivo desde que haja conexão com a internet. A medida em que você vai tomando as vacinas e as mesmas forem lançadas no nosso Sistema, será disponibilizada em sua conta para visualização.</p>
                                    <p class="color-text-a text-justify"> Além armazenar as suas vacinas o nosso Sistema irá te alertar quais vacinas faltam para você tomar, qual a próxima dose e quando será a próxima dose.</p>
                                </div>
                                <div class="col-md-5">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a"> <img src="image/tablet-791050_1920.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fim do Sistema de Consulta -->
                        <!-- Ínicio do Sistema de Histórico -->
                        <div class="col-md-12 section-t8" id="historico">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-7 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Sistema de Histórico</h3>
                                    </div>
                                    <p class="color-text-a text-justify"> O nosso Sistema de Histórico não é muito diferente do Sistema de Consulta. A medida em que você vai sendo vacinado, suas informações como: Peso, Altura, Idade, Faixa Etária e se for um bebê, Perímetro Cefálico, serão armazenadas e disponibilizadas para visualização.</p>
                                    <p class="color-text-a text-justify"> A cada vacina tomada será anotado suas informações e lançada os seus dados daquele momento e assim formando um histórico da sua saúde e do seu desenvolvimento.</p>
                                </div>
                                <div class="col-md-5">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a"> <img src="image/paper-3320628_1920.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fim do Sistema de Histórico -->
                    </div>
                </div>
            </section>
        </div>
        <!-- Fim dos Sistemas -->

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
