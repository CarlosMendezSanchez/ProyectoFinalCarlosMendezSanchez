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
import modelo.entidades.Comentarios;
import modelo.entidades.Series;
import modelo.servicios.ServicioComentarios;
import modelo.servicios.ServicioSeries;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorMostrarSerieIndividual", urlPatterns = {"/ControladorMostrarSerieIndividual"})
public class ControladorMostrarSerieIndividual extends HttpServlet {
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
        // Instanciar el servicio de Peliculas.
        ServicioSeries ss = new ServicioSeries(emf);
        Long id = Long.parseLong(request.getParameter("id"));
        Series series = ss.findSeries(id);
        request.setAttribute("series", series);
        
        ServicioComentarios c = new ServicioComentarios(emf);
        List<Comentarios> listaComentarios = c.findComentariosPorSerie(id);
        request.setAttribute("listaComentarios", listaComentarios);
        emf.close();
        // Redirigir a /usuario/series.jsp
        getServletContext().getRequestDispatcher("/usuario/mostrarSerie.jsp").forward(request, response);
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
