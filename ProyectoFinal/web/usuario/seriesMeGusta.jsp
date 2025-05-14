<%-- 
    Document   : seriesMeGusta
    Created on : 10 may 2025, 22:11:57
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
        <h1>Series que te gustan</h1>
    
    <c:if test="${empty favoritas}">
        <p>No tienes series marcadas como favoritas.</p>
    </c:if>

    <c:forEach var="series" items="${favoritas}">
        <div>
            <a href="ControladorMostrarSerieIndividual?id=${series.id}">
                <h3>${series.titulo}</h3>
            </a>
            <p>${series.descripcion}</p>
        </div>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/ControladorSerie">Volver al catálogo de series</a>
    </body>
</html>
