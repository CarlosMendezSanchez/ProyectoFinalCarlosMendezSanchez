<%-- 
    Document   : registro
    Created on : 15 abr 2025, 19:40:37
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
    <h2>Registro de Usuario</h2>
    
    <form method="post" id="formularioRegistro">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre">
        <br>
        <span class="error" id="error-nombre">Introduzca un nombre válido.</span>
        <br>
        <label for="apellidos">Apellidos:</label>
        <input type="text" id="apellidos" name="apellidos">
        <br>
        <span class="error" id="error-apellidos">Introduzca apellidos válidos.</span>
        <br>
        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email">
        <br>
        <span class="error" id="error-correo">Introduzca un email válido.</span>
        <br>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password">
        <br>
        <span class="error" id="error-password">Introduzca una contraseña válido.</span>
        <br>
        <input type="hidden" id="tipo" name="tipo" value="usuario">
        <br>
        
        <button type="submit">Registrarse</button>
        
    </form>
    <a href="${pageContext.request.contextPath}/ControladorLogin">Ir a inicio</a>
    <script src="javascript/formularioRegistro.js"></script>
    </body>
</html>
