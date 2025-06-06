<%-- 
    Document   : inicio
    Created on : 15 abr 2025, 19:52:36
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
                        <h1 class="text-white">Cineman</h1>
                    </div>
                    <div class="d-flex col text-white justify-content-end">
                        <h1>Hola ${usuario.nombre}</h1> 
                    </div>
                </div>
            </div>
        </header> 
        <div class="text-white text-center rounded-4 color-fondo-formulario arriba-tabla abajo-tabla ancho margen">
            <h1>Lista de Usuarios</h1>
            <div class="d-flex justify-content-center align-items-center">
                <table class="tabla-compacta">
                <tr>
                    <th>Email</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Acciones</th>
                    
                    <%-- 
                    Iterar sobre la lista de usuarios, el controlador pasa la lista de usuarios al jsp utilizando
                    items="${usuarios} como atributo"
                    --%>
                    <c:forEach var="usuariosLista" items="${usuarios}">
                        <tr class="borde-debajo">
                            <td>${usuariosLista.email}</td>
                            <td>${usuariosLista.nombre}</td>
                            <td>${usuariosLista.apellidos}</td>
                            <td>
                                <a class="btn text-white px-4 shadow boton-fondo" href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin?id=${usuariosLista.id}&accion=editar">Editar</a> 
                                <a class="btn text-white px-4 shadow boton-fondo" href="${pageContext.request.contextPath}/admin/ControladorInicioAdmin?id=${usuariosLista.id}&accion=eliminar">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach >
            </table>
            </div>
        </div>

        <div class="d-flex p-2 justify-content-center align-items-center flex-row">
            <div class="d-flex justify-content-center align-items-center espaciado-derecha">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/admin/ControladorInicioAdminPelis">Acceder a las pelis</a>
                </div>
            </div>

            <div class="d-flex justify-content-center align-items-center espaciado-izquierda">
                <div class="card p-4 text-white text-center shadow-lg rounded-4 color-fondo-formulario">
                    <a class="text-warning" href="${pageContext.request.contextPath}/admin/ControladorInicioAdminSeries">Acceder a las series</a>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center align-items-center">
            <div class="card p-4 text-white text-center shadow-lg rounded-4 anchura color-fondo-formulario">
                <a class="text-warning" href="${pageContext.request.contextPath}/ControladorLogin">Volver al inicio de sesion</a>
            </div>
        </div>

    <br>
    <%-- Condicional en el que si hay un error, se muestra en un div el tipo de error que contenga la variable--%>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

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
            <c:if test="${not empty mensaje}">
    <div class="alert alert-success text-center mt-3">${mensaje}</div>
</c:if>
        <script src="../resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
