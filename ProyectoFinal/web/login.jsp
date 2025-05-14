<%-- 
    Document   : login
    Created on : 15 abr 2025, 19:20:40
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicio de Sesión</h1>
        <br>
        <form method="post" id="formularioLogin">
            <label>e-mail</label>
            <input type="email" name="email" id="email">
            <br>
            <span class="error" id="error-email">Correo electrónico no válido.</span>
            <br>
            <label>Contraseña</label>
            <input type="password" name="password" id="contrasena">
            <br>
            <span class="error" id="error-contrasena">Contraseña incorrecta.</span>
            <br>
            <input type="submit" value="Iniciar Sesión">
        </form>
        <a href="${pageContext.request.contextPath}/ControladorRegistro">Registrarse</a>
        <script src="javascript/formularioLogin.js"></script>
    </body>
</html>
