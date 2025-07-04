<%-- 
    Document   : editarUsuario
    Created on : 15 abr 2025, 19:55:47
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
                        <h1 class="text-white">Editar Usuario</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="d-flex justify-content-center align-items-center vh-100">
            <div class="card p-4 text-white shadow-lg rounded-4 anchura color-fondo-formulario">
                    <form method="post" id="formularioEditarUsuario">
                        <div class="mb-3">
                            <label for="email" class="form-label fw-bold">Email</label>
                            <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="email" id="email" name="email" value="${usuariosLista.email}">
                            <span class="error" id="error-correo">Introduzca un correo v�lido.</span>
                        </div>

                        <div class="mb-3">
                            <label for="nombre" class="form-label fw-bold">Nombre</label>
                            <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" id="nombre" name="nombre" value="${usuariosLista.nombre}">
                            <span class="error" id="error-nombre">Introduzca un nombre v�lido.</span>
                        </div>

                        <div class="mb-3">
                            <label for="apellido" class="form-label fw-bold">Apellido</label>
                            <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="text" id="apellido" name="apellido" value="${usuariosLista.apellidos}">
                            <span class="error" id="error-apellidos">Introduzca apellidos v�lidos.</span>
                        </div>

                        <div class="mb-4">
                            <label for="password" class="form-label fw-bold">Contrase�a</label>
                            <input class="form-control border-0 border-bottom border-warning text-white campo-fondo" type="password" id="password" name="password" value="${usuariosLista.password}">
                            <span class="error" id="error-password">Introduzca una contrase�a v�lida (entre 8 y 16 caracteres).</span>
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
        <script src="../javascript/formularioEditarUsuario.js"></script>
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
