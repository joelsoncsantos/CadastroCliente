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
<style type="text/css">
	.login-form {
		width: 385px;
		margin: 30px auto;
	}
    .login-form form {        
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .login-btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .input-group-addon .fa {
        font-size: 18px;
    }
    .login-btn {
        font-size: 15px;
        font-weight: bold;
    }
	.social-btn .btn {
		border: none;
        margin: 10px 3px 0;
        opacity: 1;
	}
    .social-btn .btn:hover {
        opacity: 0.9;
    }
	.social-btn .btn-primary {
        background: #507cc0;
    }
	.social-btn .btn-info {
		background: #64ccf1;
	}
	.social-btn .btn-danger {
		background: #df4930;
	}
    .or-seperator {
        margin-top: 20px;
        text-align: center;
        border-top: 1px solid #ccc;
    }
    .or-seperator i {
        padding: 0 10px;
        background: #f7f7f7;
        position: relative;
        top: -11px;
        z-index: 1;
    }   
</style>
<!-- TÃ­tulo da pÃ¡gina -->
<title>Login</title>
</head>
<body>
<%
Pessoa pessoa = new Pessoa();


pessoa = pessoa.getPessoa(request.getParameter("email"));



%>

<div class="login-form">
    <form action="/examples/actions/confirmation.php" method="post">
        <h2 class="text-center">Sign in</h2>   
        <div class="form-group">
        	<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" name="email" placeholder="Login/Email" required="required" id="email" >				
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" name="senha" placeholder="Insira sua senha" required="required" id="senha">				
            </div>
        </div>        
        <div class="form-group">
            <button type="button" class="btn btn-primary login-btn btn-block" onclick="validarLogin();" >Login</button>
        </div>
        <div class="clearfix">
           
            <a href="formulario.jsp" class="pull-right">Cadastre-se</a>
            <div id="msg"></div>
        </div>
		
    </form>
    <p class="text-center text-muted small">Don't have an account? <a href="#">Sign up here!</a></p>
</div>



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
			
			dados += "email=" + document.getElementById("email").value;
			dados += "&senha=" + document.getElementById("senha").value;
			
			return dados;
		}
		
		function validarLogin(){
		//paramos aqui 01/07	
		
			var email = document.getElementById("email").value;
			var senha = document.getElementById("senha").value;
			//alert("Aqui");
			var xhttp = new XMLHttpRequest();
			
			xhttp.onreadystatechange = function() {
				
				if (this.readyState == 4 && this.status == 200) {
					// Typical action to be performed when the document is ready:
						
					var msg = xhttp.responseText;
					//alert("Por favor, informe um E-MAIL válido 828");
				if(msg == "true"){
					//alert("Por favor, informe um E-MAIL válido 888");
					//document.getElementById("msg").innerHTML = 'Email já cadastrado';
					//document.getElementById("msg").style.color = "red";
					window.location.replace('localizar.jsp?email='+email);
					
					return false;
				} else {
					//alert("Por favor, informe um E-MAIL válido 9999999");
						//window.location.replace('index.jsp');
						document.getElementById("msg").innerHTML = 'Email ou senha incorreta!';
						document.getElementById("msg").style.color = "red";
						
						return true;
					}
				
								
				}
			}
			
			xhttp.open("GET", "serveletLoginSenha?"+dadosForm()+"&pesquisarSenha" , true);
			xhttp.send();
			
			}
			
		
		
	</script>
</body>
</html>