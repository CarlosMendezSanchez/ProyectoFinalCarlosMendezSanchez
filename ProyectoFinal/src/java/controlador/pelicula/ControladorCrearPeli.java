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
import modelo.entidades.Peliculas;
import modelo.servicios.ServicioPeliculas;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorCrearPeli", urlPatterns = {"/admin/ControladorCrearPeli"})
public class ControladorCrearPeli extends HttpServlet {

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
        ServicioPeliculas sp = new ServicioPeliculas(emf);
        List<Peliculas> peliculas = sp.findPeliculasEntities();
        request.setAttribute("peliculas", peliculas);
        String accion = request.getParameter("accion");
        
        // Muestra el formulario para crear una nueva película
        getServletContext().getRequestDispatcher("/admin/crearPelicula.jsp").forward(request, response);
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
        ServicioPeliculas sp = new ServicioPeliculas(emf);
        
        String titulo = request.getParameter("titulo");
        String descripcion = request.getParameter("descripcion");
        String genero = request.getParameter("genero");
        String ano = request.getParameter("ano");
        String imagen = request.getParameter("imagen");
        int duracion = Integer.parseInt(request.getParameter("duracion"));
        
        Peliculas pelicula = new Peliculas();
        pelicula.setTitulo(titulo);
        pelicula.setDescripcion(descripcion);
        pelicula.setDuracion(duracion);
        pelicula.setGenero(genero);
        pelicula.setAno(ano);
        pelicula.setImagen(imagen);

        sp.create(pelicula);
        emf.close();
        
        getServletContext().getRequestDispatcher("/admin/crearPelicula.jsp").forward(request, response);
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
