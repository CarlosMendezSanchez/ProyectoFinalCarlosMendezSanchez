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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../resources/bootstrap/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css2?family=Lexend&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
        <header class="color-fondo-formulario">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto d-flex align-items-center">
                        <img class="logo" src="../img/general/Logo.png" alt="logo">
                    </div>
                    <div class="d-flex col justify-content-end">
                        <h1 class="text-white">Series que te gustan</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="container py-5">
        <c:if test="${empty favoritas}">
            <div class="card p-4 text-white shadow-lg rounded-4 color-fondo-formulario text-center">
                <h4 class="mb-0">No tienes series marcadas como favoritas.</h4>
            </div>
        </c:if>

        <c:forEach var="series" items="${favoritas}">
            <div class="card my-4 p-4 text-white shadow-lg rounded-4 color-fondo-formulario">
                <div class="d-flex flex-column flex-md-row justify-content-center align-items-center text-center text-md-start">
                    <div class="me-md-4 mb-3 mb-md-0">
                        <img src="${pageContext.request.contextPath}/img/series/${series.imagen}" 
                            alt="${peliculas.titulo}" 
                            class="img-fluid rounded-3" 
                            style="max-width: 150px; max-height: 225px;">
                    </div>
                    <div class="me-md-4 mb-3 mb-md-0">
                        <span class="fs-2 fw-bold text-warning">${series.titulo}</span>
                    </div>
                    <div>
                        <p class="mb-0">${series.descripcion}</p>
                    </div>
                    <div class="mt-3 text-end espaciado-izquierda">
                        <a class="btn text-white px-4 shadow boton-fondo" href="/ProyectoFinal/usuario/ControladorMostrarSerieIndividual?id=${series.id}">Ver detalles</a>
                    </div>
                </div>
            </div>
        </c:forEach>

            <div class="d-flex justify-content-center align-items-center abajo-arriba">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 anchura color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorSerie">Volver al catálogo de series</a>
                </div>
            </div>
        </div>

    <footer class="text-white pt-5 color-fondo-formulario">
            <div class="container">
                <div class="row text-center text-md-start">                
                
                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Sobre nosotros</h5>
                    <p class="text-white small"> Descubre quiénes somos, nuestra misión y cómo trabajamos para brindarte el mejor contenido en streaming.</p>
                </div>                
                
                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Categorías</h5>
                    <p class="text-white small">Explora nuestras categorías: acción, comedia, drama, terror, documentales y mucho más.</p>
                </div>               
                
                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Términos y condiciones</h5>
                    <p class="text-white small">Lee nuestras políticas de uso, derechos de usuario y condiciones del servicio.</p>
                </div>

                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Soporte técnico</h5>
                    <p class="text-white small">¿Tienes problemas? Contáctanos para recibir ayuda con tu cuenta, dispositivos o reproducción.</p>
                </div>
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center text-center color-fondo-footer arriba">
                <p class="text-warning fw-bold">Copyright © 2025 Carlos Méndez Sánchez</p>
            </div>
        </footer>
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
