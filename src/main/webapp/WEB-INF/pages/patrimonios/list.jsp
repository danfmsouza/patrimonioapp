<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />" >
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Lista de Patrimonios</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="../"><h2>Listagem de Patrimonio</h2></a>
    </div>
</nav>
<hr>
  <div class="container" >	
	<h3><a href="form"><button type="button" class="btn btn-success">Novo Patrimônio</button></a></h3>
	
	<table class="table table-striped" >
	   <thead class="table-dark">
		<tr>
			<th>Item</th>
			<th>Localização</th>
			<th>Numero de Serie</th>
			<th>Etiqueta</th>
			<th>Ação</th>
		</tr>
	<thead>
	<tbody>
		<c:forEach var="patrimonio" items="${listaPatrimonios}" >
			<tr>
				<td>${patrimonio.item}</td>
				<td>${patrimonio.local}</td>
				<td>${patrimonio.serial}</td>
				<td>
					<c:if test="${patrimonio.etiqueta=='true'}"><c:set var="tagged" value="yes"/></c:if>
					<c:if test="${patrimonio.etiqueta!='true'}"><c:set var="tagged" value="no"/></c:if>
				<img src="${pageContext.request.contextPath}/resources/img/${tagged}tag.png" width="14" height="16"/></td>
				
	<td>
	<a href="<c:url value="/patrimonios/edit/${patrimonio.id}" />" >
	<button type="button" class="btn btn-primary">Editar</button>
	</a>
	<a href="<c:url value="/patrimonios/remove/${patrimonio.id}" />" >
	<button type="button" class="btn btn-danger">Excluir</button>
	</a>
	
	</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>