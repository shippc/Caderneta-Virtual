<!-- Bibliotecas JavaScript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate.min.js"></script>
<script type="text/javascript" src="js/jquery.mask.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/easing.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/scrollreveal.min.js"></script>
<script type="text/javascript" src="js/contactform.js"></script>

<!-- JavaScript Princiapl --> 
<script type="text/javascript" src="js/main.js"></script>

<script>
        $(document).ready(function () {
        $('#cep').mask('00000-000');
        $('#telefone').mask('(00) 0000-0000');
        $('#celular').mask('(00) 00000-0000');
        $('#rg').mask('0.000.000-00', {reverse: true});
        $("#cnpj").mask("00.000.000/0000-00");
        $("#cpf").mask('000.000.000-00');
        $("#cartao_sus").mask('000.0000.0000.0000');
        $("#registro_civil").mask('000000.00.00.0000.0.000000.000.0000000.00');
        $("#altura").mask('0.00');

    });
</script>
