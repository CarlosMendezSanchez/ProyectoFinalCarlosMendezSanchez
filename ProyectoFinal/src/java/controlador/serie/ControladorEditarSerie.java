/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador.serie;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.entidades.Series;
import modelo.servicios.ServicioSeries;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorEditarSerie", urlPatterns = {"/admin/ControladorEditarSerie"})
public class ControladorEditarSerie extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoFinalPU");
        ServicioSeries ss = new ServicioSeries(emf);
        List<Series> series = ss.findSeriesEntities();
        
        request.setAttribute("series", series);
        String accion = request.getParameter("accion");
        
        String error = "";
        
        try {  
            /*
            * Si el parametro de accion es igual a editar, obtiene el id del usuario y lo busca
            * Agrega como atributo el usuario que se va a editar y redirige al jsp /admin/editarUsuario.jsp
            */
            if ("editarSerie".equals(accion)){
                Long id = Long.parseLong(request.getParameter("idSerie"));
                Series serieEditar = ss.findSeries(id);
                request.setAttribute("series", serieEditar);
                emf.close();
                getServletContext().getRequestDispatcher("/admin/editarSerie.jsp").forward(request, response);
                return;
            }
        } catch (Exception e) {
            request.setAttribute("error", "No se puede editar series");
        }
        
        getServletContext().getRequestDispatcher("/admin/inicio.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoFinalPU");
        ServicioSeries ss = new ServicioSeries(emf);
        
        Long id = Long.parseLong(request.getParameter("idSerie"));
        String titulo = request.getParameter("titulo");
        String descripcion = request.getParameter("descripcion");
        String genero = request.getParameter("genero");
        String ano = request.getParameter("ano");
        String imagen = request.getParameter("imagen");
        int temporadas = Integer.parseInt(request.getParameter("temporadas"));
        
        Series serie = ss.findSeries(id);
        serie.setTitulo(titulo);
        serie.setDescripcion(descripcion);
        serie.setGenero(genero);
        serie.setAno(ano);
        serie.setImagen(imagen);
        serie.setTemporadas(temporadas);
        
        try {
            ss.edit(serie);
        } catch (Exception e) {
            request.setAttribute("error", "Error al guardar los cambios.");
            return;
        }
        
        emf.close();
        getServletContext().getRequestDispatcher("/admin/editarSerie.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
