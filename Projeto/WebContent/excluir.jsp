<!DOCTYPE HTML>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="pt-br">
<head>

<!-- Caracteres Unicode -->
<meta charset="UTF-8">

<!-- Autoria -->
<meta name="author" content="">

<!-- Mecanismos de busca -->
<meta name="robots" content="index, follow">
<meta name="keywords"
	content="HTML, HTML 5, CSS, CSS3, script, javaScript, js, jQuery, Bootstrap, twitter, responsivo, Design, mobile, first, grid, framework, SENAI, programaÃ§Ã£o, programador, desenvolvimento, desenvolvedor, web, java, popper.js, menu, Carousel, Cards">
<meta name="description"
	content="PÃ¡gina feita com o framework Bootstrap 4.0.">

<!-- Compatiblilidade com IE/Edge -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Responsivo/Mobile First -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" href="imagens/bootstrap-stack.png"
	type="image/png">

<!-- Bootstrap CSS -->
<!--<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="screen">-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">


<!-- CSS Externo -->
<link rel="stylesheet" href="" type="text/css">

<!-- CSS Interno -->
<style></style>
<!-- TÃ­tulo da pÃ¡gina -->
<title>Excluir - Detalhe Personalizados</title>
</head>
<body>
<center>
<form name="formulario" >
	
		<div class="form-group col-md-6" >
			<label id="labelNome">Nome:</label><br> <input type="text"
				class="form-control"  placeholder="Nome Completo"
				id="nome" name="nome" required="required">
				<div id="alert-nome"></div>

		</div>
		<div class="form-group col-md-6" >
		 
			<label id="labelEmail" >Email:</label><br> <input
				type="text" class="form-control" 
				placeholder="Insira seu e-mail" name="email" onblur="checarEmail();" id="email" required="required">
				<div id="alert-email" name="alert-email"></div>
				
		</div>
		
					<td>
			<div id="msg"></div>
				
				<button style="background: #48D1CC" type="button"
					class="btn text-white" >Deseja realmente excluir</button>
					
					

			</td>
		


	</form>
</center>
<!-- JavaScript -->

	<!-- Ordem obrigatÃ³ria: jQuery, Popper.js, Bootstrap.js, Script do desenvolvedor -->

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>

	<!-- Popper.js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>

	<!-- bootstrap.js -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<!-- Script do desenvolvedor -->
	<script type="text/javascript">
		/* Digite o seu script aqui */
		</script>
</body>
</html>