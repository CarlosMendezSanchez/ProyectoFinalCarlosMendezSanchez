<%-- 
    Document   : buscarSerieGenero
    Created on : 14 may 2025, 18:15:39
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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body class="justify-content-center align-items-center color-fondo">
      <header class="d-flex flex-row text-center p-2 color-fondo-formulario">
            <div class="justify-content-center align-items-center">
                <img class="logo" src="../img/general/Logo.png" alt="logo">
            </div>
            <div class="centro-registro arriba">
                <h1 class="text-white">Listado de Series</h1>
            </div>
        </header> 
        
        <div class="d-flex justify-content-center align-items-center mt-4">
            <div class="card p-4 text-white text-center shadow-lg rounded-4 color-fondo-formulario">
                <label for="generoSerie" class="form-label fw-bold mb-2">Filtrar por género:</label>
                <select id="generoSerie" class="form-select w-auto mx-auto">
                    <option value="todos">Todos</option>
                    <option value="Drama">Drama</option>
                    <option value="Ciencia ficción">Ciencia ficción</option>
                    <option value="Comedia">Comedia</option>
                    <option value="Thriller">Thriller</option>
                </select>
            </div>
        </div>
        
        <div class="m-5 text-white text-center rounded-4 color-fondo-formulario arriba-tabla abajo-tabla">
            <h2>Series por género</h2>
            <div class="d-flex justify-content-center align-items-center">
                <table id="tablaSeries" class="w-75 text-white">
                    <thead>
                        <tr>
                            <th>Título</th>
                            <th>Año</th>
                            <th>Descripción</th>
                            <th>Temporadas</th>
                            <th>Género</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>

        <div class="d-flex justify-content-center align-items-center abajo-arriba">
            <div class="card p-4 text-white text-center shadow-lg rounded-4 anchura color-fondo-formulario">
                <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorSerie">Volver al catálogo de series</a>
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
        <script src="/ProyectoFinal/javascript/series.js"></script>
    </body>
</html>
