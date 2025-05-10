<%-- 
    Document   : crearComentario
    Created on : 4 may 2025, 18:42:02
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
        <h1>Añadir un comentario</h1>
        <form method="post">
            <label for="contenido">Contenido del comentario</label><br>
            <textarea id="contenido" name="contenido" style="resize: none"></textarea><br>
            
            <button type="submit">Añadir comentario</button>
        </form>
    </body>
</html>
