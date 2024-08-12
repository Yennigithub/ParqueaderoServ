 <%-- 
    Document   : Resultado
    Created on : 10/08/2024, 10:27:40 p. m.
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles del Registro</title>
    </head>
    <body>
        <h1>Detalles del Registrado</h1>
        
        <!<!-- Validacion de errores -->
        
        <% String error = (String)
                request.getAttribute("Error");
        if (error != null) {
        %>
        <p style="color: red;"><%= error%>
        </p>
        <a href="index.html"> volver al formulario
        </a>
        <%
            } else {
                    String nombre = (String) request.getAttribute("nombre");
                    String correo = (String) request.getAttribute("correo");
                    String placa = (String) request.getAttribute("placa");
                    String marca = (String) request.getAttribute("marca");
                    String modelo = (String) request.getAttribute("modelo");
       %>
       
       <p> <strong>Nombre:</strong>
           <%= nombre%></p>
       <p> <strong>Correo:</strong>
           <%= correo%></p>
       <p> <strong>Placa:</strong>
           <%= placa%></p>
       <p> <strong>Marca:</strong>
           <%= marca%></p>
       <p> <strong>Modelo:</strong>
           <%= modelo%></p>
       
       <a
           href="index.html">Registrar otro vehiculo</a>
       <%
            }
       %>
       
    </body>
</html>
