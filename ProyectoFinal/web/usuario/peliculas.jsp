<%-- 
    Document   : peliculas
    Created on : 20 abr 2025, 20:09:59
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola ${usuario.nombre}</h1>
        <h1>Aquí van las peliculas</h1>
        <a href="${pageContext.request.contextPath}/usuario/ControladorMostrarPeliculaMeGusta">Ver mis películas favoritas</a>
        <a href="${pageContext.request.contextPath}/usuario/ControladorGeneroPelis">Buscar películas por género</a>
        <a href="${pageContext.request.contextPath}/usuario/ControladorConsultarPelis">Buscar películas</a>
        <c:forEach var="peliculas" items="${peliculas}">
            <table border="1">
                <tr>
                    <th>Imagen</th>
                    <th>Titulo</th>
                    <th>Descripcion</th>
                    <th>Duracion</th>
                    <th>Genero</th>
                    <th>Año</th>
                    <th>Ver peliculas</th>
                </tr>
                <tr>
                    <td><img src="${pageContext.request.contextPath}/img/peliculas/${peliculas.imagen}" alt="Portada" width="200"></td>
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
            
        <a href="${pageContext.request.contextPath}/usuario/ControladorInicio">Volver al menú</a>
    </body>
</html>
