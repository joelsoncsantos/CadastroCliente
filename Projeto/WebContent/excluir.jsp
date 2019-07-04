<!DOCTYPE HTML>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import=" org.senai.projetoPagina.modelo.Pessoa" %>


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
<%
	Pessoa p = (Pessoa) session.getAttribute("pessoa-atual");

%>
<center>
<input type="hidden" value="<%out.print(p.getCod());%>" id="cod"/>
<table class="table table-striped">
		<thead class= "thead-dark">
			<tr>
				<th width="40%">Nome </th>
				<th width="40%">Email</th>
			</tr>	
				</thead>
				
				<tbody>
				<%
				out.print("<tr>");
				out.print("<td>" + p.getNome()+"</td>");
				out.print("<td id='email'>" + p.getEmail()+"</td>");	 
				out.print("<tr>");
	%>		
				</tbody>
				</table>
				<button style="background: red" type="button"
					class="btn text-white" onclick="apagar();">Desejo realmente excluir!</button>
					<button style="background: 	#006400" type="button"
					class="btn text-white" onclick="cancelar();">Cancelar</button>
					
					<div id="msg"></div>

		
		


	
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
		function dadosForm() {
			var dados = "";
			
			dados += "cod=" + document.getElementById("cod").value;
			
			return dados;
		}
		
		function apagar(){
			if(confirm("Realmente deseja apagar seu registro?")){
				
				
					
			var xhttp = new XMLHttpRequest();
			
			xhttp.onreadystatechange = function() {
				//alert("aqui");
				if (this.readyState == 4 && this.status == 200) {
					// Typical action to be performed when the document is ready:
					var msg = xhttp.responseText;
					
						
					if (msg == 'true') {
						document.getElementById("msg").className = "alert alert-info";
						document.getElementById("msg").innerHTML = "Informação apagada";
						//document.getElementById("formulario").reset();
					} else {
						document.getElementById("msg").className = "alert alert-danger";
						document.getElementById("msg").innerHTML = "Erro ao apagar";
					}
				}
			};
			xhttp.open("GET", "serveletApagar?" + dadosForm()+"&apagar", true);
			xhttp.send();
				
		}
		}
		
		function checarEmail() {

			if (document.forms[0].email.value.indexOf('@') == -1
					|| document.forms[0].email.value.indexOf('.') == -1) {
				//alert("Por favor, informe um E-MAIL válido ");
				document.getElementById("alert-email").innerHTML = "Por favor forneça um email válido";
				document.getElementById("alert-email").style.color = "red";

				return false;

			} else if(!document.getElementById("email").value){

				var email = document.getElementById("email").value;

				var xhttp = new XMLHttpRequest();

				xhttp.onreadystatechange = function() {

					if (this.readyState == 4 && this.status == 200) {
						// Typical action to be performed when the document is ready:

						var msg = xhttp.responseText;
						//alert("Por favor, informe um E-MAIL válido 828");
						if (msg == "true") {
							//alert("Por favor, informe um E-MAIL válido 888");
							document.getElementById("alert-email").innerHTML = 'Email já cadastrado';
							document.getElementById("alert-email").style.color = "red";
							return false;
						} else {
							//alert("Por favor, informe um E-MAIL válido 9999999");
							document.getElementById("alert-email").innerHTML = '';
							return true;
						}

					}
				};
				xhttp.open("GET", "serveletEmail?" + dadosForm()
						+ "&pesquisarEmail", true);
				xhttp.send();

			}
		}
		function cancelar() {
			 
			window.location.replace('index.jsp');

		}
		
		
		</script>
		
		
		
</body>
</html>