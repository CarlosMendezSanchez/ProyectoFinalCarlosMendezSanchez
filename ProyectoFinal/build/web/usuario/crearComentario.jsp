<%-- 
    Document   : crearComentario
    Created on : 4 may 2025, 18:42:02
    Author     : carlos
--%>

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
            <div class="centro-registro arriba">
                <h1 class="text-white">Añadir un comentario</h1>
            </div>
        </header> 

        <div class="d-flex justify-content-center align-items-center abajo-arriba">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                <form method="post">
                    <div class="mb-4">
                        <label class="form-label fw-bold">Contenido del comentario</label>
                        <textarea class="form-control border-0 border-bottom border-warning text-white campo-fondo" name="contenido" rows="4" required style="resize: none;"></textarea>
                    </div>

                    <div class="d-flex justify-content-center align-items-center">
                        <button class="btn text-white px-4 shadow boton-fondo" type="submit">Añadir comentario</button>
                    </div>
                </form>

                <div class="text-center mt-3">
                    <a class="text-warning small" href="${pageContext.request.contextPath}/usuario/ControladorInicio">Volver al menú</a>
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
