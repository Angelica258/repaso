<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
    <meta charset="UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
<title>Preprevio2-insertar</title>
</head>
<body class="container">
<div id="contenedorNav">
	<nav class="navbar navbar-default" id="myNavbar">
	    <div class="container-fluid">
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	                <span class="sr-only"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand active" id="barra-titulo" href="#" data-seleccion="index"><i
                                class="icono fas fa-home"></i>Principal</a>
	        </div>
	        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	            <ul class="nav navbar-nav">
	                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> Insertar</a>
	                	 <ul class="dropdown-menu">
                             
                             <li><a href="#"  data-seleccion="registrarU" >Registrar Universidad</a></li>
                             <li><a href="#"  data-seleccion="registrarP" >Registrar Participante</a></li>
                          </ul>
                     </li>
	                

	                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Listar</a>
	                	<ul class="dropdown-menu">
                             
                             <li><a href="#"  data-seleccion="listarU">Listar Universidad</a></li>
                             <li><a href="#"  data-seleccion="listarP">Listar Participante</a></li>
                          </ul>
	                </li>  
	            </ul>
	        </div>
	    </div>
	</nav>
</div>
<div id="Infor">
    <div class="row" id="formulario">
    	
		<h5>Seleccionar cualquier opcion del menu de acuerdo a las acciones que quiera  realizar.</br></h5>
		<hr>
		<div id="recargaInfor">
			<h3> Aqui se muestra...</br></h3>
		</div>
    </div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/javascript.js"></script>
</html>