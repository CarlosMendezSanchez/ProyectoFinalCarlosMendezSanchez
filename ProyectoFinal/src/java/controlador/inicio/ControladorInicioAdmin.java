/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador.inicio;

import cifrar.Cifrar;
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
import modelo.entidades.Series;
import modelo.entidades.Usuario;
import modelo.servicios.ServicioPeliculas;
import modelo.servicios.ServicioSeries;
import modelo.servicios.ServicioUsuario;

/**
 *
 * @author carlos
 */
@WebServlet(name = "ControladorInicioAdmin", urlPatterns = {"/admin/ControladorInicioAdmin"})
public class ControladorInicioAdmin extends HttpServlet {
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
        // Instanciar el servicio de usuario y obtener la lista de usuarios de la base de datos.
        ServicioUsuario svu = new ServicioUsuario(emf);
        List<Usuario> usuario = svu.findUsuarioEntities();
        // Agregar la lista mediante atributos para el archivo jsp.
        request.setAttribute("usuarios", usuario);
        String accion = request.getParameter("accion");
        
        String error = "";
        
        try {  
            /*
            * Si el parametro de accion es igual a editar, obtiene el id del usuario y lo busca
            * Agrega como atributo el usuario que se va a editar y redirige al jsp /admin/editarUsuario.jsp
            */
            if ("editar".equals(accion)){
                Long id = Long.parseLong(request.getParameter("id"));
                Usuario usuarioEditar = svu.findUsuario(id);
                request.setAttribute("usuariosLista", usuarioEditar);
                emf.close();
                getServletContext().getRequestDispatcher("/admin/editarUsuario.jsp").forward(request, response);
                return;
            }
        } catch (Exception e) {
            request.setAttribute("error", "No se puede editar usuarios");
        }
        
        try {
            /*
            * Si el parametro de accion es igual a eliminar, obtiene el id del usuario
            * Comprueba que el usuario tenga o no experiencias para eliminar al usuario, si tiene, no lo elimina
            * Agraga como atributo la lista de usuarios actualizada y redirige al jsp /admin/inicio.jsp
            */
            if ("eliminar".equals(accion)) {  
                Long id = Long.parseLong(request.getParameter("id"));
                Usuario usuarioEliminar = svu.findUsuario(id);
                svu.destroy(id);
                usuario = svu.findUsuarioEntities();
                request.setAttribute("usuarios", usuario);   
                emf.close();
                getServletContext().getRequestDispatcher("/admin/inicio.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "No se puede eliminar el usuario");
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
        // Obtiene los parametros de la edicion de usuario del jsp de editarUsuario.
        Long id = Long.parseLong(request.getParameter("id"));
        String email = request.getParameter("email");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String password = request.getParameter("password");
        String error = "";
        
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoFinalPU");    
    ServicioUsuario servicioUsuario = new ServicioUsuario(emf);
    // Busca al usuario en la base de datos mediante el id.
    Usuario usuario = servicioUsuario.findUsuario(id);

    // Si el usuario existe, actualiza los datos de ese usuario.
    if (usuario != null) {
        usuario.setEmail(email);
        usuario.setNombre(nombre);
        usuario.setApellidos(apellido);

        try {
            // Cifrar la contraseña antes de guardarla
            String passwordCifrada = Cifrar.codificar(password);
            usuario.setPassword(passwordCifrada);
            // Guarda los cambios de la edicion en la base de datos
            servicioUsuario.edit(usuario);
            
        } catch (Exception e) {
            // Error al editar el usuario
            request.setAttribute("error", error);
        }
    } else {
        // Error si el usuario no existe
        request.setAttribute("error", error);
    }       
        // Si el usuario existe, se agrega como atributo y reenvia a /admin/editarUsuario.jsp
        if (usuario != null) {
            request.setAttribute("usuariosLista", usuario);
        }
    
    emf.close();
    getServletContext().getRequestDispatcher("/admin/editarUsuario.jsp").forward(request, response);
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
