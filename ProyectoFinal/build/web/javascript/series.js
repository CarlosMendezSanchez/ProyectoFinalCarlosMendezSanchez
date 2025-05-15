$(document).ready(function() {
    let series = [];

    // Obtener las series desde el JSON
    $.getJSON("json/series.json", function(data) {
        series = data.series;
        actualizarTabla(series);
    });

    // Filtrar por género
    $('#generoSerie').change(function() {
        const generoSeleccionado = $(this).val();
        const seriesFiltradas = filtrarSeries(series, generoSeleccionado);
        actualizarTabla(seriesFiltradas);
    });

    // Función para filtrar por género
    function filtrarSeries(series, genero) {
        if (genero === "todos") {
            return series;
        }
        return series.filter(serie => serie.genero === genero);
    }

    // Función para actualizar la tabla
    function actualizarTabla(series) {
        const tabla = $("#tablaSeries tbody");
        tabla.empty();
        series.forEach(serie => {
            const fila = `
                <tr>
                    <td>${serie.titulo}</td>
                    <td>${serie.año}</td>
                    <td>${serie.descripcion}</td>
                    <td>${serie.temporadas}</td>
                    <td>${serie.genero}</td>
                </tr>`;
            tabla.append(fila);
        });
    }
});