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
        <jsp:include page="head.jsp"/>
        <title>Caderneta Virtual</title>
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
                                <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarHistorico?acao=listarHistorico">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Edição de Histórico </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarHistorico" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Editar Histórico</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <fieldset disabled>
                            <label for="input">Nome Completo</label>
                            <div class="wrap-input">
                                <input class="inputdados" type="text" id="nome" name="txtNome" minlength="10" maxlength="254" value="${historico.nome}">
                                <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                            </div>
                        </fieldset>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Faixa Etária</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionUnidade" id="faixa">
                                <option selected>${historico.unidade}</option>
                                <option>Criança</option>
                                <option>Jovem</option>
                                <option>Adulto</option>
                                <option>Idoso</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Data de Lançamento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="date" id="data_lanc" name="txtDataLanc" minlength="10" maxlength="10" value="${historico.lancamento}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="input">Peso</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" id="peso" name="txtPeso" placeholder="0" minlenght="6" maxlength="10" value="${historico.peso}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Altura</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" id="altura" name="txtAltura" placeholder="0" minlenght="6" maxlength="10" value="${historico.altura}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Idade</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="number" id="idade" name="txtIdade" placeholder="0" minlenght="2" maxlength="3" value="${historico.idade}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Perímetro Cefálico</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="number" id="perimetro" name="txtPerimetro" placeholder="0" minlenght="2" maxlength="6" value="${historico.perimetro}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center text-center">
                    <input type="hidden" name="idhistorico" value="${historico.idhistorico}">
                    <input type="hidden" name="acao" value="atualizarHistorico">
                    <button type="submit" class="btn btn-primary btn-send">Enviar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>
        </div>

        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
