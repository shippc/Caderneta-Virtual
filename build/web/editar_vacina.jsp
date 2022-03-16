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
                                <li class="breadcrumb-item"> <a class="meneee" href="/ProjetoIntegrador/ValidarVacina?acao=listarVacinas">Voltar</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Edição de Vacinas </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
        <div class="container" id="to-breadcrumb">
            <form class="formulario" action="ValidarVacina" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Edição de Vacinas</h2>
                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="input">Nome da Vacina</label>
                        <div class="wrap-input">
                            <input type="text" name="txtNomeVacina" class="inputdados" id="vacina" placeholder="Digite o nome da vacina" minlength="3" maxlength="45" value="${vacina.nome}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-plus-square" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Número de Doses</label>
                        <div class="wrap-input">
                            <input type="number" name="txtDoses" class="inputdados" id="doses" placeholder="0" minlenght="1" maxlength="6" value="${vacina.doses}">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Intervalo entre as Doses</label>
                        <div class="wrap-input">
                            <input type="number" name="txtIntervalo" class="inputdados" id="intervalo" placeholder="0" minlenght="1" maxlength="6" value="${vacina.intervalo}">
                             <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Primeira Dose</label>
                        <div class="wrap-input">
                            <input type="number" name="txtPrimeiraDose" class="inputdados" id="primeiraDose" placeholder="0" minlenght="1" maxlength="6" value="${vacina.primeira_dose}">
                             <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <ul class="justify-content-center text-center bot">
                    <input type="hidden" name="idvacina" value="${vacina.idvacina}">
                    <input type="hidden" name="acao" value="atualizarVacina">
                    <button type="submit" class="btn btn-primary btn-send">Enviar</button>
                    <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                </ul>
            </form>
        </div>
        
        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
