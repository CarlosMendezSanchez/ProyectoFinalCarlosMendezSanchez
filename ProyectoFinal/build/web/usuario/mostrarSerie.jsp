<%-- 
    Document   : mostrarSerie
    Created on : 27 abr 2025, 19:43:34
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
        <h1>${series.titulo}</h1>
        <form method="post">
            <input type="hidden" name="idSer" value="${series.id}"/>
            <input type="hidden" name="accion" value="meGusta" />
            <button type="submit">Me gusta</button>
        </form>
        <form method="post">
            <input type="hidden" name="idSer" value="${series.id}"/>
            <input type="hidden" name="accion" value="noMeGusta" />
            <button type="submit">No me gusta</button>
        </form>
        <h3>${series.descripcion}</h3>
        <h3>${series.temporadas}</h3>
        <h3>${series.genero}</h3>
        <h3>${series.ano}</h3>
        <br>
        <h2>Comentarios de usuarios</h2>
        <c:forEach var="comentario" items="${listaComentarios}">
            <ul>
                <li>${comentario.usuario}</li>
                <li>${comentario.contenido}</li>
            </ul>
        </c:forEach>
        <br>
        <a href="${pageContext.request.contextPath}/ControladorCrearComentarioSerie?idS=${series.id}">Añadir comentario</a>
        <br>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        <a href="${pageContext.request.contextPath}/ControladorSerie">Volver al catálogo de series</a>
    </body>
</html>
