<%@page import="br.com.senaces.bean.AcessoBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:include page="head.jsp"/>
        <title>Caderneta Virtual</title>
    </head>
    <body>
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
                                <li class="breadcrumb-item color-b" aria-current="page"> Cadastro de Histórico </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarHistorico" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Lançamento de Histórico</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome Completo</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionUsuario" id="usuario" required>
                                <option selected value="">Escolha</option>
                                <c:forEach items="${usuarios}" var="usuario">
                                    <option value="${usuario.idusuario}">${usuario.nome}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Faixa Etária</label>
                        <div class="wrap-input">
                            <select class="inputdadim" name="optionUnidade" id="faixa" required>
                                <option selected value="">Escolha</option>
                                <option>Criança</option>
                                <option>Jovem</option>
                                <option>Adulto</option>
                                <option>Idoso</option>
                            </select>
                        </div>
                    </div> 
                    <div class="form-group col-md-3">
                        <fieldset disabled>
                            <label for="input">Data de Lançamento</label>
                            <div class="wrap-input">
                                <input class="inputdados" type="text" id="data_lanc" name="txtDataLanc" minlenght="" maxlength="" value="<%out.print(data);%>">
                                <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="input">Peso</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" id="peso" name="txtPeso" placeholder="0" minlenght="2" maxlength="3" min="1" max="300" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Altura</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" id="altura" name="txtAltura" placeholder="0" minlenght="3" maxlength="6" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Idade</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="text" id="idade" name="txtIdade" placeholder="0" minlenght="1" maxlength="3" min="0" max="200" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Perímetro Cefálico</label>
                        <div class="wrap-input">
                            <input class="inputdados" type="number" id="perimetro" name="txtPerimetro" placeholder="0" minlenght="" maxlength="" min="0" max="6">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center text-center">
                    <input type="hidden" name="acao" value="cadastrarHistorico">
                    <button type="submit" class="btn btn-primary btn-send">Enviar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
