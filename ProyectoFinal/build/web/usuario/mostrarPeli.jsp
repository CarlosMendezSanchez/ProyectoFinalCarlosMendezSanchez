<%-- 
    Document   : mostrarPeli
    Created on : 27 abr 2025, 19:18:49
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
        <h1>${peliculas.titulo}</h1>
        <h3>${peliculas.descripcion}</h3>
        <h3>${peliculas.duracion}</h3>
        <h3>${peliculas.genero}</h3>
        <h3>${peliculas.ano}</h3>
        <br>
        <h2>Comentarios de usuarios</h2>
        <c:forEach var="comentario" items="${listaComentarios}">
            <ul>
                <li>${comentario.usuario}</li>
                <li>${comentario.contenido}</li>
            </ul>
        </c:forEach>
        <br>
        <a href="${pageContext.request.contextPath}/ControladorCrearComentario?idP=${peliculas.id}">Añadir comentario</a> 
        <br>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
</html>
