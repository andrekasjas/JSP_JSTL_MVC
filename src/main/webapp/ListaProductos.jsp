<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
		crossorigin="anonymous">
		<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	<title>Lista productos</title>
</head>

<body>
	<div class="container mt-4 table-responsive">
		<table class="table table-primary table-striped">
			<thead>
				<button type="button" class="btn btn-success btn-lg btn-block" onclick="window.location.href='InsertaProducto.jsp'">Agregar</button>
				<tr>
					<th scope="col">Codigo</th>
					<th scope="col">Seccion</th>
					<th scope="col">Nombre</th>
					<th scope="col">Precio</th>
					<th scope="col">Importado</th>
					<th scope="col">Pais</th>
					<th scope="col">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="producto" items="${misProductos}">
					<c:url var="urlTemp" value="ControladorProductos">
						<c:param name="instruccion" value="cargar"></c:param>
						<c:param name="codigoProducto" value="${producto.codigo}"></c:param>
					</c:url>
					<c:url var="urlTempEliminar" value="ControladorProductos">
						<c:param name="instruccion" value="eliminar"></c:param>
						<c:param name="codigoProducto" value="${producto.codigo}"></c:param>
					</c:url>
					<tr>
						<th scope="row">${producto.codigo}</td>
						<td>${producto.seccion}</td>
						<td>${producto.nombre}</td>
						<td>${producto.precio}</td>
						<td>${producto.importado}</td>
						<td>${producto.pais}</td>
						<td>
							<a type="button" href="${urlTemp}" class="btn btn-warning"><i class="icon-pencil"></i></a>
							<a type="button" href="${urlTempEliminar }" class="btn btn-danger"><i class="icon-trash"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
		integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
		crossorigin="anonymous"></script>
</body>

</html>