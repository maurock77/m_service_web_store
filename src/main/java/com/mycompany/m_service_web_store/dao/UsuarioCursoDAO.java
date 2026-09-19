/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.dao;

import com.mycompany.m_service_web_store.modelo.UsuarioCurso;
import com.mycompany.m_service_web_store.modelo.UsuarioCursoId;
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
    
    private EntityManagerFactory emf;
    
    /**
     * Constructor que inicializa el EntityManagerFactory
     * usando la unidad de persistencia definida en persistence.xml.
     */
    public UsuarioCursoDAO() {
        this.emf = Persistence.createEntityManagerFactory("my_persistence_unit");
    }
    
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
            UsuarioCurso uc = em.find(UsuarioCurso.class, id);
            if (uc != null) {
                em.getTransaction().begin();
                em.remove(uc);
                em.getTransaction().commit();
            }
        } finally {
            em.close();
        }
    }
}
