<%-- 
    Document   : consultaSerie
    Created on : 13 may 2025, 19:08:52
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
    <body onload="filtrar()">
        <h1>Series</h1>
        <br>
        <div>
            <label>Buscar series</label>
            <input type="text" name="filtro" id="filtro" onkeyup="filtrar()">
        </div>
        <div id="listado">
            
        </div>
        <br>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/javascript/filtrarSeries.js"></script>
    </body>
</html>
