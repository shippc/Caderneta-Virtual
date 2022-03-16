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
                                <h1 class="title-single">Cuidados essenciais no início da vida do bebê!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="informacoesl.jsp">Informações</a> </li>
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
                                        <h3 class="title-d">Observando e Conhecendo o Bebê</h3>
                                    </div>
                                    <p class="color-text-a text-justify">No início da vida, o bebê dorme bastante.
                                        Para garantir um bom sono é importante que ele durma em lugar tranquilo, arejado e limpo.
                                        Nos primeiros dias o bebê perde um pouco de peso, mas, por volta do décimo dia, já recupera
                                        seu peso de nascimento. O bebê precisa de tranquilidade. Evite leva-lo a lugares onde haja 
                                        muita gente e muito barulho como supermercados e shopping.
                                    </p>
                                    <p class="color-text-a text-justify">O bebê nunca deve dormir de barriga para baixo (de bruços).
                                        Recomenda-se que ele durma de barriga para cima. Cuide para que a boca e o nariz
                                        não fiquem cobertos. Para aquecê-lo, é preferível agasalha-lo com mais roupas do
                                        que o cobrir com muitas cobertas.                                        
                                    </p>
                                    <p class="color-text-a text-justify">O bebê deve ser bem acolhido para se sentir protegido. Não tenha
                                        medo de pegá-lo no colo, aproxime-o do seu corpo, apoiando seu pescoço e sua cabeça. 
                                        Converse, cante, acaricie, embale, abrace, interaja com o bebê.
                                    </p>
                                    <p class="color-text-a text-justify">Não permita que fumem dentro de casa. A fumaça faz mal à saúde. 
                                        A criança não deve receber colo por alguém que acabou de fumar. Evite usar produtos
                                        de limpeza com cheiro muito forte. Projeta a criança de animais, mesmo os que são da
                                        casa podem ter reações imprevisíveis. O banho deve ser dado desde os primeiros dias
                                        numa banheira ou numa bacia com água morna e sabonete neutro.                                        
                                    </p>
                                    <p class="color-text-a text-justify">Enxugue-o rápido para que ele não sinta frio, não esquecendo de
                                        secar bem as dobrinhas da pele e o umbigo.  O coto do umbigo costuma cair até o final
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
                                        <h3 class="title-d">Cuidados com o bebê</h3>
                                    </div>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Cuidados com o umbigo:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">Para limpar a região do umbigo, só use álcool a 70%.<br>
                                        Não coloque faixas, moedas ou qualquer outro objeto ou substância sobre o umbigo.<br>
                                        A presença de secreção amarelada, com mau cheiro, purulenta no umbigo, ou de 
                                        vermelhidão ao seu redor sugere infecção.<br> Neste caso a criança deve ser vista 
                                        imediatamente por profissional de saúde.
                                    </p>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Outros cuidados:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">Observe a pele do bebê. A presença da cor amarelada significa
                                        icterícia (amarelão). Quando ela aparece dentro das primeiras 24 horas de vida, 
                                        quando o tom amarelado se torna intenso, quando se espalha por todo o corpo atingindo
                                        pernas e braços ou quando dura mais de duas semanas, é preciso que o bebê seja avaliado
                                        imediatamente pelo profissional de saúde.
                                    </p>                                    
                                </div>
                                <div class="col-md-7 p-t-90">
                                    <div class="card-box-a card-shadow p-t-10">
                                        <div class="img-box-a">
                                            <img src="image/heike-mintel-4vzfUNqi7h4-unsplash.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p class="color-text-a text-justify">Observe a cor das fezes do bebê. As fezes dos primeiros dias costumam
                                        ser escuras, ficando amareladas durante a primeira semana de vida. Podem também ser liquidas
                                        e, ás vezes, esverdeadas. Se a criança está bem, isso não é diarreia. Para evitar assaduras, troque as fraldas
                                        sempre que estiverem molhadas ou sujas, e limpe o bebê com o pano ou algodão umedecido. Não use talco para evitar
                                        sufocação do bebê. É importante que as roupas, os objetos e os brinquedos sejam lavados com água e sabão neutro e
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
