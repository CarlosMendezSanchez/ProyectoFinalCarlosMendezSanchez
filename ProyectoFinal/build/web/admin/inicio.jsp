<%-- 
    Document   : inicio
    Created on : 15 abr 2025, 19:52:36
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
        <body>
        <h1>Hola administrador ${usuario.nombre}</h1>
        <h1>Lista de Usuarios</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Acciones</th>
            
            <%-- 
            Iterar sobre la lista de usuarios, el controlador pasa la lista de usuarios al jsp utilizando
            items="${usuarios} como atributo"
            --%>
            <c:forEach var="usuariosLista" items="${usuarios}">
                <tr>
                    <td>${usuariosLista.id}</td>
                    <td>${usuariosLista.email}</td>
                    <td>${usuariosLista.nombre}</td>
                    <td>${usuariosLista.apellidos}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin?id=${usuariosLista.id}&accion=editar">Editar</a> 
                        <a href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin?id=${usuariosLista.id}&accion=eliminar">Eliminar</a>
                    </td>
                </tr>
            </c:forEach >
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/admin/ControladorCrearPeli">Subir peli</a>
    
    <h2>Lista de películas</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Imagen</th>
            <th>Titulo</th>
            <th>Descripcion</th>
            <th>Duracion</th>
            <th>Genero</th>
            <th>Año</th>
            <th>Acciones</th>
            
            <%-- 
            Iterar sobre la lista de usuarios, el controlador pasa la lista de usuarios al jsp utilizando
            items="${usuarios} como atributo"
            --%>
            <c:forEach var="peliculas" items="${peliculas}">
                <tr>
                    <td>${peliculas.id}</td>
                    <td>${peliculas.imagen}</td>
                    <td>${peliculas.titulo}</td>
                    <td>${peliculas.descripcion}</td>
                    <td>${peliculas.duracion}</td>
                    <td>${peliculas.genero}</td>
                    <td>${peliculas.ano}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/ControladorEditarPelicula?idPelis=${peliculas.id}&accion=editarPeli">Editar</a> 
                        <a href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin?idPelis=${peliculas.id}&accion=eliminarPeli">Eliminar</a>
                    </td>
                </tr>
            </c:forEach >
    </table>
    <a href="${pageContext.request.contextPath}/ControladorLogin">Volver al inicio de sesion</a>
    <br>
    <%-- Condicional en el que si hay un error, se muestra en un div el tipo de error que contenga la variable--%>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
</html>
