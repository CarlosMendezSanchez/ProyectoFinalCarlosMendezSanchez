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
import modelo.servicio.exceptions.NonexistentEntityException;

/**
 *
 * @author carlos
 */
public class ServicioPeliculas implements Serializable {

    public ServicioPeliculas(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Peliculas peliculas) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(peliculas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void edit(Peliculas pelicula) {
    EntityManager em = getEntityManager();
    try {
        em.getTransaction().begin();
        em.merge(pelicula);  // Actualiza los datos
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
            Peliculas peliculas;
            try {
                peliculas = em.getReference(Peliculas.class, id);
                peliculas.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The peliculas with id " + id + " no longer exists.", enfe);
            }
            em.remove(peliculas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Peliculas> findPeliculasEntities() {
        return findPeliculasEntities(true, -1, -1);
    }

    public List<Peliculas> findPeliculasEntities(int maxResults, int firstResult) {
        return findPeliculasEntities(false, maxResults, firstResult);
    }

    private List<Peliculas> findPeliculasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Peliculas.class));
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

    public Peliculas findPeliculas(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Peliculas.class, id);
        } finally {
            em.close();
        }
    }

    public int getPeliculasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Peliculas> rt = cq.from(Peliculas.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
    // Metodo para buscar experiencias entre 2 fechas
    public List<Peliculas> findPeliculasByFecha(Date fechaInicio, Date fechaFin) {
    EntityManager em = getEntityManager();
    try {
    // Crea una consulta para seleccionar todas las entidades Peliculas, en el que la fecha de inicio se encuentra entre las 2 fechas asignadas    
        return em.createQuery("SELECT p FROM Peliculas p WHERE p.fechaInicio BETWEEN :inicio AND :fin", Peliculas.class)
                .setParameter("inicio", fechaInicio)
                .setParameter("fin", fechaFin)
                .getResultList();
    } finally {
        em.close();
    }
}
    
}
