<%-- 
    Document   : editarPelicula
    Created on : 16 may 2025, 22:36:35
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
            <div class="centro-login arriba">
                <h1 class="text-white">Editar película</h1>
            </div>
        </header> 
        
        <div class="d-flex justify-content-center align-items-center min-vh-100 abajo-arriba">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                <form method="post">
                    <input type="hidden" name="id" value="${peliculas.id}">

                    <div class="mb-3">
                        <label class="form-label fw-bold">Título</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="titulo" value="${peliculas.titulo}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Nombre de imagen</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="imagen" value="${peliculas.imagen}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Descripción</label>
                        <textarea class="form-control border-0 border-bottom border-warning text-white campo-fondo" name="descripcion" rows="3" required>${peliculas.descripcion}</textarea>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Duración</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="duracion" value="${peliculas.duracion}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Género</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="genero" value="${peliculas.genero}" required>
                    </div>

                    <div class="mb-4">
                        <label class="form-label fw-bold">Año</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="ano" value="${peliculas.ano}" required>
                    </div>

                    <div class="d-flex justify-content-center align-items-center">
                        <input class="btn text-white px-4 shadow boton-fondo" type="submit" value="Guardar cambios">
                    </div>
                </form>
                <div class="text-center mt-3">
                    <a class="text-warning small" href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin">Volver a inicio</a>
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
