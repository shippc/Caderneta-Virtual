<div class="container-fluid" style="padding: 0%;"> 

    <!--/ Menu Nav /-->
    <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top" style="background: #fff;"> 
        <!-- Container com o Menu Nav -->
        <div class="container"> 
            <!-- Botão Collapse Editado -->
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                    aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation"> <span></span> <span></span> <span></span> </button>
            <!-- Fim do Botão Collapse Editado --> 

            <!-- Logo do Web Site Caderneta Virtual --> 
            <a class="navbar-brand text-center meneee" href="indexl.jsp" style="font-weight: 600; font-size: 21pt;">CADERNETA<span class="color-b">VIRTUAL</span></a> 
            <!-- Fim da Logo do Web Site Caderneta Virtual --> 

            <!-- Botão Collapse  -->
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                    aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation"> <span></span> <span></span> <span></span> </button>

            <!-- Fim do Botão Collapse  -->

            <div class="navbar-collapse collapse justify-content-center" id="navbarDefault"> 
                <!-- Links do Menu Nav -->
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link text-center" href="indexl.jsp">Pagina Inicial</a></li>
                    <li class="nav-item"><a class="nav-link text-center" href="sobrel.jsp">Sobre</a></li>
                    <li class="nav-item"><a class="nav-link text-center active" href="sistemasl.jsp">Sistemas</a></li>
                    <li class="nav-item"><a class="nav-link text-center" href="informacoesl.jsp">Informações</a></li>
                    <li class="nav-item"><a class="nav-link text-center" href="contatol.jsp">Contato</a></li>                    
                </ul>
                <!-- Fim dos Links do Menu Nav --> 
            </div>
            <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a  class="nav-link text-center user-hover" href="sidebar.jsp">
                            <span class="fa fa-user-circle" style="font-size: 30pt;"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Fim do Container com o Menu Nav --> 
    </nav>
    <!-- Fim do Menu Nav --> 

    <!-- Início da Janela Modal Cadastro -->
    <div class="modal fade" id="myModalCadastro" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"> <!-- Header do Modal -->
                    <h5 class="modal-title text-center">Inscreva-se na Caderneta Virtual!</h5><!-- Título -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><!-- Botão fechar do Modal -->
                </div>
                <div class="modal-body"> <!-- Corpo do modal -->
                    <!-- Início do Formulário Cadastro -->
                    <form action="ValidarForm" method="POST" id="formCadastro" name="formCadastro">
                        <span class="form-title fa fa-user-circle-o" id="user-cads"></span>
                        <div class="wrap-input">
                            <input class="input-cadastro" type="text" name="txtCadastroEmail" placeholder="Email">
                            <span class="focus-input-cadastro"></span><span class="symbol-input-cadastro"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        </div>
                        <div class="wrap-input">
                            <input class="input-cadastro" type="password" name="password" id="password" placeholder="Senha">
                            <span class="focus-input-cadastro"></span><span class="symbol-input-cadastro"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>
                        <div class="wrap-input">
                            <input class="input-cadastro" type="password" name="conf_password" id="conf_password" placeholder="Confirmar senha">
                            <span class="focus-input-cadastro"></span><span class="symbol-input-cadastro"> <i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>  
                        <div class="container-form-btn">
                            <input type="hidden" name="acao" value="cadastrarAcesso">
                            <button class="cadastro-form-btn" type="button" onClick="validarSenha()">Cadastre-se</button>
                        </div>
                        <div class="text-center p-t-14"><span class="txt1 a-modal">Ao inscrever-se, você concorda com nossos<a class="txt2 menooo" href="#" data-toggle="modal" data-target="#myModalTermos" data-dismiss="modal" style="font-weight: bold;"> Termos de uso</a> e nossa <a class="txt2 menooo" href="#" data-toggle="modal" data-target="#myModalPolitica" data-dismiss="modal" style="font-weight: bold;">Política de Privacidade.</a></span></div> 
                    </form>
                    <!-- Fim do Formulário Cadastro -->
                </div>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 80%;">
                <div class="text-center p-b-15"><span class="txt1 a-modal">Já tem uma conta? <a class="txt2 menooo" href="#" data-toggle="modal" data-target="#myModalLogin" data-dismiss="modal" style="font-weight: bold;">Fazer login</a></span></div>
            </div>
        </div>
    </div>
    <!-- Fim do Modal Cadastro--> 

    <!-- Início da Janela Modal Login -->
    <div class="modal fade" id="myModalLogin" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"><!-- Header do Modal -->
                    <h5 class="modal-title text-center">Faça o login na Caderneta Virtual!</h5><!-- Título -->
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button><!-- Botão fechar do Modal -->
                </div>
                <div class="modal-body"><!-- Corpo do Modal -->
                    <!-- Início do Formulário Login -->
                    <form name="formLogin" action="ValidarAcesso" method="POST">
                        <span class="form-title fa fa-user-circle-o" style="padding-top: 2%;"></span>
                        <div class="wrap-input">
                            <input class="input-login" type="email" name="txtUsuario" placeholder="Email">
                            <span class="focus-input-login"></span><span class="symbol-input-login"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        </div>
                        <div class="wrap-input">
                            <input class="input-login" type="password" name="txtSenha" placeholder="Senha">
                            <span class="focus-input-login"></span><span class="symbol-input-login"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>
                        <div class="container-form-btn">
                            <input type="hidden" name="acao" value="logar">
                            <button type="submit" class="login-form-btn"> Login </button>
                        </div>
                        <div class="text-center p-t-12"> <span class="txt1 a-modal"> Esqueceu a </span> <a class="txt2 meneee" href="#" style="font-weight: bold;"> Senha? </a> </div>
                        <div class="text-center p-t-14"> <span class="txt1 a-modal"> Não possui uma conta? <a class="txt2 meneee" href="#" data-toggle="modal" data-target="#myModalCadastro" data-dismiss="modal" style="font-weight: bold;">Cadastre-se</a></span></div>
                    </form>
                    <!-- Fim do Formulário Login -->
                </div>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 80%;">
            </div>
        </div>
    </div>
    <!-- Fim do Modal Login -->  
</div>