<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            }
        %>
    <head>
        <meta charset="utf-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="head.jsp"/>
        <title>Caderneta Virtual</title>
    </head>
    <body>
        <%
            Date d = new Date();
            SimpleDateFormat strDate = new SimpleDateFormat("dd/MM/yyyy");
            String data = strDate.format(new Date());  
        %>
        <jsp:include page="menulogin.jsp" flush="true"/>
        <section class="intro-single" id="introducao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a class="meneee" href="sidebar.jsp">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Registro de Vacinas </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarRegistro" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Registro de Vacinas</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome da Pessoa</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionUsuario" id="usuario" required>
                                <option selected value="">Escolha</option>
                                <c:forEach items="${usuarios}" var="usuario">
                                    <option value="${usuario.idusuario}">${usuario.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Atendente</label>
                        <div class="wrap-input">
                            <select name="optionAtendente" id="atendente" class="inputdadim" required>
                                <option selected value="">Escolha</option>
                                <c:forEach items="${atendente}" var="atendente">
                                    <option value="${atendente.idusuario}">${atendente.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="input">Vacina</label>
                        <div class="wrap-input">
                            <select name="optionVacina" id="estado" class="inputdadim" required>
                                <option selected value="">Escolha</option>
                                <c:forEach items="${vacinas}" var="vacina">
                                    <option value="${vacina.idvacina}">${vacina.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <div class="p-b-15">
                            <label for="input">Reforço</label>
                        </div>                        
                        <label class="radio-inline p-l-15">
                            <input type="radio" name="optionReforco" value="Sim" required> Sim
                        </label>
                        <label class="radio-inline p-l-15">
                            <input type="radio" name="optionReforco" value="Não"> Não
                        </label>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Número da Dose</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtDosesRegistro" id="registrodoses" placeholder="0" minlength="1" maxlength="1" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Lote da Vacina</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtLote" id="lote" placeholder="Digite o lote" minlenght="1" maxlength="10" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <fieldset disabled>
                            
                        <label for="input">Data de Lançamento</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" name="txtDataRegistro" id="primeiraDose"  minlenght="1" maxlength="10" value="<%out.print(data);%>">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                        </fieldset>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Laboratório</label>
                        <div class="wrap-input">
                            <input class="inputdados"  type="text" name="txtLabs" id="laboratorio" placeholder="Digite o laboratório" minlenght="4" maxlength="30" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-flask" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Local da Vacinação</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionLocal" id="local" required>
                                <option selected value="">Escolha</option>
                                <c:forEach items="${locais}" var="local">
                                    <option value="${local.idlocal}">${local.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>                    
                </div>
                <ul class="justify-content-center text-center bot">
                    <input type="hidden" name="acao" value="cadastrarRegistroVacinas">
                    <button type="submit" class="btn btn-primary btn-send">Enviar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>  
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
