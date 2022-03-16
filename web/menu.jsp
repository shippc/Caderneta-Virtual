<div class="container-fluid" style="padding: 0%;"> 

    <!--/ Menu Nav /-->
    <nav class="navbar navbar-expand-lg sticky-top" style="background: #fff;">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarDefault"
                    aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <a class="navbar-brand text-center meneee" href="index.jsp" style="font-weight: 600; font-size: 20pt;">CADERNETA<span class="color-b">VIRTUAL</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarDefault" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
                <ul class="navbar-nav">
                    <li class="nav-item"> <a class="nav-link text-center active" href="#">Pagina Inicial</a> </li>
                    <li class="nav-item"> <a class="nav-link text-center" href="#">Sobre</a> </li>
                    <li class="nav-item"> <a class="nav-link text-center" href="#">Sistemas</a> </li>
                    <li class="nav-item"> <a class="nav-link text-center" href="#">Informações</a> </li>
                    <li class="nav-item"> <a class="nav-link text-center" href="#"> Fale Conosco </a> </li>
                    <li class="nav-item"> <a class="nav-link text-center" href="/ProjetoIntegrador/ValidarForm?acao=listar">Usuarios</a></li>
                    <li class="nav-item"><a class="nav-link text-center" href="/ProjetoIntegrador/ValidarRegistro?acao=RegistroVacinas">Registro</a></li>
                </ul>
            </div>
            <!-- Botão que abre a janela modal -->
            <button type="button" class="btn navbar-toggle-box-collapse d-none d-md-block btn-Log" data-toggle="modal" data-target="#myModalLogin" aria-expanded="false"> <span aria-hidden="true">Fazer login</span> </button>
            <!-- Botão que abre a janela modal -->
            <button type="button" class="btn navbar-toggle-box-collapse d-none d-md-block btn-Cad" data-toggle="modal" data-target="#myModalCadastro" aria-expanded="false"> <span aria-hidden="true">Cadastre-se</span> </button>
        </div>
    </nav>
    <!-- Fim do Menu Nav --> 

    <!-- Início do código da janela modal -->
    <div id="myModalCadastro" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"><!-- Header do modal -->
                    <h5 class="modal-title">Inscreva-se na Caderneta Virtual!</h5>
                    <!-- Título -->
                    <button type="button" class="close" aria-label="Close" data-dismiss="modal"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body"> <!-- Corpo do modal -->

                    <!-- Início do Formulário -->
                    <form action="ValidarForm" id="formCadastro" method="post" name="formCadastro">


                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="E-mail" name="txtCadastroEmail" id="txtCadastroEmail">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Senha" name="password" id="password">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Confirmar Senha" name="conf_password" id="conf_password">
                        </div>
                        <input type="hidden" name="acao" value="cadastrarAcesso">
                        <button type="button" onClick="validarSenha()" class="btn btn-block btn-danger btn-Cadastro">Cadastre-se</button>
                    </form>
                    <p id="politica">Ao inscrever-se, você concorda com nossos <a href="#" class="termos">Termos de uso</a> e nossa <a href="#" class="termos">Política de Privacidade.</a></p>
                </div>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 80%;">
                <!-- Botão fechar do Modal -->
                <p id="ja">Já tem uma conta? <a href="#" id="fazer" data-toggle="modal" data-target="#myModalLogin" data-dismiss="modal" >Fazer login</a></p>
            </div>
        </div>
    </div>
    <!-- ##Fim do Modal -->

    <div id="myModalLogin" class="modal fade" tabindex="-1" role="dialog"><!-- Início do código da janela modal -->
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"><!-- Header do modal -->
                    <h5 class="modal-title">Faça o login na Caderneta Virtual!</h5>
                    <button type="button" class="close" aria-label="Close" data-dismiss="modal"> <span aria-hidden="true">&times;</span> </button>
                    <!-- Título --> 
                </div>
                <div class="modal-body"><!-- Corpo do modal -->
                    <form name="formLogin" action="ValidarLogin">
                        <!-- Início do Formulário -->
                        <div class="form-group">
                            <input name="txtUsuario" type="email" class="form-control"  placeholder="Digite seu email">
                        </div>
                        <div class="form-group">
                            <input name="txtSenha" type="password" class="form-control" placeholder="Digite sua senha">
                        </div>
                        <button class="btn btn-block btn-info btn-FazerLogin">Fazer login</button>
                        <p style="text-align: center; padding: 10px 0px 0px 0px;">ou <a href="#" style="font-weight: bold;">Esqueci a senha</a></p>
                        <p style="text-align: center; padding-top: 0px;">Não tem uma conta? <a href="#" data-toggle="modal" data-target="#myModalCadastro" data-dismiss="modal" style="font-weight: bold;">Cadastre-se</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Fim do Modal --> 
</div>
