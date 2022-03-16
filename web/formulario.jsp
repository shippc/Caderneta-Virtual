<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menuindex.jsp" flush="true"/>
        <jsp:useBean id="acesso" scope="request" class="br.com.senaces.bean.AcessoBean"/>
        <div class="container" id="introducao">
            <form class="formulario" action="ValidarForm" method="post">
                <h2 class="text-center" style="padding-bottom: 3%;">Formulário de Cadastro</h2>
                <input type="hidden" name="idacesso" value="${acesso.idacesso}">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome Completo</label>
                        <div class="wrap-input">
                            <input type="text" name="txtNome" class="inputdados" id="nome" placeholder="Digite o seu nome completo" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-user" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Data de Nascimento</label>
                        <div class="wrap-input">
                            <input type="date" name="txtData" class="inputdados" id="data_nasc" placeholder="dd/mm/aaaa" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Etnia</label>
                        <div class="wrap-input">
                            <select name="optionEtnia" id="etnia" class="inputdadim">
                                <option selected>Escolha</option>
                                <option>Branca</option>
                                <option>Negra</option>
                                <option>Amarela</option>
                                <option>Parda</option>
                                <option>Indígena</option>
                            </select>
                        </div>

                    </div>            
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="input">Nome do Pai</label>
                        <div class="wrap-input">
                            <input type="text" name="txtPai" class="inputdados" id="nome_pai" placeholder="Digite o nome completo do seu pai">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-male" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="input">Nome da Mãe</label>
                        <div class="wrap-input">
                            <input type="text" name="txtMae" class="inputdados" id="nome_mae" placeholder="Digite o nome completo da sua mãe" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-female" aria-hidden="true"></i></span>
                        </div>
                    </div>           
                </div>
                <div class="form-row">     
                    <div class="form-group col-md-3">
                        <label for="input">CPF</label>
                        <div class="wrap-input">
                            <input type="text" name="cpf" class="inputdados" id="cpf" placeholder="000.000.000-00" maxlenght="14">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">CEP</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCEP" class="inputdados" id="cep" placeholder="00000.000" maxlength="9">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        </div>        
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">RG</label>
                        <div class="wrap-input">
                            <input type="text" name="rg" class="inputdados" id="rg" placeholder="00.000.000-00" maxlenght="13">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card" aria-hidden="true"></i></span>  
                        </div>        
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Telefone</label>
                        <div class="wrap-input">
                            <input type="tel" name="txtTelefone" class="inputdados" id="telefone" placeholder="(00) 0000-0000" maxlenght="10">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-phone" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Nº do Cartão SUS</label>
                        <div class="wrap-input">
                            <input type="text" name="txtSUS" class="inputdados" id="cartao_sus" placeholder="000.0000.0000.0000" maxlength="18">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-id-card-o"></i></span>  
                        </div>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="input">Registro Civil de Nascimento</label>
                        <div class="wrap-input">
                            <input type="text" name="txtRegistro" class="inputdados" id="registro_civil" placeholder="000000.00.00.0000.0.000000.000.0000000.00" maxlength="41">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-file-text"></i></span>  
                        </div>
                    </div>   
                    <div class="form-group col-md-3">
                        <label for="input">Celular</label>
                        <div class="wrap-input">
                            <input type="tel" name="txtCelular" class="inputdados" id="celular" placeholder="(00) 00000-0000" maxlenght="11">
                            <span class="focus-inputdados"></span><span class="symbol-inputdados-phone"><i class="fa fa-mobile" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="input">Endereço</label>
                        <div class="wrap-input">
                            <input type="text" name="txtEndereco" class="inputdados" id="endereco" placeholder="Logradouro" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>  
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="input">Estado</label>
                        <div class="wrap-input">
                            <select name="optionEstado" id="estado" class="inputdadim" required>
                                <option selected value="">Escolha</option>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapá</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceará</option>
                                <option>Distrito Federal</option>
                                <option>Espírito Santo</option>
                                <option>Goiás</option>
                                <option>Maranhão</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerais</option>
                                <option>Pará</option>
                                <option>Paraíba</option>
                                <option>Paraná</option>
                                <option>Pernambuco</option>
                                <option>Piauí</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rondônia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>São Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>  
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Cidade</label>
                        <div class="wrap-input">
                            <input type="text" name="txtCidade" class="inputdados" id="cidade" placeholder="Nome da sua cidade" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="input">Bairro</label>
                        <div class="wrap-input">
                            <input type="text" name="txtBairro" class="inputdados" id="bairro" placeholder="Nome do seu bairro" required>
                            <span class="focus-inputdados"></span><span class="symbol-inputdados"><i class="fa fa-map-marker"></i></span>
                        </div>
                    </div>
                </div>
                <div class="justify-content-center text-center">
                    <ul class="justify-content-center text-center bot">
                        <input type="hidden" name="acao" value="cadastrarDados">
                        <button type="submit" class="btn btn-primary btn-send">Enviar</button>
                        <button type="reset" class="btn btn-danger btn-reset">Apagar</button>
                    </ul>
                </div>
            </form>
        </div>

        <jsp:include page="footer.jsp" flush="true"/>
        <jsp:include page="script.jsp" flush="true"/>
    </body>
</html>
