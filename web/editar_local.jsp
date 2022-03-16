<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            try {
                if (session.getAttribute("acesso") == null) {
                    System.out.println("Cheguei aqui");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                if (session.getAttribute("acesso") != null) {
                    AcessoBean acs = new AcessoBean();
                    acs = (AcessoBean) session.getAttribute("acesso");
                    if (acs.getTipo().equals("Usuario")) {
                        request.getRequestDispatcher("indexl.jsp").forward(request, response);
                    }
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
        <jsp:include page="menulogin.jsp" flush="true"/>

        <section class="intro-single" id="introducao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">

                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarLocal?acao=listaLocais">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Edi��o de Locais </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarLocal" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Edi��o de Locais</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome do Local</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtLocalRegistro" id="registrolocal" placeholder="Digite o nome do local" minlenght="45" maxlength="45" value="${local.nome}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Telefone</label>
                        <div class="wrap-input">
                            <input type="tel" name="txtTelefone" class="inputdados" id="telefone" placeholder="(00) 0000-0000" minlenght="14" maxlength="14" value="${local.telefone}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-phone" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Celular</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="tel" name="txtCelular" id="celular" placeholder="(00) 00000-0000" minlenght="15" maxlength="15" value="${local.celular}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados-phone"><i class="fa fa-mobile" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-9">
                        <label for="input">Endere�o</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtEndereco" id="endereco" placeholder="Logradouro" minlenght="50" maxlength="50" value="${local.endereco}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">CEP</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtCEP" id="cep" placeholder="00000-000" minlenght="9" maxlength="9" value="${local.cep}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Estado</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionEstado" id="estado">
                                <option selected>${local.estado}</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amap�</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Cear�</option>
                                <option>Distrito Federal</option>
                                <option>Esp�rito Santo</option>
                                <option>Goi�s</option>
                                <option>Maranh�o</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerais</option>
                                <option>Par�</option>
                                <option>Para�ba</option>
                                <option>Paran�</option>
                                <option>Pernambuco</option>
                                <option>Piau�</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rond�nia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>S�o Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="input">Cidade</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtCidade" id="cidade" placeholder="Digite o nome da sua cidade" minlenght="25" maxlength="25" value="${local.cidade}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="input">Bairro</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtBairro" id="bairro" placeholder="Digite o nome do seu bairro" minlenght="25" maxlength="25" value="${local.bairro}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center text-center">
                    <input type="hidden" name="acao" value="atualizarLocal">
                    <input type="hidden" name="idlocal" value="${local.idlocal}">
                    <input type="hidden" name="idendereco" value="${local.idendereco}">
                    <button type="submit" class="btn btn-primary btn-send">Atualizar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>
        </div>

        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
