const formulario = document.getElementById("formularioEditarPelicula");

formulario.addEventListener("submit", function (e) {
    let esValido = true;

    const titulo = document.getElementById("titulo").value.trim();
    if (!titulo.match(/^[A-Za-záéíóúÁÉÍÓÚ\s]+$/) || titulo === "") {
        document.getElementById("error-titulo").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-titulo").style.display = "none";
    }

    const imagen = document.getElementById("imagen").value.trim();
    if (imagen === "") {
        document.getElementById("error-imagen").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-imagen").style.display = "none";
    }

    const descripcion = document.getElementById("descripcion").value.trim();
    if (descripcion === "") {
        document.getElementById("error-descripcion").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-descripcion").style.display = "none";
    }

    const duracion = document.getElementById("duracion").value.trim();
    if (!/^\d+$/.test(duracion)) {
        document.getElementById("error-duracion").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-duracion").style.display = "none";
    }

    const genero = document.getElementById("genero").value.trim();
    if (genero === "") {
        document.getElementById("error-genero").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-genero").style.display = "none";
    }

    const ano = document.getElementById("ano").value.trim();
    if (!/^\d{4}$/.test(ano) || ano === "") {
        document.getElementById("error-ano").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-ano").style.display = "none";
    }

    if (!esValido) {
        e.preventDefault();
    }
});