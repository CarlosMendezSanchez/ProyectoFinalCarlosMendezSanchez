/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package prueba;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.entidades.Comentarios;
import modelo.entidades.Peliculas;
import modelo.entidades.Series;
import modelo.entidades.Usuario;
import modelo.servicios.ServicioComentarios;
import modelo.servicios.ServicioPeliculas;
import modelo.servicios.ServicioSeries;
import modelo.servicios.ServicioUsuario;


/**
 *
 * @author carlos
 */
@WebServlet(name = "CrearDatos", urlPatterns = {"/CrearDatos"})
public class CrearDatos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoFinalPU");

        ServicioUsuario su = new ServicioUsuario(emf);
        ServicioPeliculas sp = new ServicioPeliculas(emf);
        ServicioSeries ss = new ServicioSeries(emf);
        ServicioComentarios sc = new ServicioComentarios(emf);

        // Crear usuario
        Usuario usuario = new Usuario();
        usuario.setNombre("Pepe");
        usuario.setApellidos("Pérez");
        usuario.setEmail("pepe@ejemplo.com");
        usuario.setPassword("1234");
        usuario.setTipo("usuario");
        usuario.setMeGustaPeliculas(Arrays.asList());
        usuario.setMeGustaSeries(Arrays.asList());
        su.create(usuario);

        // Crear película
        Peliculas peli = new Peliculas();
        peli.setTitulo("La Gran Aventura");
        peli.setDescripcion("Una película llena de emoción y acción.");
        peli.setAno("2024");
        peli.setGenero("Aventura");
        peli.setDuracion(120);
        sp.create(peli);

        // Crear serie
        Series serie = new Series();
        serie.setTitulo("Misterios del Futuro");
        serie.setDescripcion("Una serie de ciencia ficción con giros inesperados.");
        serie.setAno("2023");
        serie.setGenero("Ciencia Ficción");
        serie.setTemporadas(2);
        ss.create(serie);

        // Crear comentario sobre la película
        Comentarios c1 = new Comentarios();
        c1.setUsuario(usuario);
        c1.setContenido("Me encantó la trama y los efectos especiales.");
        c1.setPeliculas(peli);
        sc.create(c1);

        // Crear comentario sobre la serie
        Comentarios c2 = new Comentarios();
        c2.setUsuario(usuario);
        c2.setContenido("La segunda temporada fue una locura");
        c2.setSeries(serie);
        sc.create(c2);

        emf.close();

        try (PrintWriter out = response.getWriter()) {
            out.println("<html><body><h1>Se han creado los datos de prueba correctamente</h1></body></html>");
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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