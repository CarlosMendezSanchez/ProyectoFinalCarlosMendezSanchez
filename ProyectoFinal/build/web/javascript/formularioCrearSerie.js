const formulario = document.getElementById("formularioCrearSerie");

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

    const imagenHorizontal = document.getElementById("imagenHorizontal").value.trim();
    if (imagenHorizontal === "") {
        document.getElementById("error-imagenHorizontal").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-imagenHorizontal").style.display = "none";
    }

    const descripcion = document.getElementById("descripcion").value.trim();
    if (descripcion === "") {
        document.getElementById("error-descripcion").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-descripcion").style.display = "none";
    }

    const temporadas = document.getElementById("temporadas").value.trim();
    if (!/^\d+$/.test(temporadas) || parseInt(temporadas) <= 0) {
        document.getElementById("error-temporadas").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-temporadas").style.display = "none";
    }

    const genero = document.getElementById("genero").value.trim();
    if (genero === "") {
        document.getElementById("error-genero").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-genero").style.display = "none";
    }

    const ano = document.getElementById("ano").value.trim();
    if (!/^\d{4}$/.test(ano)) {
        document.getElementById("error-ano").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-ano").style.display = "none";
    }

    if (!esValido) {
        e.preventDefault();
    }
});