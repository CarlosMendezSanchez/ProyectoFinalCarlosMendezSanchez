const formularioLogin = document.getElementById("formularioLogin");

formularioLogin.addEventListener("submit", (e) => {
    let esValido = true;

    const correoElectronico = document.getElementById("email").value.trim();
    if (!correoElectronico.match(/[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/) || correoElectronico === '') {
        document.getElementById("error-email").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-email").style.display = "none";
    }

    const contrasena = document.getElementById("contrasena").value;
    if (contrasena.length < 8 || contrasena.length > 16 || contrasena === '') {
        document.getElementById("error-contrasena").style.display = "block";
        esValido = false;
    } else {
        document.getElementById("error-contrasena").style.display = "none";
    }

    // Previene el envío del formulario si alguna validación falla
    if (!esValido) {
        e.preventDefault();
    } else {
        formularioLogin.submit();
    } 
});
