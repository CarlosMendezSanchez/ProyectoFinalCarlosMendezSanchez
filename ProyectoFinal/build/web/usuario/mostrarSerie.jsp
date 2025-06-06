<%-- 
    Document   : mostrarSerie
    Created on : 27 abr 2025, 19:43:34
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
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
                        <h1 class="text-white">Cineman</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="container py-5">
            <div class="card shadow-lg rounded-4 p-4 color-fondo-formulario text-white">
                <div class="text-center">
                    <img class="img-fluid rounded-4 mb-4"
                        src="${pageContext.request.contextPath}/img/series/${series.imagenHorizontal}"
                        alt="${series.titulo}"
                        style="max-height: 400px; object-fit: cover;">
                </div>
                <div class="d-flex justify-content-between align-items-center flex-wrap">
                    <h2 class="text-warning fw-bold">${series.titulo}</h2>
                    <div class="d-flex gap-2">
                        <form method="post" class="d-inline">
                            <input type="hidden" name="idSer" value="${series.id}" />
                            <input type="hidden" name="accion" value="meGusta" />
                            <button class="btn btn-outline-warning rounded-pill px-3" type="submit">Me gusta</button>
                        </form>
                        <form method="post" class="d-inline">
                            <input type="hidden" name="idSer" value="${series.id}" />
                            <input type="hidden" name="accion" value="noMeGusta" />
                            <button class="btn btn-outline-light rounded-pill px-3" type="submit">No me gusta</button>
                        </form>
                    </div>
                </div>
                <hr class="border-warning">
                <p class="mt-3">${series.descripcion}</p>
                <p><strong>Temporadas:</strong> ${series.temporadas}</p>
                <p><strong>Género:</strong> ${series.genero}</p>
                <p><strong>Año:</strong> ${series.ano}</p>
            </div>

            <div class="card mt-4 p-4 color-fondo-formulario text-white shadow rounded-4">
                <h4 class="text-warning">Comentarios de usuarios</h4>
                <c:if test="${not empty listaComentarios}">
                    <ul class="list-unstyled mt-3">
                        <c:forEach var="comentario" items="${listaComentarios}">
                            <li class="mb-3 border-bottom pb-2">
                                <strong>${comentario.usuario}</strong><br>
                                ${comentario.contenido}
                            </li>
                        </c:forEach>
                    </ul>
                </c:if>
                <div class="text-center mt-3">
                    <a class="btn btn-warning rounded-pill px-4" href="${pageContext.request.contextPath}/usuario/ControladorCrearComentarioSerie?idS=${series.id}">
                        Añadir comentario
                    </a>
                </div>
            </div>

            <div class="d-flex justify-content-center align-items-center abajo-arriba">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 anchura color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorSerie">
                        Volver al catálogo de series
                    </a>
                </div>
            </div>

            <c:if test="${not empty error}">
                <div class="alert alert-danger mt-3">${error}</div>
            </c:if>
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
