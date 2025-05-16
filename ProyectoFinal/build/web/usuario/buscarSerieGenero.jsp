<%-- 
    Document   : buscarSerieGenero
    Created on : 14 may 2025, 18:15:39
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
        <h1>Listado de Series</h1>
        
        <label for="generoSerie">Filtrar por género:</label>
        <select id="generoSerie">
          <option value="todos">Todos</option>
          <option value="Drama">Drama</option>
          <option value="Ciencia ficción">Ciencia ficción</option>
          <option value="Comedia">Comedia</option>
          <option value="Thriller">Thriller</option>
        </select>
        
        <table id="tablaSeries">
            <thead>
              <tr>
                <th>Título</th>
                <th>Año</th>
                <th>Descripción</th>
                <th>Temporadas</th>
                <th>Género</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
         <a href="${pageContext.request.contextPath}/usuario/ControladorSerie">Volver al catálogo de series</a>
         <script src="/ProyectoFinal/javascript/series.js"></script>
    </body>
</html>
