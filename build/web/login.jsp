
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <jsp:include page="head.jsp"/>
        <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    </head>
    <body class="text-center">
        <jsp:include page="menuindex.jsp"/>        
         <section class="intro-single" id="introducao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-8">
                        
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a class="meneee" href="index.jsp">Página Inicial</a> </li>
                                <li class="breadcrumb-item color-b" aria-current="page"> Página de Login </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        
        <div class="container title-information-li">
            <div class="box">
                <div id="header">
                    <div id="cont-lock"><i class="fa fa-user-circle text-center" style="font-size: 3rem; padding-top: 5%;"></i></div>
                    <div id="bottom-head"><h1 id="logintoregister"></h1></div>
                </div> 
                <form action="ValidarAcesso" method="post">
                    <div class="group">      
                        <input class="inputMaterial" name="txtUsuario" type="text" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label>Email</label>
                    </div>
                    <div class="group">      
                        <input class="inputMaterial" name="txtSenha" type="password" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label>Senha</label>
                    </div>
                    <input type="hidden" name="acao" value="logar"/>
                    <button id="buttonlogintoregister" type="submit">Login</button>
                </form>
                <div id="footer-box">
                    <p class="footer-text p-t-13">Não possui conta?<span class="sign-up"> <a class="sifoni" href="cadastro.jsp">Cadastre-se agora!</a></span></p>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
