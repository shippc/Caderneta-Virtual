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
                                <h1 class="title-single">Saiba como ter uma amamenta��o prazerosa para voc� e o seu beb�!</h1>
                                <span class="color-text-a"></span> </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"> <a class="meneee" href="informacoesl.jsp">Informa��es</a> </li>
                                    <li class="breadcrumb-item color-b" aria-current="page">Amamenta��o</li>
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
                                <h3 class="sinse-title">Amamenta��o Saud�vel</h3>
                            </div>
                        </div>
                        <div class="col-md-12 section-t8">
                            <div class="row">                                
                                <div class="col-md-6 col-lg-5 section-md-t3">
                                    <div class="title-box-d">
                                        <h3 class="title-d">Amamentando o beb�</h3>
                                    </div>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Import�ncia da Amamenta��o</strong>
                                    </p>
                                    <p class="color-text-a text-justify">O leite materno � um alimento completo. Isso significa que,
                                        at� os 6 meses, o beb� n�o precisa de nenhum outro alimento (ch�, suco, �gua ou 
                                        outro leite. A partir dos 6 meses, a amamenta��o deve ser complementada com outros
                                        alimentos. � bom que o beb� continue sendo amamentado at� 2 anos ou mais.Quanto mais
                                        tempo o beb� mamar no peito, melhor para ele e para a m�e.                                        
                                    </p>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Benef�cios para o beb�:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">O leite materno tem tudo o que o beb� precisa at� os 6 meses,
                                        inclusive �gua, e � de mais f�cil digest�o que qualquer outro leite, porque foi feito para ele. 
                                        Funciona como uma verdadeira vacina, protegendo a crian�a de muitas doen�as, al�m disso, � limpo,
                                        est� sempre pronto e quentinho.
                                    </p>                                    
                                </div>
                                <div class="col-md-7 p-t-50">
                                    <div class="card-box-a card-shadow">
                                        <div class="img-box-a">
                                            <img src="image/2728479.jpg" alt="" class="img-a img-fluid"> </div>
                                    </div>                                
                                </div>
                                <div class="col-md-12">
                                    <p class="color-text-a text-justify">A amamenta��o favorece um contato mais �ntimo entre a m�e e o beb�. Sugar o peito
                                        � um excelente exerc�cio para o desenvolvimento da face da crian�a, ajuda a ter dentes bonitos, a desenvolver
                                        a fala e a ter uma boa respira��o.                                        
                                    </p>
                                    <p class="color-text-a">
                                        <strong class="color-a title-information-li">Benef�cios para a m�e:</strong>
                                    </p>
                                    <p class="color-text-a text-justify">
                                        Pode ser um m�todo natural para evitar uma nova gravidez nos primeiros 6 meses, desde que a m�e esteja
                                        amamentando exclusivamente (a crian�a n�o recebe nenhum outro alimento) e em livre demanda (dia e noite,
                                        sempre que o beb� quiser), e ainda n�o tenha menstruado.
                                    </p>
                                    <p class="color-text-a text-justify">
                                        Reduz o peso mais rapidamente ap�s o parto. Ajuda o �tero a recuperar seu tamanho normal, diminuindo o 
                                        risco de hemorragia e de anemia ap�s o parto. Reduz o risco de diabetes, reduz o risco de c�ncer de mama,
                                        de ov�rio e de �tero.                                        
                                    </p>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Como tornar a Amamenta��o mais tranquila e prazerosa</h3>
                                            </div>
                                            <p class="color-text-a text-justify">Nos primeiros meses o beb� ainda n�o tem hor�rio para mamar.
                                                Ele deve mamar sempre que quiser. Com o tempo ele faz o hor�rio. Com alguns cuidados, a amamenta��o
                                                n�o machuca o peito e fica mais f�cil para o beb� retirar o leito do peito.
                                            </p>
                                            <p class="color-text-a text-justify">A melhor posi��o para amamentar � aquela em que a m�e e o beb� sintam-se
                                                confort�veis. A amamenta��o deve ser prazerosa para a m�e e para o beb�. O beb� deve estar virado para a m�e,
                                                bem junto de seu corpo, bem apoiado e com os bra�os livres.  A cabe�a do beb� deve ficar de frente para o peito
                                                e o nariz bem na frente do mamilo. S� coloque o beb� para sugar quando ele abrir bem a boca.  Quando o beb� pega bem o peito,
                                                o queixo encosta na mama, os l�bios ficam virados para fora, o nariz fica livre e aparece mais ar�ola (parte escura em volta do mamilo)
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
                                                <h3 class="title-d">Sinais indicativos de amamenta��o adequada</h3>
                                            </div>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Boa posi��o:</strong>
                                            </p>
                                            <p class="color-text-a text-justify">O pesco�o do beb� est� ereto ou um pouco curvado para tr�s,
                                                sem estar distendido.<br>
                                                O corpo da crian�a est� voltado para o corpo da m�e.<br> A barriga do beb� est� encostada na
                                                barriga da m�e.<br> Todo o corpo do beb� recebe sustenta��o. <br>O beb� e a m�e devem estar
                                                confort�veis.                                                
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Boa pega:</strong>
                                            </p>
                                            <p class="color-text-a text-justify">A boca est� bem aberta.<br> O queixo est� tocando o seio.<br>
                                                L�bio inferior virado para fora. <br> H� mais ar�ola-vis�vel acima da boca do que abaixo. <br>
                                                Ao amamentar, a m�e n�o sente dor no mamilo.
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
                                                Cada beb� tem seu pr�prio ritmo de mamar, o que deve ser respeitado. Deixe-o mamar at� que fique satisfeito. 
                                                Espere que ele esvazie bem a mama e ent�o ofere�a a outra, se ele quiser. O leite do in�cio da mamada tem mais
                                                �gua e mata a sede e o do fim da mamada tem mais gordura e por isso mata a fome do beb� e faz com que ele ganhe mais peso.    
                                            </p>
                                            <p class="color-text-a text-justify">No in�cio da mamada o beb� suga com mais for�a porque est� com mais fome e assim esvazia
                                                melhor a primeira mama oferecida. Por isso, � bom que a m�e comece cada mamada pelo peito em que o beb� mamou por �ltimo na
                                                mamada anterior. Assim o beb� tem a oportunidade de esvaziar bem as duas mamas, o que � importante para a m�e ter bastante leite.
                                                Quando for preciso tirar o beb� do peito, para que ele solte o mamilo sem machuc�-lo, a m�e pode colocar o dedo m�nimo no canto
                                                da boca do beb�, entre as gengivas. Depois da mamada, � importante colocar o beb� na posi��o vertical para que ele possa arrotar.                                                
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6 section-md-t3 p-t-60">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Aten��o M�es!!!</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                N�o h� necessidade de usar mamadeiras e chupetas, pois podem atrapalhar a amamenta��o. Al�m disso,
                                                podem causar doen�as, problemas na denti��o e na fala. � importante a m�e cuidar-se bem, evitar bebidas
                                                alco�licas e cigarro. Os rem�dios que a m�e toma podem passar para a crian�a; por isso ela s� deve tomar
                                                medicamentos com orienta��o m�dica.                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Se a m�e precisar usar m�todo para evitar uma nova gravidez, ela deve procurar o servi�o de sa�de. No momento
                                                da amamenta��o � importante que a m�e converse, fa�a carinho e d� aten��o a crian�a.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Se a m�e tiver excesso de leite, ela pode do�-lo a um Banco de Leite Humano e ajudar outros beb�s que necessitam
                                                de leite humano. Informe-se nos servi�os de sa�de ou no site da <a class="meneee" href="https://rblh.fiocruz.br/rblh-brasil">rBLH</a> 
                                                ou, se preferir, procure a unidade de sa�de mais pr�xima de sua casa.                                                
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
                                                <h3 class="title-d">Bombinhas ou Express�o Manual do Leite</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                O processo manual � o m�todo mais �til, pois nem todas as pessoas tem dinheiro para comprar as bombinhas
                                                para a retirada do leite do peito e os pre�os das bombinhas variam. Est� indicado para 
                                                aliviar mamas muito cheiras, manter a produ��o de leite quando o beb� n�o suga bem, aumentar 
                                                o volume de leite, guardar leite para oferecer ao beb� mais tarde na aus�ncia da m�e e, tamb�m,
                                                para doar a um banco de leite.                                     
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Qual � a melhor alternativa?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                O Minist�rio da Sa�de preconiza a ordenha manual como a melhor alternativa para a obten��o de leite materno,
                                                no entanto, Luciana Herrero, pediatra peri-gestacional especialista internacional em amamenta��o afirma que,
                                                embora seja essencial que uma lactante saiba retirar seu leite com as m�os, a escolha para o dia a dia deve ser
                                                a mais c�moda e pr�tica para a mulher.
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
                                                "O importante � que elas n�o fiquem dependentes apenas um ou de outro modo,
                                                mas cada mulher se adequa a uma forma. Para algumas a bomba el�trica � mais r�pida, j� para outas a ordenha manual
                                                mais prazerosa", diz.
                                            </p>                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Express�o Manual (Ordenha)</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Muitas mulheres extraem o leite materno para reduzir o ingurgitamento, prevenir a falta de leite e guarda-lo para
                                                uso n�o imediato. Para algumas mulheres, a extra��o manual pode ser uma alternativa mais confort�vel do que as bombas
                                                para os seios. O processo pode ser feito em qualquer lugar e sem instrumentos ou dispositivos especiais. Tamb�m tem sido
                                                mostrado que isso ajuda os seios a produzir mais leite; nos seios de algumas mulheres � mais f�cil extrair o leite com o contato
                                                na pele do que com o uso de uma bomba de pl�stico. Se voc� quiser saber como extrair o leite manualmente.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                A t�cnica manual requer mais tempo e pr�tica, pois � preciso massagear bem as mamas antes de come�ar a extrair o 
                                                leite e, para pegar pr�tica, � preciso repetir o processo v�rias vezes, mas o custo � zero.   
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
                                                <strong class="title-information-li">Como fazer a express�o manual?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.  </strong>Lave as m�os. Suas m�os devem estar lavadas antes de tentar extrair o leite materno manualmente.
                                                Se voc� lavou as suas m�os com �gua fria, deixe-as aquecer antes de tocar os seios. M�os frias podem fazer o processo levar mais tempo
                                                do que m�os aquecidas. Se essa � a sua primeira vez e voc� est� insegura, voc� pode pedir a ajuda de uma enfermeira ou at� pedir a ajuda
                                                do seu parceiro.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.  </strong>
                                                Lave as m�os e esterilize a bomba e todas as partes dela antes de us�-la.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.  </strong>
                                                Encontre um lugar tranquilo, que voc� se sinta relaxada e tenha mais privacidade.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">4.  </strong>
                                                Pense no seu beb�, vale levar um objeto, uma foto ou uma m�sica que lembre o momento de voc�s juntos. Isso ajuda na eje��o
                                                de leite pois desencadeia a libera��o de horm�nios que s�o respons�veis pela eje��o de leite, como a ocitocina.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">5.  </strong>
                                                Coloque um pano molhado com �gua morna nos seus seios por dois minutos. Isso pode ajuda com a extra��o do leite. Apesar de n�o ser necess�rio,
                                                n�o custa nada tentar..
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">6.  </strong>
                                                Fa�a massagens nos seios. Se voc� quer preparar os seus seios para extra��o manual, voc� pode fazer leves massagens usando as m�os ou uma toalha macia.
                                                Massageie levemente a pele ao redor dos mamilos para ajudar seus seios a relaxar e se prepararem para produzir leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">7.  </strong>
                                                Sente-se e se incline para frente. Essa posi��o facilitar� a extra��o do leite e deixar� voc� confort�vel durante o processo. Voc� n�o conseguir� extrair
                                                tanto leite se estiver em p� ou deitada.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">8.  </strong>
                                                Posicione seus dedos nos reservat�rios de leite no seu seio. Voc� deve posicionar as suas m�os em C acima ou abaixo do mamilo. Voc� deve fazer o seguinte:<br>
                                                Coloque o seu dedo polegar acima do mamilo. Ele deve ficar aproximadamente 2,54 cm acima do mamilo.
                                                Posicione os dois primeiros dedos da sua m�o 2,54 cm abaixo do mamilo diretamente alinhados com o polegar.
                                                Ajuste o posicionamento do seu dedo ao seu conforto e ao tamanho do seu seio.                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">9.  </strong>
                                                Aplique press�o para dentro em dire��o ao seu peitoral. A press�o deve ser leve e firme, mas n�o deve ser como se voc� estivesse espremendo
                                                o seio. Evite apertar ou esticar a pele ao redor da ar�ola, pois isso dificultar� a extra��o do leite. Pressione para tr�s o seu polegar e 
                                                o seu dedo m�dio diretamente no tecido do seio, na parede do peitoral. Aqui est�o algumas coisas para manter em mente:<br>
                                                Lembre-se de pressionar para tr�s, n�o para fora, e de girar os dedos, n�o de desliz�-los.
                                                Gire o polegar e os dedos para frente para que voc� esprema o leite para fora dos ductos lact�feros, que est�o localizados em baixo da 
                                                ar�ola, em baixo do mamilo. Mantenha os dedos juntos. Espalhar os dedos reduz a efic�cia do processo. Levante seios grandes antes de
                                                colocar press�o.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">10.  </strong>
                                                Extraia o leite materno. Use um movimento girat�rio para longe do corpo com seu polegar e seus dedos. Comprima seus seios com esse movimento
                                                girat�rio. Voc� deve pressionar, comprimir e relaxar. Quando voc� se acostumar, voc� conseguir� entrar no ritmo, como se fosse o beb� tirando
                                                o leite, o que ajudar� voc� a extrair o leite mais facilmente. Os seios de todas as mulheres s�o diferentes. � a sua escolha encontrar a
                                                melhor posi��o que ajuda a extrair a maior quantidade de leite. Voc� tamb�m pode experimentar extrair o leite, massagear, extrair o leite e 
                                                massagear de novo.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">11.  </strong>
                                                Colete o leite extra�do em um recipiente. Se voc� estiver extraindo apenas para sentir os seus seios fiquem mais confort�veis, voc� pode 
                                                extrair em uma toalha ou na pia. Aqui est�o algumas coisas que voc� pode fazer para guardar o leite para usar mais tarde:<br>
                                                Use uma sacola de leite para coletar o leite extra�do.
                                                Extraia o leite diretamente em frascos para usar mais tarde.
                                                Use um funil para direcionar o leite no recipiente, se necess�rio.
                                                Use um recipiente com uma abertura larga, como uma x�cara de caf� ou uma jarra pequena. 
                                                Quando o copo estiver cheio, transfira o leite para o recipiente de armazenamento.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">12.  </strong>
                                                Repita o processo no outro seio. Mude as posi��es levemente em cada seio para extrair todo o leite. Mudando de um seio ao outro ir� 
                                                estimular ainda mais a extra��o do leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">13.  </strong>
                                                Desaperte cuidadosamente os frascos e coloque as tampas corretamente. Armazene em local adequado.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">14.  </strong>
                                                Com �gua morna e sab�o, lave os peda�os que ficam em contato com o corpo ou o leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">15.  </strong>
                                                Coloque as pe�as para secar sobre um pano limpo. Esterilize ap�s.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">16.  </strong>
                                                O leite deve ser armazenado em geladeira ou freezer, se n�o for consumido imediatamente. Na geladeira tem validade de 12h,
                                                e no freezer, 15 dias.
                                            </p>
                                            <p class="color-text-a text-center p-t-10">
                                                <strong class="color-a title-information-li">Dicas</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.   </strong>
                                                A extra��o manual do leite materno �s vezes pode levar algumas tentativas para saber fazer bem. Tente novamente se a primeira
                                                tentativa n�o der os resultados esperados.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.   </strong>
                                                Mantenha uma toalha perto de voc� para limpar respingos. A extra��o manual de leite nem sempre o direciona ao local onde ele deve ir.
                                                Fique preparada para limpar um pouco de leite em voc� e nas roupas.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.   </strong>
                                                Use qualquer uma das m�os para extrair o leite. Alguns escolhem usar a m�o direita, se voc� for destra; mulheres canhotas tendem a usar
                                                a m�o esquerda. Use a m�o mais eficaz.
                                            </p>                                            
                                            <p class="color-text-a text-center p-t-10">
                                                <strong class="color-a title-information-li">Avisos</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.   </strong>
                                                N�o esprema seu seios. Os seios podem ficar fr�geis quando est�o em fase de amamenta��o. Espremer pode causar dores.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.   </strong>
                                                N�o puxe o mamilo para extrair leite. A �rea ao redor do mamilo � onde a press�o deve ser exercida para tirar o leite dos ductos lact�feros.
                                            </p>                                           
                                        </div>                                        
                                    </div>                                    
                                </div>
                                <div class="col-md-12 section-t8">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-4 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Bombinha El�trica</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Desenvolvida com tecnologia que imita a suc��o e as diferentes press�es feitas
                                                pelos beb�s no momento da mamada, as bombas el�tricas, embora mais caras, podem
                                                ser alternativas pr�ticas para algumas m�es. "A bomba el�trica faz uma massagem
                                                vibrat�ria que imita os movimentos do beb� e por isso pode ser mais tranquilo para
                                                a m�e, que pode at� desempenhar outras atividades enquanto ordenha", explica a pediatra.                                     
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Lembre-se que nenhuma bomba � igual o beb� mamando, e o que as bombas el�tricas fazem
                                                � tentar simular o movimento de suc��o que o beb� faria no peito. No entanto, a bomba
                                                el�trica � a que melhor auxilia a m�e para conseguir fazer a ordenha, pensando numa
                                                situa��o a longo prazo, em que precisar� fazer isso com frequ�ncia, por exemplo na volta
                                                ao trabalho, ou num beb� prematuro que est� na UTI neonatal.                                                
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
                                                Existem diferentes bombas el�tricas no mercado, procure uma que voc� se sinta confort�vel,
                                                e te d� a praticidade que voc� precisa. Veja um bomba que tenha op��es de velocidade variadas,
                                                pois isso ajuda a regular melhor o quanto voc� ir� tirar de leite, e qual se adapta melhor � voc�. 
                                                Procure uma bomba que tenha a fun��o "pulsar", pois esse modo � usado antes de come�ar a ordenha, 
                                                para est�mulo da descida do leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Procure uma bomba que tenha a op��o de usar tanto na tomada quanto � pilha, caso voc� esteja num 
                                                local que n�o � poss�vel usar a tomada. Procure uma bomba que seja confort�vel e anat�mica, e que 
                                                se adapte ao tipo de mamilo, vale testar antes para ver se n�o machuca.                                               
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Se voc� precisa extrair mais leite em menor tempo, ou quer aumentar a produ��o e seu beb� n�o est� mamando,
                                                uma boa op��o � a bomba el�trica dupla, pois extrai o leite das 2 mamas ao mesmo tempo, proporcionando maior
                                                est�mulo de produ��o. Uma ideia � alugar a bomba por um tempo e se voc� se adaptar bem a ela, poder compra-la
                                                depois.                                                
                                            </p>
                                            <p class="color-a text-center">
                                                <strong class="title-information-li">Como usar a bomba el�trica?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.  </strong>Antes de tudo, leia o manual de instru��es, familiarize-se com o modelo, muitos
                                                lugares onde voc� aluga inclusive eles te explicam como usar.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.  </strong>
                                                Lave as m�os e esterilize a bomba e todas as partes dela antes de us�-la.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.  </strong>
                                                Encontre um lugar tranquilo, que voc� se sinta relaxada e tenha mais privacidade.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">4.  </strong>
                                                Pense no seu beb�, vale levar um objeto, uma foto ou uma m�sica que lembre o momento de voc�s juntos. Isso ajuda na eje��o
                                                de leite pois desencadeia a libera��o de horm�nios que s�o respons�veis pela eje��o de leite, como a ocitocina.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">5.  </strong>
                                                Coloque os funis (flanges) da bomba extratora encaixados no peito. Segure os funis, e n�o os frascos, para que voc� consiga
                                                ajust�-los conforme necess�rio.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">6.  </strong>
                                                Certifique-se de que os funis est�o centrados sobre os mamilos. Se o posicionamento estiver errado, a suc��o pode ser prejudicada.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">7.  </strong>
                                                Ligue o aparelho.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">8.  </strong>
                                                O leite normalmente come�a a fluir dentro de dois minutos. Nesse ponto, algumas bombas ser�o ajustadas em velocidade. Se a sua bomba
                                                n�o ajustar por si s�, � interessante variar a velocidade para a mais lenta e profunda, semelhante aos movimentos de suc��o de um beb�.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">9.  </strong>
                                                Encontre uma velocidade que seja confort�vel e eficiente para voc�. Ao usar a bomba extratora, voc� n�o deve sentir dor.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">10.  </strong>
                                                Continue pensando no seu beb�, ou�a uma m�sica que lembre dele, ou algum objeto ou cheiro que te ajude a lembrar do momento de voc�s juntos.
                                                Evite ficar olhando para o frasco, pois isso atrapalha a concentra��o.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">11.  </strong>
                                                Quando seu fluxo de leite diminuir, e voc� sentir que acabou, desligue a bomba.
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
                                                Com �gua morna e sab�o, lave os peda�os que ficam em contato com o corpo ou o leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">15.  </strong>
                                                Coloque as pe�as para secar sobre um pano limpo. Esterilize ap�s.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">16.  </strong>
                                                O leite deve ser armazenado em geladeira ou freezer, se n�o for consumido imediatamente. Na geladeira tem validade de 12h,
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
                                                Esses dispositivos simples s�o a op��o mais baratas. Elas v�m com escudo para ser colocado no mamilo e um dispositivo cavado que suga o leite para uma
                                                garrafa. Mulheres gostam de bombas manuais porque s�o baratas e legais para ter quando voc� quer extrair s� um pouco de leite. Por outro lado, essa op��o
                                                n�o � muito pr�tica para mulheres que planejam dar mamadeira para seus beb�s usando primariamente leite extra�do, porque uma sess�o de extra��o dura pelo
                                                menos 45 minutos e requer o uso das duas m�os.                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                A bombinha manual costuma ser mais barata e compacta, por�m possui um processo mais complicado para fazer a extra��o. As bombas de
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
                                                Existem no mercado diversas bombinhas manuais, cujo m�todo de utiliza��o pode variar ligeiramente. No entanto, o que �
                                                necess�rio fazer na maior parte delas � colocar o funil sobre a mama de modo a que o mamilo fique adequadamente centrado
                                                no t�nel, segurar o funil contra a mama com a ajuda do polegar e do indicador e suportar a mama com a palma da m�o e depois
                                                basta iniciar o processo de extra��o de acordo com as instru��es da bomba. 
                                            </p>                                            
                                            <p class="color-text-a text-justify">
                                                A mulher pode precisar usar uma ou as duas m�os. As bombas de tirar leite manuais tem como vantagem serem mais baratas e � a m�e quem
                                                ir� controlar a for�a na suc��o.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Os pontos negativos das bombas manuais � que levam mais tempo para retirar o leite. N�o adquira as bombas manuais com o �mbolo de borracha, 
                                                pois o risco de ocorrer infec��es � maior.
                                            </p>
                                            <p class="color-a text-center">
                                                <strong class="title-information-li">Como usar a bomba manual?</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">1.  </strong>
                                                Antes de tudo, leia o manual de instru��es, familiarize-se com o modelo, muitos lugares onde voc� aluga inclusive eles te explicam como usar. 
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">2.  </strong>
                                                Lave as m�os e esterilize a bomba e todas as partes dela antes de us�-la. 
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">3.  </strong>
                                                Encontre um lugar tranquilo, que voc� se sinta relaxada e tenha mais privacidade.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">4.  </strong>
                                                Pense no seu beb�, vale levar um objeto, uma foto ou uma m�sica que lembre o momento de voc�s juntos. Isso ajuda na eje��o
                                                de leite pois desencadeia a libera��o de horm�nios que s�o respons�veis pela eje��o de leite, como a ocitocina.
                                            </p>                    
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">5.  </strong>
                                                Colque o escudo do seio no mamilo. Certifique-se de que voc� tenha um escudo do tamanho adequado para o seu seio. Escolher
                                                um tamanho inadequado pode resultar em uma suc��o incorreta, dor e irrita��o.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">6.  </strong>
                                                Use o compressor para come�ar a extrair. Segure o escudo no lugar certo com uma m�o e aperte o compressor com a outra m�o.
                                                O leite come�ar� a ser extra�do diretamente para a garrafa.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">7.  </strong>
                                                Reposicione a bomba se necess�rio. Mudar a posi��o da bomba pode afetar na habilidade de suc��o, ent�o mova-o at� encontrar um
                                                n�vel de suc��o apropriado que facilite a extra��o.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">8.  </strong>
                                                Tente se inclinar para frente para fazer o leite sair com mais facilidade. Usar a gravidade pode estimular o fluxo de sangue para
                                                dentro do recipiente.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">9.  </strong>
                                                Continue at� que o fluxo de leite diminua. Com uma bomba manual, o processo pode levar cerca de 45 minutos.
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
                                                Com �gua morna e sab�o, lave os peda�os que ficam em contato com o corpo ou o leite.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">13.  </strong>
                                                Coloque as pe�as para secar sobre um pano limpo. Esterilize ap�s.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                <strong class="color-a">14.  </strong>
                                                O leite deve ser armazenado em geladeira ou freezer, se n�o for consumido imediatamente. Na geladeira tem validade de 12h,
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
                                                Escolha um frasco de vidro incolor com tampa pl�stica, de maioneses ou de caf� em p�, por exemplo. Retire o r�tulo
                                                e o papel dentro da tampa. Lave bem com �gua sab�o e depois ferva a tampa e o frasco por 15 minutos, contando o tempo
                                                a partir do in�cio da fervura. Escorra o frasco e a tampa sobre um pano limpo at� secar. Depois, feche bem o frasco sem
                                                tocar com a m�o na parte interna da tampa. O ideal � deixar v�rios frascos secos preparados, mas no momento da coleta voc�
                                                precisa identificar o frasco com o seu nome, data e hora da coleta.
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Higiene pessoal antes de iniciar a coleta</strong>                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Retire an�is, alian�a, pulseiras e rel�gio .Coloque uma touca ou um len�o no cabelo e amarre uma toalha/len�o/pano/m�scara
                                                na boca. Lave as m�os e os bra�os at� o cotovelo com bastante �gua limpa e sab�o. Lave as mamas apenas com �gua limpa. Seque
                                                as m�os e as mamas com toalha/pano limpo ou papel toalha, evitando deixar o res�duo de papel.
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
                                                Escolha um lugar confort�vel, limpo e tranquilo. Forre uma mesa com pano limpo para colocar o frasco e a tampa. Evite
                                                conversar durante a retirada do leite, para evitar contaminar o leite com salive.
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Como conservar o leite materno</strong>                                                
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Ap�s a coleta, guarde imediatamente o frasco na geladeira, no congelador ou freezer, em posi��o vertical. Se o frasco n�o
                                                ficar cheio voc� pode completa-lo em outra coleta (no mesmo dia), deixando sempre um espa�o de dois dedos entre a boca do
                                                frasco e o leite. No outro dia, comece com outro frasco. Leitte cru (n�o pasteurizado) pode ser conservado em geladeira por
                                                at� 12 horas, e no freezer ou congelador por at� 15 dias.
                                            </p>
                                        </div>
                                    </div>
                                </div>                                
                                <div class="col-md-12 section-t8">
                                    <div class="row">                                
                                        <div class="col-md-6 col-lg-5 section-md-t3">
                                            <div class="title-box-d">
                                                <h3 class="title-d">Oferecendo o Leite Materno ao Beb�</h3>
                                            </div>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Como oferecer o leite ordenhado � crian�a</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                O leite deve ser oferecido, de prefer�ncia, utilizando-se copo, x�cara ou colher. Para alimentar o beb� com leite ordenhado
                                                congelado, esse deve ser descongelado em banho-maria. Amorne o leite em banho-maria (�gua quente em fogo desligado) agitando
                                                o frasco lentamente para misturar bem o leite at� que n�o reste nenhuma pedra de gelo. Para manter seus fatores de prote��o,
                                                o leite materno n�o deve ser fervido e nem aquecido em micro-ondas. Amorne apenas a quantidade de leite que o beb� for utilizar.
                                                O leite morno que sobrar deve ser desprezado. O restante de leite descongelado e n�o aquecido poder� ser guardado na primeira prateleira
                                                da geladeira e utilizado no prazo de at� 12 horas ap�s o descongelamento.
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
                                                <h3 class="title-d">Como Prevenir Problemas na Amamenta��o</h3>
                                            </div>
                                            <p class="color-text-a text-justify">
                                                Certos cuidados na amamenta��o podem prevenir problemas como rachaduras no bico do peito, seios empedrados e outros.
                                                O beb� pegar corretamente a mama, lavar os mamilos apenas com �gua, n�o usar sabonetes, cremes ou pomadas. Retirar um
                                                pouco do leite para amaciar a ar�ola (parte escura do peite) antes da mamada se a mama estiver muito cheia e endurecida, 
                                                conversar com outras mulheres (amigas, vizinhas, parentes, etc.) que amamentaram bem e durante bastante tempo seus beb�s.
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
                                                As rachaduras no mamilo surgem especialmente nas primeiras semanas de amamenta��o devido a pega incorreta
                                                do beb� na mama. Pode-se desconfiar que o beb� est� pegando a mama de forma incorreta quando ao parar de mamar,
                                                o bico do peito estiver amassado. Se estiver amassado, � muito prov�vel que a pega esteja incorreta e que no dia
                                                seguinte surjam as gretas e o sangramento. Se n�o houver melhora, � bom procurar ajuda no servi�o de sa�de.
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Para curar os mamilos rachados e sangrando deve-se continuar amamentando, mas sempre verificar se o beb� est� fazendo
                                                a pega correta. � importante continuar dando mam� se surgirem gretas ou sangramento porque o pr�prio leite materno � um
                                                excelente rem�dio natural para curar os mamilos rachados.                                                
                                            </p>
                                        </div>
                                        <div class="col-md-6 col-lg-7 section-md-t3 p-t-30">                                            
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Mamas Empedradas</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Quando isso acontece, � preciso esvaziar bem as mamas,a m�e n�o deve deixar de amamentar,
                                                ao contr�rio, deve amamentar com frequ�ncia, sem hor�rios fixos, inclusive � noite, � importante
                                                retirar um pouco de leite antes da mamada para amolecer a mama e facilitar para o beb� pegar o peito.
                                                Se houver piora, a m�e deve procurar ajuda no servi�o de sa�de.
                                            </p>
                                            <p class="color-text-a">
                                                <strong class="color-a title-information-li">Pouco Leite</strong>
                                            </p>
                                            <p class="color-text-a text-justify">
                                                Para manter uma boa quantidade de leite, � importante que a m�e amamente com frequ�ncia. A suc��o
                                                � o maior est�mulo � produ��o do leite: quanto mais o beb� suga, mais leite a m�e produz.
                                                � importante, tamb�m, dar tempo ao beb� para que ele esvazie bem o peito em cada mamada, se o beb� dorme
                                                bem e est� ganhando peso, o leito n�o est� sendo pouco. Se a m�e achar que est� com pouco leite, deve procurar
                                                orienta��o no servi�o de sa�de.
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
                                                N�o existe leite fraco! Todo leite materno � forte e bom. A cor do leite pode variar, mas ele nunca � fraco,
                                                nem todo choro do beb� � de fome. A crian�a chora quando quer aconchego ou sente algum desconforto. Sabendo disso,
                                                n�o deixe que as ideias falsas atrapalhem a amamenta��o. � importante acreditar que a m�e � capaz de alimentar o filho
                                                nos primeiros seis meses s� com o seu leite materno.
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
