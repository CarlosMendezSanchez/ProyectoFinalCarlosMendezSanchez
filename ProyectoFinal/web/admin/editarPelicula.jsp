<%-- 
    Document   : editarPelicula
    Created on : 16 may 2025, 22:36:35
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
                        <h1 class="text-white">Editar Pel�cula</h1>
                    </div>
                </div>
            </div>
        </header>
        
        <div class="d-flex justify-content-center align-items-center min-vh-100 abajo-arriba">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                <form method="post" id="formularioEditarPelicula">
                    <input type="hidden" name="id" value="${peliculas.id}">

                    <div class="mb-3">
                        <label class="form-label fw-bold">T�tulo</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="titulo" id="titulo" value="${peliculas.titulo}">
                        <span class="error" id="error-titulo">Introduza un titulo v�lido.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Nombre de imagen</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="imagen" id="imagen" value="${peliculas.imagen}">
                        <span class="error" id="error-imagen">Introduzca una imagen v�lida.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Descripci�n</label>
                        <textarea class="form-control border-0 border-bottom border-warning text-white campo-fondo" name="descripcion" id="descripcion" rows="3">${peliculas.descripcion}</textarea>
                        <span class="error" id="error-descripcion">Introduza una descripci�n v�lida.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Duraci�n</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="duracion" id="duracion" value="${peliculas.duracion}">
                        <span class="error" id="error-duracion">Introduzca una duraci�n v�lida.</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">G�nero</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="genero" id="genero" value="${peliculas.genero}">
                        <span class="error" id="error-genero">Introduzca un g�nero v�lido.</span>
                    </div>

                    <div class="mb-4">
                        <label class="form-label fw-bold">A�o</label>
                        <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" name="ano" id="ano" value="${peliculas.ano}">
                        <span class="error" id="error-ano">Introduza un a�o v�lido.</span>
                    </div>

                    <div class="d-flex justify-content-center align-items-center">
                        <input class="btn text-white px-4 shadow boton-fondo" type="submit" value="Guardar cambios">
                    </div>
                </form>
                <div class="text-center mt-3">
                    <a class="text-warning small" href="${pageContext.request.contextPath}/admin/ControladorInicioAdminPelis">Volver al listado de pelis</a>
                </div>
            </div>
        </div>
        
        <footer class="text-white pt-5 color-fondo-formulario">
            <div class="container">
                <div class="row text-center text-md-start">                
                
                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Sobre nosotros</h5>
                    <p class="text-white small"> Descubre qui�nes somos, nuestra misi�n y c�mo trabajamos para brindarte el mejor contenido en streaming.</p>
                </div>                
                
                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Categor�as</h5>
                    <p class="text-white small">Explora nuestras categor�as: acci�n, comedia, drama, terror, documentales y mucho m�s.</p>
                </div>               
                
                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">T�rminos y condiciones</h5>
                    <p class="text-white small">Lee nuestras pol�ticas de uso, derechos de usuario y condiciones del servicio.</p>
                </div>

                <div class="col-md-3 mb-4">
                    <h5 class="fw-bold text-warning">Soporte t�cnico</h5>
                    <p class="text-white small">�Tienes problemas? Cont�ctanos para recibir ayuda con tu cuenta, dispositivos o reproducci�n.</p>
                </div>
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center text-center color-fondo-footer arriba">
                <p class="text-warning fw-bold">Copyright � 2025 Carlos M�ndez S�nchez</p>
            </div>
        </footer>
        <script src="../javascript/formularioEditarPelicula.js"></script>
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
