<%-- 
    Document   : peliculasMeGusta
    Created on : 10 may 2025, 18:35:01
    Author     : carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <h1 class="text-white">Pel�culas que te gustan</h1>
                    </div>
                </div>
            </div>
        </header>
    
        <div class="container py-5">
        <c:if test="${empty favoritas}">
            <div class="card p-4 text-white shadow-lg rounded-4 color-fondo-formulario text-center">
                <h4 class="mb-0">No tienes pel�culas marcadas como favoritas.</h4>
            </div>
        </c:if>

        <c:forEach var="peliculas" items="${favoritas}">
            <div class="card my-4 p-4 text-white shadow-lg rounded-4 color-fondo-formulario">
                <div class="d-flex flex-column flex-md-row justify-content-center align-items-center text-center text-md-start">
                    <div class="me-md-4 mb-3 mb-md-0">
                        <img src="${pageContext.request.contextPath}/img/peliculas/${peliculas.imagen}" 
                            alt="${peliculas.titulo}" 
                            class="img-fluid rounded-3" 
                            style="max-width: 150px; max-height: 225px;">
                    </div>
                    <div class="me-md-4 mb-3 mb-md-0">
                        <span class="fs-2 fw-bold text-warning">${peliculas.titulo}</span>
                    </div>
                    <div>
                        <p class="mb-0">${peliculas.descripcion}</p>
                    </div>
                    <div class="mt-3 text-end espaciado-izquierda">
                        <a class="btn text-white px-4 shadow boton-fondo" href="/ProyectoFinal/usuario/ControladorMostrarPeliculaIndividual?id=${peliculas.id}">Ver detalles</a>
                    </div>
                </div>
            </div>
        </c:forEach>

            <div class="d-flex justify-content-center align-items-center abajo-arriba">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 anchura color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/usuario/ControladorPelicula">Volver al cat�logo de pel�culas</a>
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
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
