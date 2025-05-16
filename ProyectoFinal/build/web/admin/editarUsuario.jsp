<%-- 
    Document   : editarUsuario
    Created on : 15 abr 2025, 19:55:47
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar usuario</h1>
        <form method="post">
        <input type="hidden" name="id" value="${usuariosLista.id}">
        <label>Email:</label>
        <input type="email" name="email" value="${usuariosLista.email}" required><br>
        <label>Nombre:</label>
        <input type="text" name="nombre" value="${usuariosLista.nombre}" required><br>
        <label>Apellido:</label>
        <input type="text" name="apellido" value="${usuariosLista.apellidos}" required><br>
        <label>Contraseña:</label>
        <input type="password" name="password" value="${usuariosLista.password}" required><br>
        
        <input type="submit" value="Guardar cambios">
        
        <a href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin">Volver a inicio</a>
        </form>
    </body>
</html>
