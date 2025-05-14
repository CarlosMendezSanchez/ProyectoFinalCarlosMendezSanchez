/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

function filtrar() {
    filtro = document.getElementById("filtro").value;
    $.ajax({
        url: "ControladorFiltrarPelis",
        method: 'POST',
        data: {filtro : filtro}        
    }).done(function(datos) {
        $("#listado").html(datos);
    });
}

