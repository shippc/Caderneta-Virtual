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
                                <h1 class="title-single">Saiba como ter uma amamentação prazerosa para você e o seu bebê!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="informacoesl.jsp">Informações</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page">Amamentação</li>
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
                            <div class="about-img-box"> <img src="image/9467.jpg" alt="" class="img-fluid"> </div>
                            <div class="sinse-box">
                                <h3 class="sinse-title">Amamentação Saudável</h3>
                            </div>
                        </div>
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-5 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Amamentando o bebê</h3>
                                    </div>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Importância da Amamentação</strong>
                                    </p>
                                    <p class="color-text-a text-justify">O leite materno é um alimento completo. Isso significa que,
                                        até os 6 meses, o bebê não precisa de nenhum outro alimento (chá, suco, água ou 
                                        outro leite. A partir dos 6 meses, a amamentação deve ser complementada com outros
                                        alimentos. É bom que o bebê continue sendo amamentado até 2 anos ou mais.Quanto mais
                                        tempo o bebê mamar no peito, melhor para ele e para a mãe.                                        
                                    </p>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Benefícios para o bebê:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">O leite materno tem tudo o que o bebê precisa até os 6 meses,
                                        inclusive água, e é de mais fácil digestão que qualquer outro leite, porque foi feito para ele. 
                                        Funciona como uma verdadeira vacina, protegendo a criança de muitas doenças, além disso, é limpo,
                                        está sempre pronto e quentinho.
                                    </p>                                    
                                </div>
                                <div class="col-md-7 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/2728479.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>                                
                                </div>
                                <div class="col-md-12">
                                    <p class="color-text-a text-justify">A amamentação favorece um contato mais íntimo entre a mãe e o bebê. Sugar o peito
                                        é um excelente exercício para o desenvolvimento da face da criança, ajuda a ter dentes bonitos, a desenvolver
                                        a fala e a ter uma boa respiração.                                        
                                    </p>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Benefícios para a mãe:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">
                                        Pode ser um método natural para evitar uma nova gravidez nos primeiros 6 meses, desde que a mãe esteja
                                        amamentando exclusivamente (a criança não recebe nenhum outro alimento) e em livre demanda (dia e noite,
                                        sempre que o bebê quiser), e ainda não tenha menstruado.
                                    </p>
                                    <p class="color-text-a text-justify">
                                        Reduz o peso mais rapidamente após o parto. Ajuda o útero a recuperar seu tamanho normal, diminuindo o 
                                        risco de hemorragia e de anemia após o parto. Reduz o risco de diabetes, reduz o risco de câncer de mama,
                                        de ovário e de útero.                                        
                                    </p>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Como tornar a Amamentação mais tranquila e prazerosa</h3>
                                            </div>
                                            <p class="color-text-a text-justify">Nos primeiros meses o bebê ainda não tem horário para mamar.
                                                Ele deve mamar sempre que quiser. Com o tempo ele faz o horário. Com alguns cuidados, a amamentação
                                                não machuca o peito e fica mais fácil para o bebê retirar o leito do peito.
                                            </p>
                                            <p class="color-text-a text-justify">A melhor posição para amamentar é aquela em que a mãe e o bebê sintam-se
                                                confortáveis. A amamentação deve ser prazerosa para a mãe e para o bebê. O bebê deve estar virado para a mãe,
                                                bem junto de seu corpo, bem apoiado e com os braços livres.  A cabeça do bebê deve ficar de frente para o peito
                                                e o nariz bem na frente do mamilo. Só coloque o bebê para sugar quando ele abrir bem a boca.  Quando o bebê pega bem o peito,
                                                o queixo encosta na mama, os lábios ficam virados para fora, o nariz fica livre e aparece mais aréola (parte escura em volta do mamilo)
                                                na parte de cima da boca do que na de baixo.                                
                                            </p>                                            
                                        </div>
                                        <div class="col-md-7 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/601447-PMYVT7-341.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Sinais indicativos de amamentação adequada</h3>
                                            </div>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Boa posição:</strong>
                                            </p>
                                            <p class="color-text-a text-justify">O pescoço do bebê está ereto ou um pouco curvado para trás,
                                                sem estar distendido.<br>
                                                O corpo da criança está voltado para o corpo da mãe.<br> A barriga do bebê está encostada na
                                                barriga da mãe.<br> Todo o corpo do bebê recebe sustentação. <br>O bebê e a mãe devem estar
                                                confortáveis.                                                
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Boa pega:</strong>
                                            </p>
                                            <p class="color-text-a text-justify">A boca está bem aberta.<br> O queixo está tocando o seio.<br>
                                                Lábio inferior virado para fora. <br> Há mais aréola-visível acima da boca do que abaixo. <br>
                                                Ao amamentar, a mãe não sente dor no mamilo.
                                            </p>
                                        </div>
                                        <div class="col-md-7 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/bebe-recem-nascido-asiatico-com-a-mae_1286-2843.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a text-justify">
                                                Cada bebê tem seu próprio ritmo de mamar, o que deve ser respeitado. Deixe-o mamar até que fique satisfeito. 
                                                Espere que ele esvazie bem a mama e então ofereça a outra, se ele quiser. O leite do início da mamada tem mais
                                                água e mata a sede e o do fim da mamada tem mais gordura e por isso mata a fome do bebê e faz com que ele ganhe mais peso.    
                                            </p>
                                            <p class="color-text-a text-justify">No início da mamada o bebê suga com mais força porque está com mais fome e assim esvazia
                                                melhor a primeira mama oferecida. Por isso, é bom que a mãe comece cada mamada pelo peito em que o bebê mamou por último na
                                                mamada anterior. Assim o bebê tem a oportunidade de esvaziar bem as duas mamas, o que é importante para a mãe ter bastante leite.
                                                Quando for preciso tirar o bebê do peito, para que ele solte o mamilo sem machucá-lo, a mãe pode colocar o dedo mínimo no canto
                                                da boca do bebê, entre as gengivas. Depois da mamada, é importante colocar o bebê na posição vertical para que ele possa arrotar.                                                
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6 section-md-t3 p-t-60">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Atenção Mães!!!</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Não há necessidade de usar mamadeiras e chupetas, pois podem atrapalhar a amamentação. Além disso,
                                                podem causar doenças, problemas na dentição e na fala. É importante a mãe cuidar-se bem, evitar bebidas
                                                alcoólicas e cigarro. Os remédios que a mãe toma podem passar para a criança; por isso ela só deve tomar
                                                medicamentos com orientação médica.                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Se a mãe precisar usar método para evitar uma nova gravidez, ela deve procurar o serviço de saúde. No momento
                                                da amamentação é importante que a mãe converse, faça carinho e dê atenção a criança.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Se a mãe tiver excesso de leite, ela pode doá-lo a um Banco de Leite Humano e ajudar outros bebês que necessitam
                                                de leite humano. Informe-se nos serviços de saúde ou no site da <a class="meneee" href="https://rblh.fiocruz.br/rblh-brasil">rBLH</a> 
                                                ou, se preferir, procure a unidade de saúde mais próxima de sua casa.                                                
                                            </p>
                                        </div>
                                        <div class="col-md-6 col-lg-5" style="padding-top: 10%; padding-left: 10%;">
                                            <img src="image/attention.png" alt="" class="img-fluid">
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Bombinhas ou Expressão Manual do Leite</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                O processo manual é o método mais útil, pois nem todas as pessoas tem dinheiro para comprar as bombinhas
                                                para a retirada do leite do peito e os preços das bombinhas variam. Está indicado para 
                                                aliviar mamas muito cheiras, manter a produção de leite quando o bebê não suga bem, aumentar 
                                                o volume de leite, guardar leite para oferecer ao bebê mais tarde na ausência da mãe e, também,
                                                para doar a um banco de leite.                                     
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Qual é a melhor alternativa?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                O Ministério da Saúde preconiza a ordenha manual como a melhor alternativa para a obtenção de leite materno,
                                                no entanto, Luciana Herrero, pediatra peri-gestacional especialista internacional em amamentação afirma que,
                                                embora seja essencial que uma lactante saiba retirar seu leite com as mãos, a escolha para o dia a dia deve ser
                                                a mais cômoda e prática para a mulher.
                                            </p>
                                        </div>
                                        <div class="col-md-7 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/leite-materno-congelado-em-saco-de-armazenamento_41350-314.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a text-justify">
                                                "O importante é que elas não fiquem dependentes apenas um ou de outro modo,
                                                mas cada mulher se adequa a uma forma. Para algumas a bomba elétrica é mais rápida, já para outas a ordenha manual
                                                mais prazerosa", diz.
                                            </p>                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Expressão Manual (Ordenha)</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Muitas mulheres extraem o leite materno para reduzir o ingurgitamento, prevenir a falta de leite e guarda-lo para
                                                uso não imediato. Para algumas mulheres, a extração manual pode ser uma alternativa mais confortável do que as bombas
                                                para os seios. O processo pode ser feito em qualquer lugar e sem instrumentos ou dispositivos especiais. Também tem sido
                                                mostrado que isso ajuda os seios a produzir mais leite; nos seios de algumas mulheres é mais fácil extrair o leite com o contato
                                                na pele do que com o uso de uma bomba de plástico. Se você quiser saber como extrair o leite manualmente.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                A técnica manual requer mais tempo e prática, pois é preciso massagear bem as mamas antes de começar a extrair o 
                                                leite e, para pegar prática, é preciso repetir o processo várias vezes, mas o custo é zero.   
                                            </p>
                                        </div>
                                        <div class="col-md-8 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/sacos-de-armazenamento-de-leite-materno-para-bebe-novo-na-geladeira_106094-49.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">                                            
                                            <p class="color-a text-center">
                                                <strong class="title-information-li">Como fazer a expressão manual?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.  </strong>Lave as mãos. Suas mãos devem estar lavadas antes de tentar extrair o leite materno manualmente.
                                                Se você lavou as suas mãos com água fria, deixe-as aquecer antes de tocar os seios. Mãos frias podem fazer o processo levar mais tempo
                                                do que mãos aquecidas. Se essa é a sua primeira vez e você está insegura, você pode pedir a ajuda de uma enfermeira ou até pedir a ajuda
                                                do seu parceiro.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.  </strong>
                                                Lave as mãos e esterilize a bomba e todas as partes dela antes de usá-la.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.  </strong>
                                                Encontre um lugar tranquilo, que você se sinta relaxada e tenha mais privacidade.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">4.  </strong>
                                                Pense no seu bebê, vale levar um objeto, uma foto ou uma música que lembre o momento de vocês juntos. Isso ajuda na ejeção
                                                de leite pois desencadeia a liberação de hormônios que são responsáveis pela ejeção de leite, como a ocitocina.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">5.  </strong>
                                                Coloque um pano molhado com água morna nos seus seios por dois minutos. Isso pode ajuda com a extração do leite. Apesar de não ser necessário,
                                                não custa nada tentar..
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">6.  </strong>
                                                Faça massagens nos seios. Se você quer preparar os seus seios para extração manual, você pode fazer leves massagens usando as mãos ou uma toalha macia.
                                                Massageie levemente a pele ao redor dos mamilos para ajudar seus seios a relaxar e se prepararem para produzir leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">7.  </strong>
                                                Sente-se e se incline para frente. Essa posição facilitará a extração do leite e deixará você confortável durante o processo. Você não conseguirá extrair
                                                tanto leite se estiver em pé ou deitada.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">8.  </strong>
                                                Posicione seus dedos nos reservatórios de leite no seu seio. Você deve posicionar as suas mãos em C acima ou abaixo do mamilo. Você deve fazer o seguinte:<br>
                                                Coloque o seu dedo polegar acima do mamilo. Ele deve ficar aproximadamente 2,54 cm acima do mamilo.
                                                Posicione os dois primeiros dedos da sua mão 2,54 cm abaixo do mamilo diretamente alinhados com o polegar.
                                                Ajuste o posicionamento do seu dedo ao seu conforto e ao tamanho do seu seio.                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">9.  </strong>
                                                Aplique pressão para dentro em direção ao seu peitoral. A pressão deve ser leve e firme, mas não deve ser como se você estivesse espremendo
                                                o seio. Evite apertar ou esticar a pele ao redor da aréola, pois isso dificultará a extração do leite. Pressione para trás o seu polegar e 
                                                o seu dedo médio diretamente no tecido do seio, na parede do peitoral. Aqui estão algumas coisas para manter em mente:<br>
                                                Lembre-se de pressionar para trás, não para fora, e de girar os dedos, não de deslizá-los.
                                                Gire o polegar e os dedos para frente para que você esprema o leite para fora dos ductos lactíferos, que estão localizados em baixo da 
                                                aréola, em baixo do mamilo. Mantenha os dedos juntos. Espalhar os dedos reduz a eficácia do processo. Levante seios grandes antes de
                                                colocar pressão.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">10.  </strong>
                                                Extraia o leite materno. Use um movimento giratório para longe do corpo com seu polegar e seus dedos. Comprima seus seios com esse movimento
                                                giratório. Você deve pressionar, comprimir e relaxar. Quando você se acostumar, você conseguirá entrar no ritmo, como se fosse o bebê tirando
                                                o leite, o que ajudará você a extrair o leite mais facilmente. Os seios de todas as mulheres são diferentes. É a sua escolha encontrar a
                                                melhor posição que ajuda a extrair a maior quantidade de leite. Você também pode experimentar extrair o leite, massagear, extrair o leite e 
                                                massagear de novo.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">11.  </strong>
                                                Colete o leite extraído em um recipiente. Se você estiver extraindo apenas para sentir os seus seios fiquem mais confortáveis, você pode 
                                                extrair em uma toalha ou na pia. Aqui estão algumas coisas que você pode fazer para guardar o leite para usar mais tarde:<br>
                                                Use uma sacola de leite para coletar o leite extraído.
                                                Extraia o leite diretamente em frascos para usar mais tarde.
                                                Use um funil para direcionar o leite no recipiente, se necessário.
                                                Use um recipiente com uma abertura larga, como uma xícara de café ou uma jarra pequena. 
                                                Quando o copo estiver cheio, transfira o leite para o recipiente de armazenamento.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">12.  </strong>
                                                Repita o processo no outro seio. Mude as posições levemente em cada seio para extrair todo o leite. Mudando de um seio ao outro irá 
                                                estimular ainda mais a extração do leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">13.  </strong>
                                                Desaperte cuidadosamente os frascos e coloque as tampas corretamente. Armazene em local adequado.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">14.  </strong>
                                                Com água morna e sabão, lave os pedaços que ficam em contato com o corpo ou o leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">15.  </strong>
                                                Coloque as peças para secar sobre um pano limpo. Esterilize após.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">16.  </strong>
                                                O leite deve ser armazenado em geladeira ou freezer, se não for consumido imediatamente. Na geladeira tem validade de 12h,
                                                e no freezer, 15 dias.
                                            </p>
                                            <p class="color-text-a text-center p-t-10">
                                                <strong class="color-a title-information-li">Dicas</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.   </strong>
                                                A extração manual do leite materno às vezes pode levar algumas tentativas para saber fazer bem. Tente novamente se a primeira
                                                tentativa não der os resultados esperados.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.   </strong>
                                                Mantenha uma toalha perto de você para limpar respingos. A extração manual de leite nem sempre o direciona ao local onde ele deve ir.
                                                Fique preparada para limpar um pouco de leite em você e nas roupas.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.   </strong>
                                                Use qualquer uma das mãos para extrair o leite. Alguns escolhem usar a mão direita, se você for destra; mulheres canhotas tendem a usar
                                                a mão esquerda. Use a mão mais eficaz.
                                            </p>                                            
                                            <p class="color-text-a text-center p-t-10">
                                                <strong class="color-a title-information-li">Avisos</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.   </strong>
                                                Não esprema seu seios. Os seios podem ficar frágeis quando estão em fase de amamentação. Espremer pode causar dores.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.   </strong>
                                                Não puxe o mamilo para extrair leite. A área ao redor do mamilo é onde a pressão deve ser exercida para tirar o leite dos ductos lactíferos.
                                            </p>                                           
                                        </div>                                        
                                    </div>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Bombinha Elétrica</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Desenvolvida com tecnologia que imita a sucção e as diferentes pressões feitas
                                                pelos bebês no momento da mamada, as bombas elétricas, embora mais caras, podem
                                                ser alternativas práticas para algumas mães. "A bomba elétrica faz uma massagem
                                                vibratória que imita os movimentos do bebê e por isso pode ser mais tranquilo para
                                                a mãe, que pode até desempenhar outras atividades enquanto ordenha", explica a pediatra.                                     
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Lembre-se que nenhuma bomba é igual o bebê mamando, e o que as bombas elétricas fazem
                                                é tentar simular o movimento de sucção que o bebê faria no peito. No entanto, a bomba
                                                elétrica é a que melhor auxilia a mãe para conseguir fazer a ordenha, pensando numa
                                                situação a longo prazo, em que precisará fazer isso com frequência, por exemplo na volta
                                                ao trabalho, ou num bebê prematuro que está na UTI neonatal.                                                
                                            </p>
                                        </div>
                                        <div class="col-md-8 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/mae-bonita-asiatica-que-bombeia-o-leite-materno-na-cama-no-quarto_78212-306.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a text-justify"> 
                                                Existem diferentes bombas elétricas no mercado, procure uma que você se sinta confortável,
                                                e te dê a praticidade que você precisa. Veja um bomba que tenha opções de velocidade variadas,
                                                pois isso ajuda a regular melhor o quanto você irá tirar de leite, e qual se adapta melhor à você. 
                                                Procure uma bomba que tenha a função "pulsar", pois esse modo é usado antes de começar a ordenha, 
                                                para estímulo da descida do leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Procure uma bomba que tenha a opção de usar tanto na tomada quanto à pilha, caso você esteja num 
                                                local que não é possível usar a tomada. Procure uma bomba que seja confortável e anatômica, e que 
                                                se adapte ao tipo de mamilo, vale testar antes para ver se não machuca.                                               
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Se você precisa extrair mais leite em menor tempo, ou quer aumentar a produção e seu bebê não está mamando,
                                                uma boa opção é a bomba elétrica dupla, pois extrai o leite das 2 mamas ao mesmo tempo, proporcionando maior
                                                estímulo de produção. Uma ideia é alugar a bomba por um tempo e se você se adaptar bem a ela, poder compra-la
                                                depois.                                                
                                            </p>
                                            <p class="color-a text-center">
                                                <strong class="title-information-li">Como usar a bomba elétrica?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.  </strong>Antes de tudo, leia o manual de instruções, familiarize-se com o modelo, muitos
                                                lugares onde você aluga inclusive eles te explicam como usar.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.  </strong>
                                                Lave as mãos e esterilize a bomba e todas as partes dela antes de usá-la.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.  </strong>
                                                Encontre um lugar tranquilo, que você se sinta relaxada e tenha mais privacidade.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">4.  </strong>
                                                Pense no seu bebê, vale levar um objeto, uma foto ou uma música que lembre o momento de vocês juntos. Isso ajuda na ejeção
                                                de leite pois desencadeia a liberação de hormônios que são responsáveis pela ejeção de leite, como a ocitocina.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">5.  </strong>
                                                Coloque os funis (flanges) da bomba extratora encaixados no peito. Segure os funis, e não os frascos, para que você consiga
                                                ajustá-los conforme necessário.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">6.  </strong>
                                                Certifique-se de que os funis estão centrados sobre os mamilos. Se o posicionamento estiver errado, a sucção pode ser prejudicada.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">7.  </strong>
                                                Ligue o aparelho.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">8.  </strong>
                                                O leite normalmente começa a fluir dentro de dois minutos. Nesse ponto, algumas bombas serão ajustadas em velocidade. Se a sua bomba
                                                não ajustar por si só, é interessante variar a velocidade para a mais lenta e profunda, semelhante aos movimentos de sucção de um bebê.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">9.  </strong>
                                                Encontre uma velocidade que seja confortável e eficiente para você. Ao usar a bomba extratora, você não deve sentir dor.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">10.  </strong>
                                                Continue pensando no seu bebê, ouça uma música que lembre dele, ou algum objeto ou cheiro que te ajude a lembrar do momento de vocês juntos.
                                                Evite ficar olhando para o frasco, pois isso atrapalha a concentração.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">11.  </strong>
                                                Quando seu fluxo de leite diminuir, e você sentir que acabou, desligue a bomba.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">12.  </strong>
                                                Remova os protetores da mama.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">13.  </strong>
                                                Desaperte cuidadosamente os frascos e coloque as tampas corretamente. Armazene em local adequado.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">14.  </strong>
                                                Com água morna e sabão, lave os pedaços que ficam em contato com o corpo ou o leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">15.  </strong>
                                                Coloque as peças para secar sobre um pano limpo. Esterilize após.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">16.  </strong>
                                                O leite deve ser armazenado em geladeira ou freezer, se não for consumido imediatamente. Na geladeira tem validade de 12h,
                                                e no freezer, 15 dias.
                                            </p>
                                        </div>                                        
                                    </div>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Bombinha Manual</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Esses dispositivos simples são a opção mais baratas. Elas vêm com escudo para ser colocado no mamilo e um dispositivo cavado que suga o leite para uma
                                                garrafa. Mulheres gostam de bombas manuais porque são baratas e legais para ter quando você quer extrair só um pouco de leite. Por outro lado, essa opção
                                                não é muito prática para mulheres que planejam dar mamadeira para seus bebês usando primariamente leite extraído, porque uma sessão de extração dura pelo
                                                menos 45 minutos e requer o uso das duas mãos.                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                A bombinha manual costuma ser mais barata e compacta, porém possui um processo mais complicado para fazer a extração. As bombas de
                                                tirar leite manuais consistem em utilizar ritmidamente uma alavanca em um dos seios a fim de tirar o leite. 
                                            </p>
                                        </div>
                                        <div class="col-md-8 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/bomba-de-leite-materno-chupeta-e-silicone-para-alimentacao_104376-49.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a text-justify p-t-20">
                                                Existem no mercado diversas bombinhas manuais, cujo método de utilização pode variar ligeiramente. No entanto, o que é
                                                necessário fazer na maior parte delas é colocar o funil sobre a mama de modo a que o mamilo fique adequadamente centrado
                                                no túnel, segurar o funil contra a mama com a ajuda do polegar e do indicador e suportar a mama com a palma da mão e depois
                                                basta iniciar o processo de extração de acordo com as instruções da bomba. 
                                            </p>                                            
                                            <p class="color-text-a text-justify">
                                                A mulher pode precisar usar uma ou as duas mãos. As bombas de tirar leite manuais tem como vantagem serem mais baratas e é a mãe quem
                                                irá controlar a força na sucção.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Os pontos negativos das bombas manuais é que levam mais tempo para retirar o leite. Não adquira as bombas manuais com o êmbolo de borracha, 
                                                pois o risco de ocorrer infecções é maior.
                                            </p>
                                            <p class="color-a text-center">
                                                <strong class="title-information-li">Como usar a bomba manual?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.  </strong>
                                                Antes de tudo, leia o manual de instruções, familiarize-se com o modelo, muitos lugares onde você aluga inclusive eles te explicam como usar. 
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.  </strong>
                                                Lave as mãos e esterilize a bomba e todas as partes dela antes de usá-la. 
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.  </strong>
                                                Encontre um lugar tranquilo, que você se sinta relaxada e tenha mais privacidade.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">4.  </strong>
                                                Pense no seu bebê, vale levar um objeto, uma foto ou uma música que lembre o momento de vocês juntos. Isso ajuda na ejeção
                                                de leite pois desencadeia a liberação de hormônios que são responsáveis pela ejeção de leite, como a ocitocina.
                                            </p>                    
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">5.  </strong>
                                                Colque o escudo do seio no mamilo. Certifique-se de que você tenha um escudo do tamanho adequado para o seu seio. Escolher
                                                um tamanho inadequado pode resultar em uma sucção incorreta, dor e irritação.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">6.  </strong>
                                                Use o compressor para começar a extrair. Segure o escudo no lugar certo com uma mão e aperte o compressor com a outra mão.
                                                O leite começará a ser extraído diretamente para a garrafa.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">7.  </strong>
                                                Reposicione a bomba se necessário. Mudar a posição da bomba pode afetar na habilidade de sucção, então mova-o até encontrar um
                                                nível de sucção apropriado que facilite a extração.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">8.  </strong>
                                                Tente se inclinar para frente para fazer o leite sair com mais facilidade. Usar a gravidade pode estimular o fluxo de sangue para
                                                dentro do recipiente.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">9.  </strong>
                                                Continue até que o fluxo de leite diminua. Com uma bomba manual, o processo pode levar cerca de 45 minutos.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">10.  </strong>
                                                Remova os protetores da mama.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">11.  </strong>
                                                Desaperte cuidadosamente os frascos e coloque as tampas corretamente. Armazene em local adequado.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">12.  </strong>
                                                Com água morna e sabão, lave os pedaços que ficam em contato com o corpo ou o leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">13.  </strong>
                                                Coloque as peças para secar sobre um pano limpo. Esterilize após.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">14.  </strong>
                                                O leite deve ser armazenado em geladeira ou freezer, se não for consumido imediatamente. Na geladeira tem validade de 12h,
                                                e no freezer, 15 dias.
                                            </p>
                                        </div>                                        
                                    </div>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Conservando o Leite Materno</h3>
                                            </div>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Preparando o recipiente para guardar o leite</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Escolha um frasco de vidro incolor com tampa plástica, de maioneses ou de café em pó, por exemplo. Retire o rótulo
                                                e o papel dentro da tampa. Lave bem com água sabão e depois ferva a tampa e o frasco por 15 minutos, contando o tempo
                                                a partir do início da fervura. Escorra o frasco e a tampa sobre um pano limpo até secar. Depois, feche bem o frasco sem
                                                tocar com a mão na parte interna da tampa. O ideal é deixar vários frascos secos preparados, mas no momento da coleta você
                                                precisa identificar o frasco com o seu nome, data e hora da coleta.
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Higiene pessoal antes de iniciar a coleta</strong>                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Retire anéis, aliança, pulseiras e relógio .Coloque uma touca ou um lenço no cabelo e amarre uma toalha/lenço/pano/máscara
                                                na boca. Lave as mãos e os braços até o cotovelo com bastante água limpa e sabão. Lave as mamas apenas com água limpa. Seque
                                                as mãos e as mamas com toalha/pano limpo ou papel toalha, evitando deixar o resíduo de papel.
                                            </p>
                                        </div>
                                        <div class="col-md-7 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/bomba-de-leite-automatica-e-leite-materno-congelado-em-saco-plastico-na-cama_38678-1958.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Local adequado para retirar o leite</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Escolha um lugar confortável, limpo e tranquilo. Forre uma mesa com pano limpo para colocar o frasco e a tampa. Evite
                                                conversar durante a retirada do leite, para evitar contaminar o leite com salive.
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Como conservar o leite materno</strong>                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Após a coleta, guarde imediatamente o frasco na geladeira, no congelador ou freezer, em posição vertical. Se o frasco não
                                                ficar cheio você pode completa-lo em outra coleta (no mesmo dia), deixando sempre um espaço de dois dedos entre a boca do
                                                frasco e o leite. No outro dia, comece com outro frasco. Leitte cru (não pasteurizado) pode ser conservado em geladeira por
                                                até 12 horas, e no freezer ou congelador por até 15 dias.
                                            </p>
                                        </div>
                                    </div>
                                </div>                                
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Oferecendo o Leite Materno ao Bebê</h3>
                                            </div>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Como oferecer o leite ordenhado à criança</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                O leite deve ser oferecido, de preferência, utilizando-se copo, xícara ou colher. Para alimentar o bebê com leite ordenhado
                                                congelado, esse deve ser descongelado em banho-maria. Amorne o leite em banho-maria (água quente em fogo desligado) agitando
                                                o frasco lentamente para misturar bem o leite até que não reste nenhuma pedra de gelo. Para manter seus fatores de proteção,
                                                o leite materno não deve ser fervido e nem aquecido em micro-ondas. Amorne apenas a quantidade de leite que o bebê for utilizar.
                                                O leite morno que sobrar deve ser desprezado. O restante de leite descongelado e não aquecido poderá ser guardado na primeira prateleira
                                                da geladeira e utilizado no prazo de até 12 horas após o descongelamento.
                                            </p>
                                            <p class="color-text-a text-justify">
                                            </p>
                                        </div>
                                        <div class="col-md-7 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/frasco-de-bebe-com-leite-materno-para-amamentar-no-fundo-pequeno-do-bebe_7186-1558.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>                                        
                                    </div>
                                </div>                                
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Como Prevenir Problemas na Amamentação</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Certos cuidados na amamentação podem prevenir problemas como rachaduras no bico do peito, seios empedrados e outros.
                                                O bebê pegar corretamente a mama, lavar os mamilos apenas com água, não usar sabonetes, cremes ou pomadas. Retirar um
                                                pouco do leite para amaciar a aréola (parte escura do peite) antes da mamada se a mama estiver muito cheia e endurecida, 
                                                conversar com outras mulheres (amigas, vizinhas, parentes, etc.) que amamentaram bem e durante bastante tempo seus bebês.
                                            </p> 
                                        </div>
                                        <div class="col-md-7 p-t-70">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/adobestock_112667936-2-768x512-768x340.jpeg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Rachaduras no Bico do Peito</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                As rachaduras no mamilo surgem especialmente nas primeiras semanas de amamentação devido a pega incorreta
                                                do bebê na mama. Pode-se desconfiar que o bebê está pegando a mama de forma incorreta quando ao parar de mamar,
                                                o bico do peito estiver amassado. Se estiver amassado, é muito provável que a pega esteja incorreta e que no dia
                                                seguinte surjam as gretas e o sangramento. Se não houver melhora, é bom procurar ajuda no serviço de saúde.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Para curar os mamilos rachados e sangrando deve-se continuar amamentando, mas sempre verificar se o bebê está fazendo
                                                a pega correta. É importante continuar dando mamá se surgirem gretas ou sangramento porque o próprio leite materno é um
                                                excelente remédio natural para curar os mamilos rachados.                                                
                                            </p>
                                        </div>
                                        <div class="col-md-6 col-lg-7 section-md-t3 p-t-30">                                            
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Mamas Empedradas</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Quando isso acontece, é preciso esvaziar bem as mamas,a mãe não deve deixar de amamentar,
                                                ao contrário, deve amamentar com frequência, sem horários fixos, inclusive à noite, é importante
                                                retirar um pouco de leite antes da mamada para amolecer a mama e facilitar para o bebê pegar o peito.
                                                Se houver piora, a mãe deve procurar ajuda no serviço de saúde.
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Pouco Leite</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Para manter uma boa quantidade de leite, é importante que a mãe amamente com frequência. A sucção
                                                é o maior estímulo à produção do leite: quanto mais o bebê suga, mais leite a mãe produz.
                                                É importante, também, dar tempo ao bebê para que ele esvazie bem o peito em cada mamada, se o bebê dorme
                                                bem e está ganhando peso, o leito não está sendo pouco. Se a mãe achar que está com pouco leite, deve procurar
                                                orientação no serviço de saúde.
                                            </p>
                                        </div>
                                        <div class="col-md-5 p-t-50">
                                            <div class="card-box-a card-shadow p-t-10">
                                                <div class="img-box-a">
                                                    <img src="image/wsi-imageoptim-dor-a-mamar.jpg" alt="" class="img-a img-fluid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Leite Fraco</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Não existe leite fraco! Todo leite materno é forte e bom. A cor do leite pode variar, mas ele nunca é fraco,
                                                nem todo choro do bebê é de fome. A criança chora quando quer aconchego ou sente algum desconforto. Sabendo disso,
                                                não deixe que as ideias falsas atrapalhem a amamentação. É importante acreditar que a mãe é capaz de alimentar o filho
                                                nos primeiros seis meses só com o seu leite materno.
                                            </p>
                                        </div>
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
