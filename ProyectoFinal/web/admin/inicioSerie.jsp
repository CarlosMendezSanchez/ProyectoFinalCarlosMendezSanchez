<%-- 
    Document   : inicioSerie
    Created on : 25 may 2025, 16:46:20
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
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
                        <h1 class="text-white">Cineman</h1>
                    </div>
                    <div class="d-flex col text-white justify-content-end">
                        <h1>Hola ${usuario.nombre}</h1> 
                    </div>
                </div>
            </div>
        </header> 
        
        <div class="text-white text-center rounded-4 color-fondo-formulario arriba-tabla abajo-tabla ancho margen">
            <h2>Lista de series</h2>
                <div class="d-flex justify-content-center align-items-center">
                    <table class="tabla-compacta">
                    <tr>
                        <th>Imagen</th>
                        <th>Titulo</th>
                        <th>Descripcion</th>
                        <th>Temporadas</th>
                        <th>Genero</th>
                        <th>Año</th>
                        <th>Acciones</th>
                        
                        <%-- 
                        Iterar sobre la lista de usuarios, el controlador pasa la lista de usuarios al jsp utilizando
                        items="${usuarios} como atributo"
                        --%>
                        <c:forEach var="series" items="${series}">
                            <tr class="borde-debajo">
                                <td>${series.imagen}</td>
                                <td>${series.titulo}</td>
                                <td>${series.descripcion}</td>
                                <td>${series.temporadas}</td>
                                <td>${series.genero}</td>
                                <td>${series.ano}</td>
                                <td>
                                    <a class="btn text-white px-4 shadow boton-fondo" href="${pageContext.request.contextPath}/admin/ControladorEditarSerie?idSerie=${series.id}&accion=editarSerie">Editar</a> 
                                    <a class="btn text-white px-4 shadow boton-fondo" href="${pageContext.request.contextPath}/admin/ControladorInicioAdminSeries?idSerie=${series.id}&accion=eliminarSerie">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach >
                </table>
            </div>
        </div>
                                
        <div class="d-flex p-2 justify-content-center align-items-center flex-row abajo-espacio">
            <div class="d-flex justify-content-center align-items-center">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/admin/ControladorCrearSerie">Subir serie</a>
                </div>

                <div class="card p-4 text-white text-center shadow-lg rounded-4 color-fondo-formulario espaciado-izquierda">
                    <a class="text-warning" href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin">Volver al menú de la administración</a>
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
