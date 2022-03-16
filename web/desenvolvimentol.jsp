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
                                <h1 class="title-single">Acompanhando o desenvolvimento saud�vel da crian�a!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="informacoesl.jsp">Informa��es</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page"> Desenvolvimento da Crian�a </li>
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
                            <div class="about-img-box"> <img src="image/3564364.jpg" alt="" class="img-fluid"> </div>
                            <div class="sinse-box">
                                <h3 class="sinse-title">Desenvolvimento da Crian�a</h3>
                            </div>
                        </div>
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Estimulando o Desenvolvimento da Crian�a com Afeto</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        A primeira inf�ncia, de 0 a 6 anos, � um per�odo muito importante para o desenvolvimento mental
                                        e emocional e socializa��o da crian�a. � fundamental estimular bem a crian�a nessa fase, para que
                                        ela tenha uma vida saud�vel e possa desenvolver-se bem na inf�ncia, na adolesc�ncia e na vida adulta.
                                    </p>
                                    <p class="color-text-a text-justify">   
                                        Acompanhe o desenvolvimento da crian�a juntamente com o profissional de sa�de. Se achar que algo n�o vai bem,
                                        n�o deixe de alert�-lo para que possa examin�-la melhor.                                        
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/22989.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Do nascimento at� 2 meses de idade</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Para que o beb� se desenvolva bem � necess�rio, antes de tudo, que seja amado e desejado pela sua fam�lia e que
                                        esta tente compreender seus sentimentos e satisfazer suas necessidades. A liga��o entre a m�e e o beb� � muito importante
                                        neste in�cio de vida, por isso deve ser fortalecida.                                       
                                    </p>
                                    <p class="color-text-a text-justify">   
                                        Converse com o beb�, buscando contato visual (olho no olho). N�o tenha vergonha de falar com ele de forma carinhosa, aparentemente
                                        infantil. � desse modo que se iniciam as primeiras conversas. Lembre-se que o beb� reconhece e acalma-se com a voz da m�e. Nessa
                                        fase, o beb� se assusta quando ouve sons ou ru�dos inesperados e altos.                                       
                                    </p>
                                    <p class="color-text-a text-justify">
                                        Preste aten��o no choro do beb�. Ele chora de jeito diferente dependendo do que est� sentindo: fome, frio/calor, dor, necessidade
                                        de aconchego.                                        
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/587004-PM8XFO-286.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                                <div class="col-md-12 p-t-20">
                                    <p class="color-text-a text-justify">
                                        Estimule o beb� mostrando-lhe objetos coloridos a uma dist�ncia de mais ou menos 30 cm. Para fortalecer os m�sculos
                                        do pesco�o do beb�, deite-o com a barriga para baixo e chame sua aten��o com brinquedos ou chamando por ele, estimulando-o a
                                        levantar a cabe�a. Isto o ajudar� a sustentar a cabe�a.
                                    </p>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">2 a 4 meses</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Brinque com o beb� conversando e olhando para ele. Ofere�a objetos para ele pegar, trocar com as m�os. Coloque o beb� de bru�os,
                                        apoiado nos seus bra�os, e brinque com ele conversando ou mostrando-lhe brinquedos a sua frente. Observe que o beb� brinca com a
                                        voz e tenta "conversar", falando (aaa, qqq, rrr).
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/mae-com-filha-fofa_1157-14392.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">4 a 6 meses</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Ao oferecer algo para o beb� (comida, brinquedo, etc.), espere um pouco para ver sua rea��o. 
                                        Com isso ele aprender� a expressar aceita��o, prazer e desconforto. Acostume o beb� a dormir mais � noite.
                                        Ofere�a brinquedos a pequenas dist�ncias, dando a ele a chance de alcan�a-los. Proporcione est�mulos sonoros ao beb�,
                                        fora do seu alcance visual, para que ele tente localizar de onde vem o som virando a cabe�a.                                       
                                        Estimule-o a rolar, mudando de posi��o (de barriga para baixo para barriga para cima). Use objetos e outros recursos 
                                        (brinquedos, palmas, etc.).
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/vista-lateral-da-mae-e-da-crianca-brincando-com-brinquedos_23-2148463661.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">6 a 9 meses</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        D� aten��o � crian�a demonstrando que est� atento aos seus pedidos. Nesta idade ela busca chamar
                                        a aten��o das pessoas, procurando agrad�-las a obter sua aprova��o. D� � crian�a brinquedos f�ceis
                                        de segurar, para que ela treine passar de m�o para a outra. Converse bastante com a crian�a, cante,
                                        use palavras que ela possa repetir (dad�, pap�, etc.). Ela tamb�m pode localizar de onde vem o som.
                                        Coloque a crian�a no ch�o (esteira, colchonete) estimulando-a a sentar, se arrastar e engatinha.
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/mae-e-filho-estao-deitados-na-cama-e-olhando-uns-aos-outros_85574-8724.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">9 meses a 1 ano</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Brinque com a crian�a com m�sicas, fazendo gestos (bater palmas, dar tchau, etc.), solicitando sua resposta.
                                        Coloque ao alcance da crian�a, sempre na presen�a de um adulto, objetos pequenos como tampinhas ou bolinha de
                                        papel pequena, para que ela possa apanh�-los, usando o movimento da pin�a (dois dedinhos). Muito cuidado para
                                        que ela n�o coloque esses objetos na boca, nariz ou ouvidos. Converse com a crian�a e use livros com figuras.
                                        Ela pode estar falando algumas palavras como (mam�, pap�, d�) e entende ordens simples como "dar tchau".
                                        Deixa a crian�a no ch�o para que ela possa levantar-se e andar apoiando-se.
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/mulher-lendo-com-bebe-no-sofa_23-2148354769.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">1 ano a 1 ano e 3 meses</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Seja firme e claro com a crian�a, mostrando-lhe o que pode e o que n�o pode fazer. Afaste-se da crian�a por per�odos
                                        curtos, para que ela n�o tenha medo da sua aus�ncia. Estimule o uso das palavras em vez de gestos, usando rimas, m�sicas
                                        e sons comumente falados. Ofere�a � crian�a objetos de diversos tamanhos, para que ela aprenda a encaixar e retirar um
                                        objeto do outro. Crie oportunidades para ela locomover-se com seguran�a, para aprender a andar sozinha.
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/mae-ensinando-bebe_23-2147711551.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">1 ano e 3 meses a 1 ano e 6 meses</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Continue sendo claro e firme com a crian�a, para que ela aprenda a ter limites. Conte pequenas est�rias, ou�a m�sica com
                                        a crian�a e dance com ela. D� ordens simples, como "d� um beijo na mam�e", bate palminha. D� � crian�a papel e giz de cera
                                        (tipo estaca, grosso) para que ela inicie os seus rabiscos. Isto estimula a sua criatividade. Crie oportunidades para a crian�a
                                        andar n�o s� para frente, como tamb�m para tr�s (puxando carrinho, etc.).
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/foto-da-jovem-mae-com-dois-lindos-filhos-lendo-livro-ao-ar-livre-em-tempo-de-primavera-mae-feliz-ensinando-seus-filhos-no-parque-familia-feliz-mae-e-duas-filhas-conceito-de-dia-das-maes_95401-1267.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">1 ano e 6 meses a 2 anos</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Estimule a crian�a a colocar e tirar suas roupas, inicialmente com ajuda. Ofere�a brinquedos de encaixe, que possam ser empilhados,
                                        e mostre como fazer. Mostre figuras nos livros e revistas falando seus nomes, brinque de chutar bola (fazer gol), observe que a 
                                        crian�a come�a a juntar palavras e a falar frases simples como gato cad� ou leite n�o. Entenda que nesta idade a crian�a demonstra
                                        ter vontade pr�pria, testa limites e fala muito a palavras n�o.
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/bebe-brincando-com-blocos-de-brinquedos-coloridos_1163-1170.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">2 anos a 2 anos e 6 meses</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Continue estimulando a crian�a para que ela se torne independente em atividades de autocuidado di�rio, como por exemplo,
                                        na alimenta��o (iniciativa para se alimentar), no momento do banho e de vestir-se. Comece a estimular a crian�a a controlar
                                        a elimina��o de fezes e urina, em clima de brincadeira, sem exercer press�o ou repreender. Gradativamente, estimulo o uso do
                                        sanit�rio. Estimule a crian�a a brincar com outras crian�as.
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/doce-mae-ensinando-seu-filho-a-comer_142605-562.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">2 anos e 6 meses a 3 anos</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Converse bastante com a crian�a, pe�a para ela comentar sobre suas brincadeiras e nomes de amigos, estimulando a linguagem e
                                        a intelig�ncia. D� oportunidade para ela ter contato com livros infantis, revistas, papel, l�pis, giz de cera. Leia, conte estorinhas,
                                        brinque de desenhar, recortar figuras, colagem. Mostre para ela figuras de animais, pe�as do vestu�rio, objetos dom�sticos e estimule
                                        a crian�a a falar sobre eles: o que fazem, para que servem (Ex: Quem mia?). Fa�a brincadeiras utilizando bola e pe�a para a crian�a
                                        jogar a bola em sua dire��o, iniciando assim uma brincadeira envolvendo duas ou mais pessoas.
                                    </p>
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/mae-com-filha-brincando-em-um-campo_1157-28159.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Percebendo Altera��es no Desenvolvimento</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        � importante observar como a crian�a reage ao contato com pessoas e com o ambiente: se responde ao olhar; � conversa e ao toque 
                                        dos pais/cuidadores quando amamentada/alimentada, colocada no colo, acariciada. Na crian�a maior, � importante observar se
                                        ela habitualmente se isola, recusa-se a brincar com outras crian�as, tem dificuldade na linguagem ou apresenta gestos/movimentos
                                        repetitivos.                                        
                                    </p>
                                    <p class="color-text-a text-justify">
                                        � importante tamb�m observar se h� atraso no desenvolvimento de atividades motoras (como sustentar a cabe�a, virar de bru�os,
                                        engatinhar e andar), na linguagem e comunica��o, em memorizar, em realizar uma tarefa at� o fim, na aprendizagem e na solu��o
                                        de problemas pr�ticos relacionados aos h�bitos de vida di�ria.
                                    </p>                                    
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/criancas-brincando-com-brinquedos-na-sala-de-estar_53876-20996.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p class="color-text-a text-justify">
                                        Se a crian�a n�o age como voc� espera e seu desenvolvimento causa d�vidas ou ansiedade na fam�lia, converse com o profissional
                                        de sa�de sobre isso. Quanto mais cedo um problema for identificado e tratado, melhor o resultado. Qualquer atraso ou transtorno
                                        de desenvolvimento pode ser minimizado se a crian�a receber aten��o/estimula��o adequadas, com a participa��o da fam�lia
                                        e de profissionais.
                                    </p>
                                    <p class="color-text-a text-justify">
                                        O diagn�stico de uma defici�ncia na crian�a pode gerar momentos dif�ceis e sentimentos como medo, d�vidas, ang�stias e dificuldades
                                        de aceita��o. Todos esses sentimentos s�o normais diante de um fato novo e n�o esperado. No caso de crian�as com defici�ncia,
                                        informa��es sobre os cuidados com a sa�de e o conhecimento sobre os seus direitos s�o muito importantes para o fortalecimento
                                        da fam�lia e para o desenvolvimento de habilidades e capacidades que facilitem a independ�ncia e a participa��o social dessas
                                        crian�as.                                       
                                    </p>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Vigiando o Crescimento da Crian�a</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        A crian�a cresce, ganha peso e altura, ao mesmo tempo em que se desenvolve. A melhor maneira
                                        de ver se a crian�a est� crescendo bem � acompanhando o seu peso e a sua altura. Verifique, em
                                        cada consulta, se o profissional de sa�de anotou o peso e a altura da crian�a na ficha de
                                        vigil�ncia do crescimento e se registrou esses dados nos gr�ficos.                                        	
                                    </p>
                                    <p class="color-text-a text-justify">
                                        � muito importante que voc� saiba como a crian�a est� crescendo. Se tiver d�vidas sobre
                                        o seu crescimento, solicite esclarecimentos ao profissional de sa�de.
                                        Uma boa alimenta��o e a preven��o de doen�as por meio de vacinas s�o 
                                        importantes para o bom crescimento da crian�a. O afeto dos pais e de outras pessoas
                                        que cuidam da crian�a e os cuidados com a higiene tamb�m s�o muito importantes.
                                        O beb� que nasce com baixo peso (menos que 2.500g) � um beb� que necessita de maiores
                                        cuidados. Ele deve ter o crescimento acompanhado com mais frequ�ncia at� atingir o
                                        peso e altura adequados para a idade.
                                    </p>                                    
                                </div>
                                <div class="col-md-6 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/aviador-piloto-infantil-com-sonhos-de-aviao-de-viajar-no-verao-na-natureza-ao-por-do-sol_1205-6885.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>
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
