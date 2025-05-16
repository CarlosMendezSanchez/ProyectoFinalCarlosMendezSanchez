<%-- 
    Document   : crearPelicula
    Created on : 16 may 2025, 23:06:46
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
        <h1>Subir nueva película</h1>

    <form method="post">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        <br>
        
        <label for="imagen">Nombre de imagen:</label>
        <input type="text" id="imagen" name="imagen">
        <br>

        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required></textarea>
        <br>

        <label for="duracion">Duración (minutos):</label>
        <input type="number" id="duracion" name="duracion" required>
        <br>

        <label for="genero">Género:</label>
        <input type="text" id="genero" name="genero" required>
        <br>

        <label for="ano">Año:</label>
        <input type="text" id="ano" name="ano" required>
        <br>

        <input type="submit" value="Crear Película">
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin">Volver al menú</a>
    
    </body>
</html>
