/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.dao;

import com.mycompany.m_service_web_store.modelo.Leccion;
import com.mycompany.m_service_web_store.util.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 * DAO para la entidad {@link Leccion}. encapsula las operaciones CRUD y
 * consultas específicas usando JPA y JPQL.
 *
 * @author mauricio
 */
public class LeccionDAO {

    private static final EntityManagerFactory emf = JPAUtil.getEntityManagerFactory();


    /**
     * Inserta una nueva lección en la base de datos
     *
     * @param leccion objeto Usuario a persistir
     */
    public void insert(Leccion leccion) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(leccion);
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
    }
    }

    /**
     * Busca una lección por su ID.
     *
     * @param id identificador del leccion
     * @return el objeto Usuario encontrado o null si no existe
     */
    public Leccion findById(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(Leccion.class, id);
        } finally {
            em.close();
        }
    }

    /**
     * Obtiene todas las lecciones asociadas a un curso específico.
     *
     * @param cursoId identificador del curso
     * @return lista de lecciones pertenecientes al curso
     */
    public List<Leccion> findByCursoId(int cursoId) {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Leccion> query = em.createQuery("SELECT l FROM Leccion l WHERE l.curso.id = :cursoId", Leccion.class);
            query.setParameter("cursoId", cursoId);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    /**
     * Obtiene todas las lecciones registradfos en la base de datos.
     *
     * @return lista de objetos Leccion
     */
    public List<Leccion> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT l FROM Leccion l", Leccion.class). getResultList();
        } finally {
            em.close();
        }
    }

    /**
     * Actualiza los datos de una leccion existente.
     *
     * @param leccion objeto Leccion con los datos actualizados
     */
    public void update(Leccion leccion) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(leccion);
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    /**
     * Elimina una lección en la base de datos por su ID.
     *
     * @param id identificador de la lección a eliminar
     */
    public void delete(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Leccion leccion = em.find(Leccion.class, id);
            if (leccion != null) {
                em.remove(leccion);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
}
