<%-- 
    Document   : buscarPeliGenero
    Created on : 14 may 2025, 18:02:55
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Películas</h1>
        <label for="generoSelect">Filtrar por género:</label>
        <select id="generoSelect">
          <option value="todos">Todos</option>
          <option value="Ciencia ficción">Ciencia ficción</option>
          <option value="Drama">Drama</option>
          <option value="Thriller">Thriller</option>
          <option value="Crimen">Crimen</option>
        </select>
        
        <table id="tablaPeliculas">
            <thead>
              <tr>
                <th>Título</th>
                <th>Año</th>
                <th>Descripción</th>
                <th>Duración (min)</th>
                <th>Género</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        <a href="${pageContext.request.contextPath}/usuario/ControladorPelicula">Volver al catálogo de películas</a>
        <script src="/ProyectoFinal/javascript/peliculas.js"></script>
    </body>
</html>
