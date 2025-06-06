<%-- 
    Document   : registro
    Created on : 15 abr 2025, 19:40:37
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css2?family=Lexend&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
        <header class="color-fondo-formulario">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto d-flex align-items-center">
                        <img class="logo" src="img/general/Logo.png" alt="logo">
                    </div>
                    <div class="d-flex col justify-content-end">
                        <h1 class="text-white">Registro</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="d-flex justify-content-center align-items-center vh-100">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                <form method="post" id="formularioRegistro">
                    <div class="mb-3">
                        <label for="nombre" class="form-label fw-bold">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" class="form-control border-0 border-bottom border-warning text-white campo-fondo">
                        <span class="error" id="error-nombre">Introduzca un nombre válido.</span>
                    </div>

                    <div class="mb-3">
                        <label for="apellidos" class="form-label fw-bold">Apellidos:</label>
                        <input type="text" id="apellidos" name="apellidos" class="form-control border-0 border-bottom border-warning text-white campo-fondo">
                        <span class="error" id="error-apellidos">Introduzca apellidos válidos.</span>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label fw-bold">E-mail:</label>
                        <input type="email" id="email" name="email" class="form-control border-0 border-bottom border-warning text-white campo-fondo">
                        <span class="error" id="error-correo">Introduzca un email válido.</span>
                    </div>

                    <div class="mb-4">
                        <label for="password" class="form-label fw-bold">Contraseña:</label>
                        <input type="password" id="password" name="password" class="form-control border-0 border-bottom border-warning text-white campo-fondo">
                        <span class="error" id="error-password">Introduzca una contraseña válida (entre 8 y 16 caracteres).</span>
                    </div>

                    <input type="hidden" id="tipo" name="tipo" value="usuario">

                    <div class="d-flex justify-content-center align-items-center">
                        <button type="submit" class="btn text-white px-4 shadow boton-fondo">Registrarse</button>
                    </div>
                </form>
                <div class="text-center mt-3">
                <a class="text-warning small" href="${pageContext.request.contextPath}/ControladorLogin">Ir a inicio</a>
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
    <script src="javascript/formularioRegistro.js"></script>
    <script src="resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
