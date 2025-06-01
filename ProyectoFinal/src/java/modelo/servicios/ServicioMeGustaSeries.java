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
import modelo.entidades.Series;

/**
 *
 * @author carlos
 */
public class ServicioMeGustaSeries implements Serializable {

    private EntityManagerFactory emf;

    public ServicioMeGustaSeries(EntityManagerFactory emf) {
        this.emf = emf;
    }

    private EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    // Añadir película como favorita
    public void marcarMeGusta(Long idUsuario, Long idSerie) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            // Comprobar si existe
            Query check = em.createNativeQuery("SELECT COUNT(*) FROM me_gusta_series WHERE id_usuario = ? AND id_serie = ?");
            check.setParameter(1, idUsuario);
            check.setParameter(2, idSerie);
            Number count = (Number) check.getSingleResult();

            // Si no existe, se crea
            if (count.intValue() == 0) {
                Query insert = em.createNativeQuery("INSERT INTO me_gusta_series (id_usuario, id_serie) VALUES (?, ?)");
                insert.setParameter(1, idUsuario);
                insert.setParameter(2, idSerie);
                insert.executeUpdate();
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    // Eliminar serie de favoritos
    public void quitarMeGusta(Long idUsuario, Long idSerie) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            // Se borra el resgistro de la tabla
            Query delete = em.createNativeQuery("DELETE FROM me_gusta_series WHERE id_usuario = ? AND id_serie = ?");
            delete.setParameter(1, idUsuario);
            delete.setParameter(2, idSerie);
            delete.executeUpdate();
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    // Obtener series favoritas de ese usuario
    public List<Series> obtenerSeriesFavoritas(Long idUsuario) {
        EntityManager em = getEntityManager();
        List<Series> favoritas = new ArrayList<>();
        try {
            Query q = em.createNativeQuery("SELECT id_serie FROM me_gusta_series WHERE id_usuario = ?");
            q.setParameter(1, idUsuario);
            List<?> resultados = q.getResultList();

            for (Object obj : resultados) {
                Long id = (obj instanceof Integer) ? ((Integer) obj).longValue() : (Long) obj;
                Series serie = em.find(Series.class, id);
                if (serie != null) {
                    favoritas.add(serie);
                }
            }
        } finally {
            em.close();
        }
        return favoritas;
    }
    
}
