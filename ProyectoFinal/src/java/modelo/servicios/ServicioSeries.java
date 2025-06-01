/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.servicios;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import modelo.entidades.Peliculas;
import modelo.entidades.Series;
import modelo.servicio.exceptions.NonexistentEntityException;

/**
 *
 * @author carlos
 */
public class ServicioSeries implements Serializable {

    public ServicioSeries(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Series series) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(series);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void edit(Series serie) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(serie); // Actualiza la serie con los nuevos datos
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Series series;
            try {
                series = em.getReference(Series.class, id);
                series.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The series with id " + id + " no longer exists.", enfe);
            }
            em.remove(series);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Series> findSeriesEntities() {
        return findSeriesEntities(true, -1, -1);
    }

    public List<Series> findSeriesEntities(int maxResults, int firstResult) {
        return findSeriesEntities(false, maxResults, firstResult);
    }

    private List<Series> findSeriesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Series.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Series findSeries(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Series.class, id);
        } finally {
            em.close();
        }
    }

    public int getSeriesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Series> rt = cq.from(Series.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
    // Metodo para buscar experiencias entre 2 fechas
    public List<Series> findSeriesByFecha(Date fechaInicio, Date fechaFin) {
        EntityManager em = getEntityManager();
        try {
        // Crea una consulta para seleccionar todas las entidades Peliculas, en el que la fecha de inicio se encuentra entre las 2 fechas asignadas    
            return em.createQuery("SELECT s FROM Series s WHERE s.fechaInicio BETWEEN :inicio AND :fin", Series.class)
                    .setParameter("inicio", fechaInicio)
                    .setParameter("fin", fechaFin)
                    .getResultList();
        } finally {
            em.close();
        }
    }
    
    // Eliminar una serie junto a todos los datos relacionados con esta (sus comentarios, sus me gusta)
    public void eliminarSerieConRelaciones(Long idSerie) throws Exception {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();

            em.createNativeQuery("DELETE FROM COMENTARIOS WHERE SERIES_ID = ?")
                .setParameter(1, idSerie)
                .executeUpdate();

            em.createNativeQuery("DELETE FROM me_gusta_series WHERE id_serie = ?")
                .setParameter(1, idSerie)
                .executeUpdate();

            Series serie = em.getReference(Series.class, idSerie);
            em.remove(serie);

            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
}
