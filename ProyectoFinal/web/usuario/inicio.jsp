<%-- 
    Document   : inicio
    Created on : 15 abr 2025, 19:27:36
    Author     : carlos
--%>

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
            <nav class="navbar navbar-expand-md navbar-dark container-fluid">
                <div class="d-flex align-items-center">
                    <img class="logo" src="../img/general/Logo.png" alt="logo">
                </div>

                <div class="d-flex align-items-center">
                    <h1 class="text-white">Cineman</h1>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarOpciones"
                        aria-controls="navbarOpciones" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarOpciones">
                    <ul class="navbar-nav text-center text-md-end">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="${pageContext.request.contextPath}/usuario/ControladorPelicula">Ver Películas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="${pageContext.request.contextPath}/usuario/ControladorSerie">Ver Series</a>
                        </li>
                        <li class="nav-item mt-2">
                            <a class="btn btn-sm px-4 shadow boton-fondo text-white text-decoration-none" 
                            href="${pageContext.request.contextPath}/ControladorLogin">
                                Volver al inicio de sesión
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <div class="container py-5">
            <div class="row g-4">
                <div class="col-6 col-md-4">
                    <div class="imagen-destacada overflow-hidden rounded-4 shadow">
                        <img src="../img/peliculas/interestelar-horizontal.jpg" class="img-fluid imagen-zoom w-100" alt="interestelar">
                    </div>
                </div>
                <div class="col-6 col-md-4">
                    <div class="imagen-destacada overflow-hidden rounded-4 shadow">
                        <img src="../img/series/crown-horizontal.jpg" class="img-fluid imagen-zoom w-100" alt="crown">
                    </div>
                </div>
                <div class="col-6 col-md-4">
                    <div class="imagen-destacada overflow-hidden rounded-4 shadow">
                        <img src="../img/peliculas/origen-horizontal.jpg" class="img-fluid imagen-zoom w-100" alt="origen">
                    </div>
                </div>
                <div class="col-6 col-md-4">
                    <div class="imagen-destacada overflow-hidden rounded-4 shadow">
                        <img src="../img/series/strangerthings-horizontal.jpg" class="img-fluid imagen-zoom w-100" alt="strangerthings">
                    </div>
                </div>
                <div class="col-6 col-md-4">
                    <div class="imagen-destacada overflow-hidden rounded-4 shadow">
                        <img src="../img/peliculas/johnwick-horizontal.jpg" class="img-fluid imagen-zoom w-100" alt="johnwick">
                    </div>
                </div>
                <div class="col-6 col-md-4">
                    <div class="imagen-destacada overflow-hidden rounded-4 shadow">
                        <img src="../img/series/blackmirror-horizontal.jpg" class="img-fluid imagen-zoom w-100" alt="blackmirror">
                    </div>
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
