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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicio de Sesión</h1>
        <br>
        <form method="post">
            <label>e-mail</label>
            <input type="email" name="email" required="">
            <br>
            <label>Contraseña</label>
            <input type="password" name="password" required="">
            <br>
            <input type="submit" value="Iniciar Sesión">
        </form>
        <a href="${pageContext.request.contextPath}/ControladorRegistro">Registrarse</a>
        <br>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
    </body>
    </body>
</html>
