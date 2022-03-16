
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
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menuindexl.jsp"/>        

        <!-- Carousel -->
        <div class="intro intro-carousel" style="padding-top: 3%;">
            <div id="carousel" class="owl-carousel owl-theme">
                <div class="carousel-item-a intro-item bg-image" style="background-image: url(image/three-persons-sitting-on-the-stairs-talking-with-each-other-1438072.jpg)">
                    <div class="overlay overlay-a"></div>
                    <div class="intro-content display-table">
                        <div class="table-cell">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="intro-body">
                                            <p class="intro-title-top"><br>
                                            </p>
                                            <h1 class="intro-title mb-4"> Consulta das suas <span class="color-b">Vacinas </span> Online!</h1>
                                            <p class="intro-subtitle intro-price"> <a href="sistemasl.jsp#consulta"><span class="price-a">Saiba Mais</span></a> </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item-a intro-item bg-image" style="background-image: url(image/12966.jpg)">
                    <div class="overlay overlay-a"></div>
                    <div class="intro-content display-table">
                        <div class="table-cell">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="intro-body">
                                            <h1 class="intro-title mb-4"> Descubra como <span class="color-b">recuperar</span> seu cartão de vacinas! <br>
                                            </h1>
                                            <p class="intro-subtitle intro-price"> <a href="calendariol.jsp#carteira"><span class="price-a">Saiba Mais</span></a> </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item-a intro-item bg-image" style="background-image: url(image/man-wearing-white-dress-shirt-3184316.jpg)">
                    <div class="overlay overlay-a"></div>
                    <div class="intro-content display-table">
                        <div class="table-cell">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="intro-body">
                                            <h1 class="intro-title mb-4">Gostaria de trabalhar conosco? <br>
                                                <span class="color-b">Junte-se </span> a nós!</h1>
                                            <p class="intro-subtitle intro-price"> <a href="contato.jsp"><span class="price-a">Saiba Mais</span></a> </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Fim do Carousel --> 

        <!-- Seção de Introdução do Site -->

        <div class="container" id="introducao">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="featurette-heading text-center title-a">Seja Bem-vindo a Caderneta Virtual!</h2>
                    <br>
                    <p class="lead text-center">A Caderneta Virtual e toda sua equipe lhe deseja boas-vindas!<br>
                        Ficamos felizes que você esteja visitando nosso Web Site e esperamos que você utilize de nossos serviços. <br>
                        Nosso principal objetivo a longo prazo é sempre alcançar resultados completos para a sua saúde.<br>
                        Mas, no processo, também mantemos o foco em oferecer o melhor serviço ao usuário. Estamos sempre fazendo do nosso sistema o lugar mais seguro e confiável possível!</p>
                </div>
            </div>
        </div>
        <div class="container marketing"> 
            <!-- Fim da Introdução do Site --> 

            <!-- Ínicio de Serviços -->
            <section class="section-services section-t8">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title-wrap text-center">
                                <div class="title-box">
                                    <h2 class="title-a">Sistemas</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card-box-c foo">
                                <div class="card-header-c d-flex" >
                                    <div class="card-box-ico"> <span class="fa fa-id-badge"></span> </div>
                                    <div class="card-title-c align-self-center">
                                        <h2 class="title-c">Consultas</h2>
                                    </div>
                                </div>
                                <div class="card-body-c">
                                    <p class="content-c">Você poderá consultar online as suas vacinas em qualquer dispositivo. </p>
                                </div>
                                <div class="card-footer-c"> <a href="sistemas.html#consulta" class="link-c link-icon meneee">Saiba mais <span class="ion-ios-arrow-forward"></span> </a> </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-c foo">
                                <div class="card-header-c d-flex">
                                    <div class="card-box-ico"> <span class="fa fa-file-text"></span> </div>
                                    <div class="card-title-c align-self-center">
                                        <h2 class="title-c">Históricos</h2>
                                    </div>
                                </div>
                                <div class="card-body-c">
                                    <p class="content-c">Você poderá acompanhar o seu histórico
                                        online em qualquer dispositivo.</p>
                                </div>
                                <div class="card-footer-c"> <a href="sistemas.html#historico" class="link-c link-icon meneee">Saiba mais <span class="ion-ios-arrow-forward"></span> </a> </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card-box-c foo">
                                <div class="card-header-c d-flex">
                                    <div class="card-box-ico"> <span class="fa fa-user-md"></span> </div>
                                    <div class="card-title-c align-self-center">
                                        <h2 class="title-c">Vacinações</h2>
                                    </div>
                                </div>
                                <div class="card-body-c">
                                    <p class="content-c">Você poderá encontar lugares mais próximos e acessiveis para tomar vacinas.</p>
                                </div>
                                <div class="card-footer-c"> <a href="sistemas.html#vacinacao" class="link-c link-icon meneee">Saiba mais <span class="ion-ios-arrow-forward"></span> </a> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Fim dos Serviços--> 

            <!-- Ínicio das Notícias -->
            <section class="section-news section-t8">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title-wrap justify-content-between">
                                <div class="title-box">
                                    <h2 class="title-a text-center">Últimas Notícias</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="new-carousel" class="owl-carousel owl-theme">
                        <div class="carousel-item-c">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/n1.jpg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="#" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="#">Dia D da vacinação contra o Sarampo</a> </h2>
                                        </div>
                                        <div class="card-date"> <span class="date-b">30 de Novembro de 2019</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item-c">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/n2.gif" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="#" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="#">Vacinação contra a Gripe</a> </h2>
                                        </div>
                                        <div class="card-date"> <span class="date-b">12 de Dezembro de 2019</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item-c">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/n3.gif" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="#" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="#">Surto de Sarampo no Brasil <br>
                                                </a> </h2>
                                        </div>
                                        <div class="card-date"> <span class="date-b">19 de Novembro de 2019</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item-c">
                            <div class="card-box-b card-shadow news-box">
                                <div class="img-box-b"> <img src="image/n4.jpeg" alt="" class="img-b img-fluid"> </div>
                                <div class="card-overlay">
                                    <div class="card-header-b">
                                        <div class="card-category-b"> <a href="#" class="category-b">Saiba mais</a> </div>
                                        <div class="card-title-b">
                                            <h2 class="title-2"> <a href="#">Vacina contra HPV reduz lesões pré-cancerosas em até 51%</a> </h2>
                                        </div>
                                        <div class="card-date"> <span class="date-b">02 de Julho de 2019</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Fim das Notícias --> 
        </div>

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
