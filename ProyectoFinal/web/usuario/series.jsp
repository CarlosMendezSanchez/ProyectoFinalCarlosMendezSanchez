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
                        <h1 class="text-white">Cineman</h1>
                    </div>
                    <div class="d-flex col text-white justify-content-end">
                        <h1>Hola ${usuario.nombre}</h1> 
                    </div>
                </div>
            </div>
        </header>
        <div class="container py-4 text-white">
            <h2 class="mb-4">Series disponibles</h2>

            <div class="mb-4">
                <a class="btn btn-outline-warning me-2" href="${pageContext.request.contextPath}/usuario/ControladorMostrarSerieMeGusta">Mis favoritas</a>
                <a class="btn btn-outline-warning me-2" href="${pageContext.request.contextPath}/usuario/ControladorGeneroSeries">Por género</a>
                <a class="btn btn-outline-warning" href="${pageContext.request.contextPath}/usuario/ControladorConsultarSeries">Buscar</a>
            </div>

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
                    <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorInicio">Volver al menú</a>
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
