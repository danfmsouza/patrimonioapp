<%@ page contentType="text/html; charset=ISO-8859-1" language="java"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""
	isELIgnored="false"%>

<!-- %@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>  -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Cadastro de novo patrimônio</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
			<a class="navbar-brand" href="/"><h2>Cadastro de Novo
					Patrimônio</h2></a>
		</div>
	</nav>
	<hr>
	<br>
	<form action="<c:url value="/patrimonios/add" />" method="post">
		<div class="col-md-12 pd-10 container">
			<span> <label for="item"><b>Patrimônio</b></label><br> <input
				type="text" name="item" id="item" size="128" required autofocus> <br />
			</span> <span> <label for="serial"><b>Número de Série</b></label><br>
				<input type="number" min="0" placeholder="XXXX - XXXX - XXXX"
				name="serial" id="serial" onkeypress="return isNumericKey(event)"
				size="128" required> <br />
			</span> <span> <label for="local"><b>Localização</b></label><br>
				<input type="text" placeholder="Laboratorio 10" name="local"
				id="local" size="128" required> <br />
			</span> <br>
			<div class="custom-control custom-checkbox">
				<span class="form-check"> <input type="checkbox"
					name="etiqueta" class="custom-control-input" id="etiqueta">
					<label class="custom-control-label" for="etiqueta">Tem etiqueta?</label>
				</span> <br>
			</div>
		</div>
		<div class="container-fluid">
			<tr>
				<button type="submit" class="btn btn-success">Inserir</button>
				<a href="list""><button type="button" class="btn btn-secondary">Cancelar</button></a>
			</tr>
		</div>
	</form>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>