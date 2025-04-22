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
        <c:forEach var="peliculas" items="${peliculas}">
            <table border="1">
                <tr>
                    <th>Titulo</th>
                    <th>Descripcion</th>
                    <th>Duracion</th>
                    <th>Genero</th>
                    <th>Año</th>
                </tr>
                <tr>
                    <td>${peliculas.titulo}</td>
                    <td>${peliculas.descripcion}</td>
                    <td>${peliculas.duracion}</td>
                    <td>${peliculas.genero}</td>
                    <td>${peliculas.ano}</td>
                </tr>
            </table>
        </c:forEach>
        <br>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
</html>
