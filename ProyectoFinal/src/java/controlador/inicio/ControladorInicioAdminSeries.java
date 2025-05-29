/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador.inicio;

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
@WebServlet(name = "ControladorInicioAdminSeries", urlPatterns = {"/admin/ControladorInicioAdminSeries"})
public class ControladorInicioAdminSeries extends HttpServlet {

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
            * Si el parametro de accion es igual a eliminar, obtiene el id del usuario
            * Comprueba que el usuario tenga o no experiencias para eliminar al usuario, si tiene, no lo elimina
            * Agraga como atributo la lista de usuarios actualizada y redirige al jsp /admin/inicio.jsp
            */
            if ("eliminarSerie".equals(accion)) {  
                Long id = Long.parseLong(request.getParameter("idSerie"));
                ss.eliminarSerieConRelaciones(id);

                series = ss.findSeriesEntities();
                request.setAttribute("series", series); 
                emf.close();
                getServletContext().getRequestDispatcher("/admin/inicioSerie.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "No se puede eliminar la serie");
        }
        
        getServletContext().getRequestDispatcher("/admin/inicioSerie.jsp").forward(request, response);
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
