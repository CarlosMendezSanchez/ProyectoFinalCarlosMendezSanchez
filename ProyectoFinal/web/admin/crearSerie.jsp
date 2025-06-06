<%-- 
    Document   : crearSerie
    Created on : 17 may 2025, 10:59:13
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
            <div class="container-fluid">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto d-flex align-items-center">
                        <img class="logo" src="../img/general/Logo.png" alt="logo">
                    </div>
                    <div class="d-flex col justify-content-end">
                        <h1 class="text-white">Subir nueva Serie</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="d-flex justify-content-center align-items-center min-vh-100 abajo-arriba">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                <form method="post" id="formularioCrearSerie">
                    <div class="mb-3">
                        <label class="form-label fw-bold">Título</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="titulo" id="titulo">
                        <span class="error" id="error-titulo">Introduzca un título válido.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Nombre de imagen vertical</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="imagen" id="imagen">
                        <span class="error" id="error-imagen">Introduzca una imagen válida.</span>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label fw-bold">Nombre de imagen horizontal</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="imagenHorizontal" id="imagenHorizontal">
                        <span class="error" id="error-imagenHorizontal">Introduzca una imagen horizontal válida.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Descripción</label>
                        <textarea class="form-control border-0 border-bottom border-warning text-white campo-fondo" name="descripcion" id="descripcion" rows="3"></textarea>
                        <span class="error" id="error-descripcion">Introduzca una descripción válida.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Temporadas</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="number" name="temporadas" id="temporadas">
                        <span class="error" id="error-temporadas">Introduzca un número de temporadas válidas.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Género</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="genero" id="genero">
                        <span class="error" id="error-genero">Introduzca un género válido.</span>
                    </div>

                    <div class="mb-4">
                        <label class="form-label fw-bold">Año</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="ano" id="ano">
                        <span class="error" id="error-ano">Introduzca un año válido.</span>
                    </div>

                    <div class="d-flex justify-content-center align-items-center">
                        <input class="btn text-white px-4 shadow boton-fondo" type="submit" value="Crear Serie">
                    </div>
                </form>

                <div class="text-center mt-3">
                    <a class="text-warning small" href="${pageContext.request.contextPath}/admin/ControladorInicioAdminSeries">Volver al listado de series</a>
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
        <script src="../javascript/formularioCrearSerie.js"></script>
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
