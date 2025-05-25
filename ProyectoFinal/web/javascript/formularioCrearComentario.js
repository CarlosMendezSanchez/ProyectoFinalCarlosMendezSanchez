const formulario = document.getElementById("formularioCrearComentario");

formulario.addEventListener("submit", function (e) {
    const contenido = document.getElementById("contenido").value.trim();
    let esValido = true;

    if (contenido === "") {
        document.getElementById("error-contenido").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-contenido").style.display = "none";
    }

    if (!esValido) {
        e.preventDefault();
    }
});