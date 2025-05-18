<%-- 
    Document   : login
    Created on : 15 abr 2025, 19:20:40
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css2?family=Lexend&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
        <header class="d-flex flex-row text-center p-2 color-fondo-formulario">
            <div class="justify-content-center align-items-center">
                <img class="logo" src="img/general/Logo.png" alt="logo">
            </div>
            <div class="centro-login arriba">
                <h1 class="text-white">Inicio de Sesión</h1>
            </div>
        </header> 
        <div class="d-flex justify-content-center align-items-center vh-100">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                <form method="post" id="formularioLogin">
                    <div class="mb-3">
                        <label class="form-label fw-bold">E-mail</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="email" name="email" id="email">
                        <span class="error" id="error-email">Correo electrónico no válido.</span>
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label fw-bold">Contraseña</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="password" name="password" id="contrasena">
                        <span class="error" id="error-contrasena">Contraseña incorrecta.</span>
                    </div>
                    
                    <div class="d-flex justify-content-center align-items-center">
                        <input class="btn text-white px-4 shadow boton-fondo" type="submit" value="Iniciar Sesión">
                    </div>
                </form>
                <div class="text-center mt-3">
                <a class="text-warning small" href="${pageContext.request.contextPath}/ControladorRegistro">Registrarse</a>
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
        <script src="javascript/formularioLogin.js"></script>
        <script src="resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
