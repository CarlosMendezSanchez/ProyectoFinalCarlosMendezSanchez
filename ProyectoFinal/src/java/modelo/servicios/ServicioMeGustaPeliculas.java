/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.servicios;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Query;
import modelo.entidades.Peliculas;

/**
 *
 * @author carlos
 */
public class ServicioMeGustaPeliculas implements Serializable {

    private EntityManagerFactory emf;

    public ServicioMeGustaPeliculas(EntityManagerFactory emf) {
        this.emf = emf;
    }

    private EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    // Añadir película como favorita
    public void marcarMeGusta(Long idUsuario, Long idPelicula) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();

            // Comprobar si ya existe
            Query q = em.createNativeQuery("SELECT COUNT(*) FROM me_gusta_peliculas WHERE id_usuario = ? AND id_pelicula = ?");
            q.setParameter(1, idUsuario);
            q.setParameter(2, idPelicula);
            Number count = (Number) q.getSingleResult();

            if (count.intValue() == 0) {
                // Si no existe, se crea
                Query insert = em.createNativeQuery("INSERT INTO me_gusta_peliculas (id_usuario, id_pelicula) VALUES (?, ?)");
                insert.setParameter(1, idUsuario);
                insert.setParameter(2, idPelicula);
                insert.executeUpdate();
            }

            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    // Obtener películas favoritas del usuario
    public List<Peliculas> obtenerPeliculasFavoritas(Long idUsuario) {
    EntityManager em = getEntityManager();
    List<Peliculas> favoritas = new ArrayList<>();
    try {
        Query q = em.createNativeQuery("SELECT id_pelicula FROM me_gusta_peliculas WHERE id_usuario = ?");
        q.setParameter(1, idUsuario);

        List<?> resultados = q.getResultList();

        for (Object obj : resultados) {
            Long id;
            if (obj instanceof Integer) {
                id = ((Integer) obj).longValue();
            } else {
                id = (Long) obj;
            }
            Peliculas peli = em.find(Peliculas.class, id);
            if (peli != null) {
                favoritas.add(peli);
            }
        }
    } finally {
        em.close();
    }
    return favoritas;
}

    // Eliminar película de favoritos
    public void quitarMeGusta(Long idUsuario, Long idPelicula) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            Query q = em.createNativeQuery("DELETE FROM me_gusta_peliculas WHERE id_usuario = ? AND id_pelicula = ?");
            q.setParameter(1, idUsuario);
            q.setParameter(2, idPelicula);
            q.executeUpdate();
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
}
