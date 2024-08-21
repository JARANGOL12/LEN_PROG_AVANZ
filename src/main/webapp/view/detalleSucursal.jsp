<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.Sucursal" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sistema de Restaurantes</title>
<link rel="icon" type="image/png" href="restaurante.png">
 
<style>
.contenedor__principal {
    text-align: center;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

.imagen-cabecera {
    width: 50%;
    border-radius: 10px;
    margin: 0 auto 30px;
    display: block;
    
}

.contenedor__detalles {
    text-align: center;
    background-color: #1111;
    padding: 20px;
    border-radius: 15px;
    font-family: sans-serif;
}
p{
font-family: sans-serif;
  font-size: 16px;  /* Cambiado de font-size-adjust a font-size */
  text-align: left; /* Alineación del texto */
  margin-bottom: 10px;


}
h2 {
	font-family: sans-serif;
}


</style>
</head>

<body>
<div class="contenedor__principal">
    <%
    Sucursal sucursal = (Sucursal) request.getAttribute("sucursal");
    %>
    <h2>Detalle de sucursal <%= sucursal.getNombre() %></h2>
    <img class="imagen-cabecera" src="<%= sucursal.getImagenUrl() %>">
    <div class="contenedor__detalles">
        <p><b>Direccion:</b> <%= sucursal.getDireccion() %></p>
        <p><b>Whatsappp:</b> <%= sucursal.getTelefono() %></p>
        <p><b>Correo:</b> <%= sucursal.getCorreo() %></p>
        <p><b>Horario:</b> <%= sucursal.getDiasAtencion() %><br><%= sucursal.getHorarioAtencion() %></p>
    </div>
</div>

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
crossorigin="anonymous"></script>
</body>
</html>