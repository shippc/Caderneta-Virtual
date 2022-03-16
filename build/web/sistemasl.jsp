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

            <!-- �nicio da Introdu��o dos Sistemas -->
            <section class="intro-single" id="introducao">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="title-single-box">
                                <h1 class="title-single">Conhe�a um pouco dos Sistemas que fornecemos!</h1>
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
            <!-- Fim da Introdu��o dos Sistemas -->

            <!-- �nicio dos Sistemas -->
            <section class="section-about">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="about-img-box"> <img src="image/computer-767776_1920.jpg" alt="" class="img-fluid"> </div>
                            <div class="sinse-box">
                                <h3 class="sinse-title">Sistemas</h3>
                            </div>
                        </div>
                        <!-- �nicio do Sistema de Vacina��o -->
                        <div class="col-md-12 section-t8" id="vacinacao">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-7 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Sistema de Vacina��o</h3>
                                    </div>
                                    <p class="color-text-a text-justify">Por meio do Sistema de Vacina��o que � poss�vel tomar as vacinas. Esse Sistema � o fundamental para que os outros funcionem, porque somente atrav�s da vacina��o que ser�o disponibilizados os seus hist�ricos e as suas vacinas tomadas.</p>
                                    <p class="color-text-a text-justify">Apenas empresas cadastradas pelos nossos parceiros que ser�o disponibilizadas nossos Sistemas. N�o � qualquer lugar que vai ter acesso liberado da Caderneta Virtual. Dito isso, nosso Sistema de Vacina��o indica quais lugares est�o cadastrados e o usu�rio escolhe qual � o mais acess�vel.</p>
                                </div>
                                <div class="col-md-5">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a"> <img src="image/vacina��o.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fim do Sistema de Vacina��o -->
                        <!-- �nicio do Sistema de Consulta -->
                        <div class="col-md-12 section-t8" id="consulta">
                            <div class="row">                               
                                <div class="col-md-6 col-lg-7 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Sistema de Consulta</h3>
                                    </div>
                                    <p class="color-text-a text-justify">Atrav�s do Sistema de Consulta � poss�vel voc� consultar suas vacinas online em qualquer lugar e em qualquer dispositivo desde que haja conex�o com a internet. A medida em que voc� vai tomando as vacinas e as mesmas forem lan�adas no nosso Sistema, ser� disponibilizada em sua conta para visualiza��o.</p>
                                    <p class="color-text-a text-justify"> Al�m armazenar as suas vacinas o nosso Sistema ir� te alertar quais vacinas faltam para voc� tomar, qual a pr�xima dose e quando ser� a pr�xima dose.</p>
                                </div>
                                <div class="col-md-5">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a"> <img src="image/tablet-791050_1920.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fim do Sistema de Consulta -->
                        <!-- �nicio do Sistema de Hist�rico -->
                        <div class="col-md-12 section-t8" id="historico">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-7 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Sistema de Hist�rico</h3>
                                    </div>
                                    <p class="color-text-a text-justify"> O nosso Sistema de Hist�rico n�o � muito diferente do Sistema de Consulta. A medida em que voc� vai sendo vacinado, suas informa��es como: Peso, Altura, Idade, Faixa Et�ria e se for um beb�, Per�metro Cef�lico, ser�o armazenadas e disponibilizadas para visualiza��o.</p>
                                    <p class="color-text-a text-justify"> A cada vacina tomada ser� anotado suas informa��es e lan�ada os seus dados daquele momento e assim formando um hist�rico da sua sa�de e do seu desenvolvimento.</p>
                                </div>
                                <div class="col-md-5">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a"> <img src="image/paper-3320628_1920.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fim do Sistema de Hist�rico -->
                    </div>
                </div>
            </section>
        </div>
        <!-- Fim dos Sistemas -->

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
