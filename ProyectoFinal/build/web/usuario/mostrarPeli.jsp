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
        <link rel="stylesheet" type="text/css" href="../resources/bootstrap/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css2?family=Lexend&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
        <header class="d-flex flex-row text-center p-2 color-fondo-formulario">
            <div class="justify-content-center align-items-center">
                <img class="logo" src="../img/general/Logo.png" alt="logo">
            </div>
            <div class="centro-comienzo arriba">
                <h1 class="text-white">Cineman</h1>
            </div>
        </header> 

        <div class="container py-5">
            <div class="card shadow-lg rounded-4 p-4 color-fondo-formulario text-white">
                <div class="text-center">
                    <img class="img-fluid rounded-4 mb-4" 
                        src="${pageContext.request.contextPath}/img/peliculas/${peliculas.imagenHorizontal}" 
                        alt="${peliculas.titulo}" 
                        style="max-height: 400px; object-fit: cover;">
                </div>
                <div class="d-flex justify-content-between align-items-center flex-wrap">
                    <h2 class="text-warning fw-bold">${peliculas.titulo}</h2>
                    <div class="d-flex gap-2">
                        <form method="post" class="d-inline">
                            <input type="hidden" name="idPel" value="${peliculas.id}"/>
                            <input type="hidden" name="accion" value="meGusta" />
                            <button class="btn btn-outline-warning rounded-pill px-3" type="submit">Me gusta</button>
                        </form>
                        <form method="post" class="d-inline">
                            <input type="hidden" name="idPel" value="${peliculas.id}"/>
                            <input type="hidden" name="accion" value="noMeGusta" />
                            <button class="btn btn-outline-light rounded-pill px-3" type="submit">No me gusta</button>
                        </form>
                    </div>
                </div>
            <hr class="border-warning">
            <p class="mt-3">${peliculas.descripcion}</p>
            <p><strong>Duración:</strong> ${peliculas.duracion} min</p>
            <p><strong>Género:</strong> ${peliculas.genero}</p>
            <p><strong>Año:</strong> ${peliculas.ano}</p>
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
                    <a class="btn btn-warning rounded-pill px-4" href="${pageContext.request.contextPath}/usuario/ControladorCrearComentario?idP=${peliculas.id}">
                        Añadir comentario
                    </a>
                </div>
            </div>

            <div class="text-center mt-4">
                <a class="text-warning small text-decoration-none" href="${pageContext.request.contextPath}/usuario/ControladorPelicula">
                    Volver al catálogo de películas
                </a>
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
