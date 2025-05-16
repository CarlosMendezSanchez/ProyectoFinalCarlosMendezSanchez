<%-- 
    Document   : peliculasMeGusta
    Created on : 10 may 2025, 18:35:01
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
        <h1>Películas que te gustan</h1>
    
    <c:if test="${empty favoritas}">
        <p>No tienes películas marcadas como favoritas.</p>
    </c:if>

    <c:forEach var="peliculas" items="${favoritas}">
        <div>
            <a href="usuario/ControladorMostrarPeliculaIndividual?id=${peliculas.id}">
                <h3>${peliculas.titulo}</h3>
            </a>
            <p>${peliculas.descripcion}</p>
        </div>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/usuario/ControladorPelicula">Volver al catálogo de películas</a>
    </body>
</html>
