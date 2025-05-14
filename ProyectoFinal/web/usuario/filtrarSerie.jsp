<%-- 
    Document   : filtrarSerie
    Created on : 13 may 2025, 19:09:14
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
        <a href="${pageContext.request.contextPath}/ControladorMostrarSerieMeGusta">Ver mis series favoritas</a>
        <c:forEach var="series" items="${series}">
            <table border="1">
                <tr>
                    <th>Titulo</th>
                    <th>Descripcion</th>
                    <th>Temporadas</th>
                    <th>Genero</th>
                    <th>Año</th>
                </tr>
                <tr>
                    <td>${series.titulo}</td>
                    <td>${series.descripcion}</td>
                    <td>${series.temporadas}</td>
                    <td>${series.genero}</td>
                    <td>${series.ano}</td>
                    <td><a href="${pageContext.request.contextPath}/ControladorMostrarSerieIndividual?id=${series.id}">Ver serie</a></td>
                </tr>
            </table>
        </c:forEach>
        <br>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
            
        <a href="${pageContext.request.contextPath}/ControladorSerie">Volver al menú</a>
    </body>
</html>
