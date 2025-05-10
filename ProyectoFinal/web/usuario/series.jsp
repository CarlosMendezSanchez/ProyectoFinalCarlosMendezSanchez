<%-- 
    Document   : series
    Created on : 20 abr 2025, 20:10:46
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
        <h1>Aquí van las series</h1>
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
    </body>
</html>
