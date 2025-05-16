/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador.comentario;

import java.io.IOException;
import java.io.PrintWriter;
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
import modelo.servicios.ServicioPeliculas;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorCrearComentario", urlPatterns = {"/usuario/ControladorCrearComentario"})
public class ControladorCrearComentario extends HttpServlet {

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
        // Redirigir al jsp /usuario/crearcomentario
        getServletContext().getRequestDispatcher("/usuario/crearComentario.jsp").forward(request, response);
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
        // Obtener el parametro de contenido del formulario del jsp de crearcomentario
        String contenido = request.getParameter("contenido");
        String error = "";
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoFinalPU");
        ServicioComentarios c = new ServicioComentarios(emf);
        ServicioPeliculas sp = new ServicioPeliculas(emf);
        
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        Long id = Long.parseLong(request.getParameter("idP"));
        Peliculas peliculas = sp.findPeliculas(id);
        
        Comentarios comentarios = new Comentarios();
        comentarios.setContenido(contenido);
        comentarios.setUsuario(usuario);
        comentarios.setPeliculas(peliculas);
        
        c.create(comentarios);
        emf.close();
        
        // Redirigir a /usuario/crearcomentario.jsp 
        getServletContext().getRequestDispatcher("/usuario/crearComentario.jsp").forward(request, response);
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
