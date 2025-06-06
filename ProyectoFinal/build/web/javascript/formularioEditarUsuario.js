const formularioEditarUsuario = document.getElementById("formularioEditarUsuario");

    formularioEditarUsuario.addEventListener("submit", function (e) {
        let esValido = true;

        const nombre = document.getElementById("nombre").value.trim();
        if (!nombre.match(/^[A-Za-záéíóúÁÉÍÓÚ\s]+$/) || nombre === '') {
            document.getElementById("error-nombre").style.display = "block";
            esValido = false;
        } else {
            document.getElementById("error-nombre").style.display = "none";
        }

        const apellidos = document.getElementById("apellido").value.trim();
        if (apellidos === '') {
            document.getElementById("error-apellidos").style.display = "block";
            esValido = false;
        } else {
            document.getElementById("error-apellidos").style.display = "none";
        }

        const correo = document.getElementById("email").value.trim();
        if (!correo.match(/[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/) || correo === '') {
            document.getElementById("error-correo").style.display = "block";
            esValido = false;
        } else {
            document.getElementById("error-correo").style.display = "none";
        }

        const password = document.getElementById("password").value.trim();
        if (password.length < 8 || password.length > 16 || password === '') {
            document.getElementById("error-password").style.display = "block";
            esValido = false;
        } else {
            document.getElementById("error-password").style.display = "none";
        }

        if (!esValido) {
            e.preventDefault();
        }
    });