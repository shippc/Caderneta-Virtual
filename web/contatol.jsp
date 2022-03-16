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

            <jsp:include page="menucontatol.jsp" flush="true"/>

            <!-- Ínicio da Introdução do Contato -->
            <section class="intro-single" id="introducao">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="title-single-box">
                                <h1 class="title-single">Entre em contato para mais informações sobre a Caderneta Virtual!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="indexl.jsp">Pagina Inicial</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page"> Contato </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Fim da Introdução do Contato --> 

            <!-- Ínicio do Contato -->
            <section class="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="contact-map box" id="encontre">
                                <div id="map" class="contact-map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3741.571550372358!2d-40.310415985624736!3d-20.31799405573701!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xb817bc0191ffb1%3A0x983f891327aaa391!2sSENAC%20-%20Servi%C3%A7o%20Nacional%20de%20Aprendizagem%20Comercial!5e0!3m2!1spt-BR!2sbr!4v1577889721645!5m2!1spt-BR!2sbr"
                                            width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 section-t8" id="contato">
                            <div class="row">
                                <div class="col-md-7">
                                    <form class="form-a contactForm" action="" method="post" role="form">
                                        <div id="sendmessage">Sua mensagem foi enviada. Obrigado!</div>
                                        <div id="errormessage"></div>
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <input type="text" name="name" class="form-control form-control-lg form-control-a" placeholder="Seu Nome" data-rule="minlen:4" data-msg="Por favor, digite pelo menos 4 caracteres">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <div class="form-group">
                                                    <input name="email" type="email" class="form-control form-control-lg form-control-a" placeholder="Seu E-mail" data-rule="email" data-msg="Por favor, digite um email válido">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <div class="form-group">
                                                    <input type="text" name="subject" class="form-control form-control-lg form-control-a" placeholder="Assunto" data-rule="minlen:4" data-msg="Por favor, digite pelo menos 8 caracteres">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <div class="form-group">
                                                    <textarea name="message" class="form-control" cols="45" rows="8" data-rule="required" data-msg="Por favor, digite sua mensagem para nós" placeholder="Mensagem"></textarea>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-a">Enviar Mensagem</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-5 section-md-t3">
                                    <div class="icon-box section-b2">
                                        <div class="icon-box-icon"> <span class="ion-ios-paper-plane"></span> </div>
                                        <div class="icon-box-content table-cell">
                                            <div class="icon-box-title">
                                                <h4 class="icon-title">Fale Conosco</h4>
                                            </div>
                                            <div class="icon-box-content">
                                                <p class="mb-1">E-mail. <span class="color-a">cadernetavirtual@hotmail.com</span> </p>
                                                <p class="mb-1">Telefone. <span class="color-a">(27) 4002-8922</span> </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="icon-box section-b2">
                                        <div class="icon-box-icon"> <span class="ion-ios-pin"></span> </div>
                                        <div class="icon-box-content table-cell">
                                            <div class="icon-box-title">
                                                <h4 class="icon-title">Nosso Endereço</h4>
                                            </div>
                                            <div class="icon-box-content">
                                                <p class="mb-1"> Av. Mal. Mascarenhas de Moraes, 2077 <br>
                                                    Bento Ferreira, Vitória<br>
                                                    Brasil. </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="icon-box">
                                        <div class="icon-box-icon"> <span class="ion-ios-redo"></span> </div>
                                        <div class="icon-box-content table-cell">
                                            <div class="icon-box-title">
                                                <h4 class="icon-title">Redes Sociais</h4>
                                            </div>
                                            <div class="icon-box-content">
                                                <div class="socials-footer">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item">
                                                            <a href="#" class="link-one">
                                                                <i class="fa fa-facebook meneee" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="#" class="link-one">
                                                                <i class="fa fa-twitter meneee" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="#" class="link-one">
                                                                <i class="fa fa-instagram meneee" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="#" class="link-one">
                                                                <i class="fa fa-pinterest-p meneee" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a href="#" class="link-one">
                                                                <i class="fa fa-dribbble  meneee" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- Fim do Contato --> 
        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
