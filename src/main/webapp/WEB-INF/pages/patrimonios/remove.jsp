<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" 
			href="<c:url value="/resources/css/main.css" />" >
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Editar Patrimonio</title>
</head>
<body>
 
   <h2>Editar Item</h2>
   <form action="<c:url value="/patrimonios/remove" />" method="post">
	<input type="hidden" value="${patrimonio.id}" name="id" >
 <div class="col-md-12 pd-10 container">
   <span>
      <label for="item"><b>Patrimonio</b></label><br>
        <input type="text" value="${patrimonio.item}" name="item" id="item" size="128">
        <br/>
    </span>
    <span>
    <label for="serial"><b>Número de Série</b></label><br>
        <input type="number" value="${patrimonio.serial}" min="0" placeholder="XXXX - XXXX - XXXX" name="serial" id="serial" onkeypress="return isNumericKey(event)" size="128">
        <br/>
    </span>
    <span>
    <label for="local"><b>Localização</b></label><br>
        <input type="text" value="${patrimonio.local}" placeholder="Laboratorio 10" name="local" id="local" size="128">
        <br/>
    </span>
    <br>
    <div class="custom-control custom-checkbox">  
	<span class="form-check">
	    <input type="checkbox" checked="${patrimonio.etiqueta}" name="etiqueta" class="custom-control-input" id="etiqueta">
	    <label class="custom-control-label" for="etiqueta">Tem etiqueta?</label>
	    
	</span>
		<br>
    </div>
  </div>  
    <input type="submit" value="Salvar">
   </form>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>