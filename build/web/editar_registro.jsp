<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            try {
                if (session.getAttribute("acesso") == null) {
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
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarRegistro?acao=listaRegistros">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Edição de Registros de Vacinas </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarRegistro" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Edição de Registros de Vacinas</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <fieldset disabled>
                            <label for="input">Nome da Pessoa</label>
                            <div class="wrap-input">
                                <input class="inputdados" type="text" name="txtNome" id="nome" value="${usuario.nome}" placeholder="Nome do usuário">
                                <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                            </div>
                        </fieldset>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Atendente</label>
                        <select name="optionAtendente" id="atendente" class="inputdadim">
                            <option selected>${admin.nome}</option>
                            <c:forEach items="${atendente}" var="atendente">
                                <option value="${atendente.idusuario}">${atendente.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Vacina</label>
                        <div class="wrap-input">
                            <div class="wrap-input">
                                <select name="optionVacina" id="estado" class="inputdadim">
                                    <option selected>${vacina.nome}</option>
                                    <c:forEach items="${vacinas}" var="vacinas">
                                        <option value="${vacinas.idvacina}">${vacinas.nome}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Número da Dose</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="number" name="txtDosesRegistro" id="registrodoses" placeholder="0" minlenght="1" maxlength="1" value="${registro.dose}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Lote da Vacina</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtLote" id="lote" placeholder="Digite o lote" minlenght="1" maxlength="10" value="${registro.lote}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Data de Lançamento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="date" name="txtDataRegistro" id="primeiraDose" placeholder="0" minlenght="1" maxlength="10" value="${registro.data}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="input">Laboratório</label>
                        <div class="wrap-input">
                            <input class="inputdados"  type="text" name="txtLabs" id="laboratorio" placeholder="Digite o laboratório" minlenght="4" maxlength="30" value="${registro.laboratorio}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-flask" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="input">Local da Vacinação</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionLocal" id="local">
                                <option selected>${local.nome}</option>
                                <c:forEach items="${locais}" var="locais">
                                    <option value="${locais.idlocal}">${locais.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Reforço</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionReforco" id="reforco">
                                <option selected>${registro.reforco}</option>
                                <option value="Sim">Sim</option>
                                <option value="Não">Não</option>
                            </select>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center text-center bot">
                    <input type="hidden" name="idregistro_vacinas" value="${registro.idregistro_vacinas}">
                    <input type="hidden" name="idusuario" value="${usuario.idusuario}">
                    <input type="hidden" name="acao" value="atualizarRegistro">
                    <button type="submit" class="btn btn-primary btn-send">Enviar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>
        </div>

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
