<%-- 
    Document   : editarPelicula
    Created on : 16 may 2025, 22:36:35
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar película</h1>
        <form method="post">
        <input type="hidden" name="id" value="${peliculas.id}" />
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" value="${peliculas.titulo}" required><br>
        <label for="imagen">Nombre de imagen:</label>
        <input type="text" id="imagen" name="imagen" value="${peliculas.imagen}"><br>
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required>${peliculas.descripcion}</textarea><br>
        <label for="duracion">Duración:</label>
        <input type="text" id="duracion" name="duracion" value="${peliculas.duracion}" required><br>
        <label for="genero">Género:</label>
        <input type="text" id="genero" name="genero" value="${peliculas.genero}" required><br>
        <label for="ano">Año:</label>
        <input type="text" id="ano" name="ano" value="${peliculas.ano}" required><br>
        
        <input type="submit" value="Guardar cambios">
        
        <a href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin">Volver a inicio</a>
    </body>
</html>
