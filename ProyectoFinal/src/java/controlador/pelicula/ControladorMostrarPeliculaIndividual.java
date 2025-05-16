/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador.pelicula;

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
import javax.servlet.http.HttpSession;
import modelo.entidades.Comentarios;
import modelo.entidades.Peliculas;
import modelo.entidades.Usuario;
import modelo.servicios.ServicioComentarios;
import modelo.servicios.ServicioMeGustaPeliculas;
import modelo.servicios.ServicioPeliculas;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorMostrarPeliculaIndividual", urlPatterns = {"/usuario/ControladorMostrarPeliculaIndividual"})
public class ControladorMostrarPeliculaIndividual extends HttpServlet {
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
        ServicioPeliculas sp = new ServicioPeliculas(emf);
        Long id = Long.parseLong(request.getParameter("id"));
        Peliculas peliculas = sp.findPeliculas(id);
        request.setAttribute("peliculas", peliculas);
        
        ServicioComentarios c = new ServicioComentarios(emf);
        List<Comentarios> listaComentarios = c.findComentariosPorPelicula(id);
        request.setAttribute("listaComentarios", listaComentarios);
        emf.close();
        // Redirigir a /usuario/peliculas.jsp
        getServletContext().getRequestDispatcher("/usuario/mostrarPeli.jsp").forward(request, response);
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
        ServicioMeGustaPeliculas servicioFavoritos = new ServicioMeGustaPeliculas(emf);
        
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        
        String accion = request.getParameter("accion");
        Long idPelicula = Long.parseLong(request.getParameter("idPel"));
        String error = "";
        
        if ("meGusta".equals(accion)) {
            servicioFavoritos.marcarMeGusta(usuario.getId(), idPelicula);
        } else if ("noMeGusta".equals(accion)) {
            servicioFavoritos.quitarMeGusta(usuario.getId(), idPelicula);
        }
        
        emf.close();
            
        // Redirigir nuevamente a la vista de esa película
        response.sendRedirect("ControladorMostrarPeliculaIndividual?id=" + idPelicula);
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
