<%-- 
    Document   : filtrarPeli
    Created on : 13 may 2025, 18:25:58
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../resources/bootstrap/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css2?family=Lexend&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
        <div class="container py-4 text-white">
            <h2 class="mb-4">Películas disponibles</h2>

            <div class="row">
                <c:forEach var="peliculas" items="${peliculas}">
                    <div class="col-6 col-md-4 col-lg-3 mb-4">
                        <div class="card h-100 shadow-sm color-fondo-formulario text-white border-0 rounded-4">
                            <img class="card-img-top img-fluid rounded-top arriba im-ampliacion-hover-zoom" src="${pageContext.request.contextPath}/img/peliculas/${peliculas.imagen}" alt="${peliculas.titulo}" style="height: 250px; object-fit: contain;">
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title text-warning">${peliculas.titulo}</h5>
                                <p class="card-text small">${peliculas.genero} • ${peliculas.ano} • ${peliculas.duracion} min</p>
                                <p class="card-text small text-white-50">${peliculas.descripcion}</p>
                                <div class="mt-auto">
                                    <a class="btn btn-warning btn-sm w-100 rounded-pill boton-ver-peli" href="${pageContext.request.contextPath}/usuario/ControladorMostrarPeliculaIndividual?id=${peliculas.id}">Ver peli</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <c:if test="${not empty error}">
                <div class="alert alert-danger mt-3">${error}</div>
            </c:if>

            <div class="d-flex justify-content-center align-items-center abajo-arriba">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 anchura color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorPelicula">Volver al catálogo de películas</a>
                </div>
            </div>
        </div>

        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
