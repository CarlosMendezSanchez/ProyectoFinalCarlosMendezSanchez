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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../resources/bootstrap/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css2?family=Lexend&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
        <div class="container py-4 text-white">
            <h2 class="mb-4">Series disponibles</h2>

            <div class="row">
                <c:forEach var="series" items="${series}">
                    <div class="col-6 col-md-4 col-lg-3 mb-4">
                        <div class="card h-100 shadow-sm color-fondo-formulario text-white border-0 rounded-4">
                            <img class="card-img-top img-fluid rounded-top img-hover-zoom" src="${pageContext.request.contextPath}/img/series/${series.imagen}" alt="${series.titulo}" style="height: 250px; object-fit: contain; background-color: #000;">
                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title text-warning">${series.titulo}</h5>
                                <p class="card-text small">${series.genero} • ${series.ano} • ${series.temporadas} temp</p>
                                <p class="card-text small text-white-50">${series.descripcion}</p>
                                <div class="mt-auto">
                                    <a class="btn btn-warning btn-sm w-100 rounded-pill boton-ver-peli" href="${pageContext.request.contextPath}/usuario/ControladorMostrarSerieIndividual?id=${series.id}">Ver serie
                                    </a>
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
                    <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorSerie">Volver al catálogo de series</a>
                </div>
            </div>
        </div>
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
