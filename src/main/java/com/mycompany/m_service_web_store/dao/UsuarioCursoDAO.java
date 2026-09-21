/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.dao;

import com.mycompany.m_service_web_store.modelo.UsuarioCurso;
import com.mycompany.m_service_web_store.modelo.UsuarioCursoId;
import com.mycompany.m_service_web_store.util.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 * DAO para la entidad UsuarioCurso.
 * permite realizar operaciones crud sobre la tabla usuario_curso.
 * 
 * Métodos:
 * insertar: registra una nueva inscripción.
 * buscarPorId: obtiene una inscripción por su clave compuesta.
 * listarTodos: devuelve todas las inscripciones.
 * eliminar: elimina una inscripción existente.
 * 
 * @author mauricio
 */
public class UsuarioCursoDAO {
    
    private static final EntityManagerFactory emf = JPAUtil.getEntityManagerFactory();

    
    /**
     * insertar una nueva inscripción en la base de datos.
     * 
     * @param usuarioCurso entidad UsuarioCurso a persistir
     */
    public void insertar(UsuarioCurso usuarioCurso) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(usuarioCurso);
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    /**
     * Busca una inscripción por su clave compuesta.
     * 
     * @param id objeto UsuarioCursoId con usuarioId y cursoId
     * @return UsuarioCurso encontrado o null si no existe
     */
    public UsuarioCurso buscarPorId(UsuarioCursoId id) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(UsuarioCurso.class, id);
        } finally {
            em.close();
        }
    }
    
    /**
     * Lista todas las inscripciones registradas.
     * 
     * @return lista de UsuarioCurso
     */
    public List<UsuarioCurso> listarTodos() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT uc FROM UsuarioCurso uc", UsuarioCurso.class).getResultList();
        } finally {
            em.close();
        }
    }
    
    /**
     * Elimina una inscripción existente
     * 
     * @param id clave compuesta de la inscripción a eliminar
     */
    public void eliminar(UsuarioCursoId id) {
        EntityManager em = emf.createEntityManager();
        try {
            UsuarioCurso usuarioCurso = em.find(UsuarioCurso.class, id);
            if (usuarioCurso != null) {
                em.remove(usuarioCurso);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    /**
     * Lista todas las inscripciones de un usuario concreto.
     */
    public List<UsuarioCurso> listarPorUsuario(int usuarioId) {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<UsuarioCurso> query = em.createQuery(
            "SELECT uc FROM UsuarioCurso uc WHERE uc.usuario.id = :usuarioId", UsuarioCurso.class);
            query.setParameter("usuarioId", usuarioId);
            return query.getResultList();
        } finally {
            em.close();
        }
    }
}
