<%-- 
    Document   : filtrarPeli
    Created on : 13 may 2025, 18:25:58
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/usuario/ControladorMostrarPeliculaMeGusta">Ver mis películas favoritas</a>
        <c:forEach var="peliculas" items="${peliculas}">
            <table border="1">
                <tr>
                    <th>Titulo</th>
                    <th>Descripcion</th>
                    <th>Duracion</th>
                    <th>Genero</th>
                    <th>Año</th>
                    <th>Ver peliculas</th>
                </tr>
                <tr>
                    <td>${peliculas.titulo}</td>
                    <td>${peliculas.descripcion}</td>
                    <td>${peliculas.duracion}</td>
                    <td>${peliculas.genero}</td>
                    <td>${peliculas.ano}</td>
                    <td><a href="${pageContext.request.contextPath}/usuario/ControladorMostrarPeliculaIndividual?id=${peliculas.id}">Ver peli</a></td>
                </tr>
            </table>
        </c:forEach>
        <br>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
            
        <a href="${pageContext.request.contextPath}/usuario/ControladorPelicula">Volver al catálogo de películas</a>
    </body>
</html>
