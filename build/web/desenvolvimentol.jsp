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
                                <h1 class="title-single">Acompanhando o desenvolvimento saudável da criança!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="informacoesl.jsp">Informações</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page"> Desenvolvimento da Criança </li>
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
                                <h3 class="sinse-title">Desenvolvimento da Criança</h3>
                            </div>
                        </div>
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Estimulando o Desenvolvimento da Criança com Afeto</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        A primeira infância, de 0 a 6 anos, é um período muito importante para o desenvolvimento mental
                                        e emocional e socialização da criança. É fundamental estimular bem a criança nessa fase, para que
                                        ela tenha uma vida saudável e possa desenvolver-se bem na infância, na adolescência e na vida adulta.
                                    </p>
                                    <p class="color-text-a text-justify">   
                                        Acompanhe o desenvolvimento da criança juntamente com o profissional de saúde. Se achar que algo não vai bem,
                                        não deixe de alertá-lo para que possa examiná-la melhor.                                        
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
                                        <h3 class="title-d">Do nascimento até 2 meses de idade</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        Para que o bebê se desenvolva bem é necessário, antes de tudo, que seja amado e desejado pela sua família e que
                                        esta tente compreender seus sentimentos e satisfazer suas necessidades. A ligação entre a mãe e o bebê é muito importante
                                        neste início de vida, por isso deve ser fortalecida.                                       
                                    </p>
                                    <p class="color-text-a text-justify">   
                                        Converse com o bebê, buscando contato visual (olho no olho). Não tenha vergonha de falar com ele de forma carinhosa, aparentemente
                                        infantil. É desse modo que se iniciam as primeiras conversas. Lembre-se que o bebê reconhece e acalma-se com a voz da mãe. Nessa
                                        fase, o bebê se assusta quando ouve sons ou ruídos inesperados e altos.                                       
                                    </p>
                                    <p class="color-text-a text-justify">
                                        Preste atenção no choro do bebê. Ele chora de jeito diferente dependendo do que está sentindo: fome, frio/calor, dor, necessidade
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
                                        Estimule o bebê mostrando-lhe objetos coloridos a uma distância de mais ou menos 30 cm. Para fortalecer os músculos
                                        do pescoço do bebê, deite-o com a barriga para baixo e chame sua atenção com brinquedos ou chamando por ele, estimulando-o a
                                        levantar a cabeça. Isto o ajudará a sustentar a cabeça.
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
                                        Brinque com o bebê conversando e olhando para ele. Ofereça objetos para ele pegar, trocar com as mãos. Coloque o bebê de bruços,
                                        apoiado nos seus braços, e brinque com ele conversando ou mostrando-lhe brinquedos a sua frente. Observe que o bebê brinca com a
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
                                        Ao oferecer algo para o bebê (comida, brinquedo, etc.), espere um pouco para ver sua reação. 
                                        Com isso ele aprenderá a expressar aceitação, prazer e desconforto. Acostume o bebê a dormir mais à noite.
                                        Ofereça brinquedos a pequenas distâncias, dando a ele a chance de alcança-los. Proporcione estímulos sonoros ao bebê,
                                        fora do seu alcance visual, para que ele tente localizar de onde vem o som virando a cabeça.                                       
                                        Estimule-o a rolar, mudando de posição (de barriga para baixo para barriga para cima). Use objetos e outros recursos 
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
                                        Dê atenção à criança demonstrando que está atento aos seus pedidos. Nesta idade ela busca chamar
                                        a atenção das pessoas, procurando agradá-las a obter sua aprovação. Dê à criança brinquedos fáceis
                                        de segurar, para que ela treine passar de mão para a outra. Converse bastante com a criança, cante,
                                        use palavras que ela possa repetir (dadá, papá, etc.). Ela também pode localizar de onde vem o som.
                                        Coloque a criança no chão (esteira, colchonete) estimulando-a a sentar, se arrastar e engatinha.
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
                                        Brinque com a criança com músicas, fazendo gestos (bater palmas, dar tchau, etc.), solicitando sua resposta.
                                        Coloque ao alcance da criança, sempre na presença de um adulto, objetos pequenos como tampinhas ou bolinha de
                                        papel pequena, para que ela possa apanhá-los, usando o movimento da pinça (dois dedinhos). Muito cuidado para
                                        que ela não coloque esses objetos na boca, nariz ou ouvidos. Converse com a criança e use livros com figuras.
                                        Ela pode estar falando algumas palavras como (mamã, papá, dá) e entende ordens simples como "dar tchau".
                                        Deixa a criança no chão para que ela possa levantar-se e andar apoiando-se.
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
                                        Seja firme e claro com a criança, mostrando-lhe o que pode e o que não pode fazer. Afaste-se da criança por períodos
                                        curtos, para que ela não tenha medo da sua ausência. Estimule o uso das palavras em vez de gestos, usando rimas, músicas
                                        e sons comumente falados. Ofereça à criança objetos de diversos tamanhos, para que ela aprenda a encaixar e retirar um
                                        objeto do outro. Crie oportunidades para ela locomover-se com segurança, para aprender a andar sozinha.
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
                                        Continue sendo claro e firme com a criança, para que ela aprenda a ter limites. Conte pequenas estórias, ouça música com
                                        a criança e dance com ela. Dê ordens simples, como "dá um beijo na mamãe", bate palminha. Dê à criança papel e giz de cera
                                        (tipo estaca, grosso) para que ela inicie os seus rabiscos. Isto estimula a sua criatividade. Crie oportunidades para a criança
                                        andar não só para frente, como também para trás (puxando carrinho, etc.).
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
                                        Estimule a criança a colocar e tirar suas roupas, inicialmente com ajuda. Ofereça brinquedos de encaixe, que possam ser empilhados,
                                        e mostre como fazer. Mostre figuras nos livros e revistas falando seus nomes, brinque de chutar bola (fazer gol), observe que a 
                                        criança começa a juntar palavras e a falar frases simples como gato cadê ou leite não. Entenda que nesta idade a criança demonstra
                                        ter vontade própria, testa limites e fala muito a palavras não.
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
                                        Continue estimulando a criança para que ela se torne independente em atividades de autocuidado diário, como por exemplo,
                                        na alimentação (iniciativa para se alimentar), no momento do banho e de vestir-se. Comece a estimular a criança a controlar
                                        a eliminação de fezes e urina, em clima de brincadeira, sem exercer pressão ou repreender. Gradativamente, estimulo o uso do
                                        sanitário. Estimule a criança a brincar com outras crianças.
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
                                        Converse bastante com a criança, peça para ela comentar sobre suas brincadeiras e nomes de amigos, estimulando a linguagem e
                                        a inteligência. Dê oportunidade para ela ter contato com livros infantis, revistas, papel, lápis, giz de cera. Leia, conte estorinhas,
                                        brinque de desenhar, recortar figuras, colagem. Mostre para ela figuras de animais, peças do vestuário, objetos domésticos e estimule
                                        a criança a falar sobre eles: o que fazem, para que servem (Ex: Quem mia?). Faça brincadeiras utilizando bola e peça para a criança
                                        jogar a bola em sua direção, iniciando assim uma brincadeira envolvendo duas ou mais pessoas.
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
                                        <h3 class="title-d">Percebendo Alterações no Desenvolvimento</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        É importante observar como a criança reage ao contato com pessoas e com o ambiente: se responde ao olhar; à conversa e ao toque 
                                        dos pais/cuidadores quando amamentada/alimentada, colocada no colo, acariciada. Na criança maior, é importante observar se
                                        ela habitualmente se isola, recusa-se a brincar com outras crianças, tem dificuldade na linguagem ou apresenta gestos/movimentos
                                        repetitivos.                                        
                                    </p>
                                    <p class="color-text-a text-justify">
                                        É importante também observar se há atraso no desenvolvimento de atividades motoras (como sustentar a cabeça, virar de bruços,
                                        engatinhar e andar), na linguagem e comunicação, em memorizar, em realizar uma tarefa até o fim, na aprendizagem e na solução
                                        de problemas práticos relacionados aos hábitos de vida diária.
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
                                        Se a criança não age como você espera e seu desenvolvimento causa dúvidas ou ansiedade na família, converse com o profissional
                                        de saúde sobre isso. Quanto mais cedo um problema for identificado e tratado, melhor o resultado. Qualquer atraso ou transtorno
                                        de desenvolvimento pode ser minimizado se a criança receber atenção/estimulação adequadas, com a participação da família
                                        e de profissionais.
                                    </p>
                                    <p class="color-text-a text-justify">
                                        O diagnóstico de uma deficiência na criança pode gerar momentos difíceis e sentimentos como medo, dúvidas, angústias e dificuldades
                                        de aceitação. Todos esses sentimentos são normais diante de um fato novo e não esperado. No caso de crianças com deficiência,
                                        informações sobre os cuidados com a saúde e o conhecimento sobre os seus direitos são muito importantes para o fortalecimento
                                        da família e para o desenvolvimento de habilidades e capacidades que facilitem a independência e a participação social dessas
                                        crianças.                                       
                                    </p>
                                </div>
                            </div>
                        </div>                        
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-6 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Vigiando o Crescimento da Criança</h3>
                                    </div>
                                    <p class="color-text-a text-justify">
                                        A criança cresce, ganha peso e altura, ao mesmo tempo em que se desenvolve. A melhor maneira
                                        de ver se a criança está crescendo bem é acompanhando o seu peso e a sua altura. Verifique, em
                                        cada consulta, se o profissional de saúde anotou o peso e a altura da criança na ficha de
                                        vigilância do crescimento e se registrou esses dados nos gráficos.                                        	
                                    </p>
                                    <p class="color-text-a text-justify">
                                        É muito importante que você saiba como a criança está crescendo. Se tiver dúvidas sobre
                                        o seu crescimento, solicite esclarecimentos ao profissional de saúde.
                                        Uma boa alimentação e a prevenção de doenças por meio de vacinas são 
                                        importantes para o bom crescimento da criança. O afeto dos pais e de outras pessoas
                                        que cuidam da criança e os cuidados com a higiene também são muito importantes.
                                        O bebê que nasce com baixo peso (menos que 2.500g) é um bebê que necessita de maiores
                                        cuidados. Ele deve ter o crescimento acompanhado com mais frequência até atingir o
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
