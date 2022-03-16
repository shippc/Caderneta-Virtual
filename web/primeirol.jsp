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
        <jsp:include page="menuinformacoesl.jsp" flush="true"/>
        <div class="container-fluid" style="padding: 0%;">
            <section class="intro-single" id="introducao">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="title-single-box">
                                <h1 class="title-single">Cuidados essenciais no in�cio da vida do beb�!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="informacoesl.jsp">Informa��es</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page">Os Primeiros Dias de Vida</li>
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
                            <div class="about-img-box"> <img src="image/pexels-photo-1973270.jpeg" alt="" class="img-fluid"> </div>
                            <div class="sinse-box">
                                <h3 class="sinse-title">Os Primeiros Dias de Vida</h3>
                            </div>
                        </div>
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Observando e Conhecendo o Beb�</h3>
                                    </div>
                                    <p class="color-text-a text-justify">No in�cio da vida, o beb� dorme bastante.
                                        Para garantir um bom sono � importante que ele durma em lugar tranquilo, arejado e limpo.
                                        Nos primeiros dias o beb� perde um pouco de peso, mas, por volta do d�cimo dia, j� recupera
                                        seu peso de nascimento. O beb� precisa de tranquilidade. Evite leva-lo a lugares onde haja 
                                        muita gente e muito barulho como supermercados e shopping.
                                    </p>
                                    <p class="color-text-a text-justify">O beb� nunca deve dormir de barriga para baixo (de bru�os).
                                        Recomenda-se que ele durma de barriga para cima. Cuide para que a boca e o nariz
                                        n�o fiquem cobertos. Para aquec�-lo, � prefer�vel agasalha-lo com mais roupas do
                                        que o cobrir com muitas cobertas.                                        
                                    </p>
                                    <p class="color-text-a text-justify">O beb� deve ser bem acolhido para se sentir protegido. N�o tenha
                                        medo de peg�-lo no colo, aproxime-o do seu corpo, apoiando seu pesco�o e sua cabe�a. 
                                        Converse, cante, acaricie, embale, abrace, interaja com o beb�.
                                    </p>
                                    <p class="color-text-a text-justify">N�o permita que fumem dentro de casa. A fuma�a faz mal � sa�de. 
                                        A crian�a n�o deve receber colo por algu�m que acabou de fumar. Evite usar produtos
                                        de limpeza com cheiro muito forte. Projeta a crian�a de animais, mesmo os que s�o da
                                        casa podem ter rea��es imprevis�veis. O banho deve ser dado desde os primeiros dias
                                        numa banheira ou numa bacia com �gua morna e sabonete neutro.                                        
                                    </p>
                                    <p class="color-text-a text-justify">Enxugue-o r�pido para que ele n�o sinta frio, n�o esquecendo de
                                        secar bem as dobrinhas da pele e o umbigo.  O coto do umbigo costuma cair at� o final
                                        da segunda semana de vida.                                        
                                    </p>
                                </div>
                                <div class="col-md-6">
                                    <div class="card-box-a card-shadow p-t-10">
                                        <div class="img-box-a">
                                            <img src="image/pexels-photo-895515.jpeg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-5 section-md-t3 p-t-60">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Cuidados com o beb�</h3>
                                    </div>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Cuidados com o umbigo:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">Para limpar a regi�o do umbigo, s� use �lcool a 70%.<br>
                                        N�o coloque faixas, moedas ou qualquer outro objeto ou subst�ncia sobre o umbigo.<br>
                                        A presen�a de secre��o amarelada, com mau cheiro, purulenta no umbigo, ou de 
                                        vermelhid�o ao seu redor sugere infec��o.<br> Neste caso a crian�a deve ser vista 
                                        imediatamente por profissional de sa�de.
                                    </p>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Outros cuidados:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">Observe a pele do beb�. A presen�a da cor amarelada significa
                                        icter�cia (amarel�o). Quando ela aparece dentro das primeiras 24 horas de vida, 
                                        quando o tom amarelado se torna intenso, quando se espalha por todo o corpo atingindo
                                        pernas e bra�os ou quando dura mais de duas semanas, � preciso que o beb� seja avaliado
                                        imediatamente pelo profissional de sa�de.
                                    </p>                                    
                                </div>
                                <div class="col-md-7 p-t-90">
                                    <div class="card-box-a card-shadow p-t-10">
                                        <div class="img-box-a">
                                            <img src="image/heike-mintel-4vzfUNqi7h4-unsplash.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p class="color-text-a text-justify">Observe a cor das fezes do beb�. As fezes dos primeiros dias costumam
                                        ser escuras, ficando amareladas durante a primeira semana de vida. Podem tamb�m ser liquidas
                                        e, �s vezes, esverdeadas. Se a crian�a est� bem, isso n�o � diarreia. Para evitar assaduras, troque as fraldas
                                        sempre que estiverem molhadas ou sujas, e limpe o beb� com o pano ou algod�o umedecido. N�o use talco para evitar
                                        sufoca��o do beb�. � importante que as roupas, os objetos e os brinquedos sejam lavados com �gua e sab�o neutro e
                                        bem enxaguados, evitando-se o uso de produtos perfumados.                                          
                                    </p>                                                                       
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            </section>
        </div>
        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
