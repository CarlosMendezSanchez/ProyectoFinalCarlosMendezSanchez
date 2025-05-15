$(document).ready(function() {
    let peliculas = [];

    // Obtener las películas desde el JSON
    $.getJSON("json/peliculas.json", function(data) {
        peliculas = data.peliculas;
        actualizarTabla(peliculas);
    });

    // Filtrar por género
    $('#generoSelect').change(function() {
        const generoSeleccionado = $(this).val();
        const peliculasFiltradas = filtrarPeliculas(peliculas, generoSeleccionado);
        actualizarTabla(peliculasFiltradas);
    });

    // Función para filtrar por género
    function filtrarPeliculas(peliculas, genero) {
        if (genero === "todos") {
            return peliculas;
        }
        return peliculas.filter(pelicula => pelicula.genero === genero);
    }

    // Función para actualizar la tabla
    function actualizarTabla(peliculas) {
        const tabla = $("#tablaPeliculas tbody");
        tabla.empty();
        peliculas.forEach(pelicula => {
            const fila = `
                <tr>
                    <td>${pelicula.titulo}</td>
                    <td>${pelicula.año}</td>
                    <td>${pelicula.descripcion}</td>
                    <td>${pelicula.duracion}</td>
                    <td>${pelicula.genero}</td>
                </tr>`;
            tabla.append(fila);
        });
    }
});
