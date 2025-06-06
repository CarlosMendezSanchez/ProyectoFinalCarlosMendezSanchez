const formularioRegistro = document.getElementById("formularioRegistro");


formularioRegistro.addEventListener("submit", (e) => {
    let esValido = true;

    const nombre = document.getElementById("nombre").value.trim();
    if (!nombre.match(/^[A-Za-záéíóúÁÉÍÓÚ\s]+$/) || nombre === '') {
        document.getElementById("error-nombre").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-nombre").style.display = "none";
    }

    const apellidos = document.getElementById("apellidos").value.trim();
    if (apellidos === '') {
        document.getElementById("error-apellidos").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-apellidos").style.display = "none";
    }
    
    const correoElectronico = document.getElementById("email").value.trim();
    if (!correoElectronico.match(/[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/) || correoElectronico === '') {
        document.getElementById("error-correo").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-correo").style.display = "none";
    }

    const contrasena = document.getElementById("password").value;
    if (contrasena.length < 8 || contrasena.length > 16 || contrasena === '') {
        document.getElementById("error-password").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-password").style.display = "none";
    }

    // Previene el envío del formulario si alguna validación falla
    if (!esValido) {
        e.preventDefault();
    } else {
        formularioRegistro.submit();
    } 
});