/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador.registro;

import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.entidades.Usuario;
import modelo.servicios.ServicioUsuario;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorRegistro", urlPatterns = {"/ControladorRegistro"})
public class ControladorRegistro extends HttpServlet {

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
        // Redirige al jsp de registro
        getServletContext().getRequestDispatcher("/registro.jsp").forward(request, response);
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
        // Recoger los parametros del formulario de registro
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String tipo = request.getParameter("tipo");
        String error = "";

        if (email == null || password == null || nombre == null || apellidos == null || email.isEmpty() || password.isEmpty() || nombre.isEmpty() || apellidos.isEmpty()) {
            error = "Todos los campos son obligatorios";
        } else {
            // Crear instancia EntityManagerFactory (para poder interactuar con la base de datos)
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoFinalPU");
            // Instanciar el servicio de usuario
            ServicioUsuario su = new ServicioUsuario(emf);
            
            if (su.obtenerUsuarioPorEmail(email) != null) {
                error = "El e-mail ya está registrado";
            } else {
                // Crear objeto nuevoUsuario con los datos proporcionados por el formulario
                Usuario nuevoUsuario = new Usuario();
                nuevoUsuario.setEmail(email);
                nuevoUsuario.setPassword(password);
                nuevoUsuario.setNombre(nombre);
                nuevoUsuario.setApellidos(apellidos);
                nuevoUsuario.setTipo(tipo);    
                // Crear el usuario en la base de datos
                su.crearUsuario(nuevoUsuario);
                
                emf.close();
                getServletContext().getRequestDispatcher("/registro.jsp").forward(request, response);
                return;
            }
            emf.close();
        }

        request.setAttribute("error", error);
        getServletContext().getRequestDispatcher("/registro.jsp").forward(request, response);
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
