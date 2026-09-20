/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.dao;

import com.mycompany.m_service_web_store.modelo.Curso;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 * DAO para entidad {@link Curso}.
 * encapsula las operaciones CRUD y consultas específicas
 * usando JPA y JPQL.
 * @author mauricio
 */
public class CursoDAO {
    
    private EntityManagerFactory emf;
    
    /**
     * Constructor que inicializa el EntityManagerFactory
     * usando la unidad de persistencia definida en persistence.xml.
     */
    public CursoDAO() {
        this.emf = Persistence.createEntityManagerFactory("my_persistence_unit");
    }
    
    /**
     * Inserta un nuevo curso en la base de datos.
     * 
     * @param curso objeto Curso a persistir
     */
    public void insert(Curso curso) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(curso);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
    /**
     * Busca un curso por su ID
     * 
     * @param id identificador del curso
     * @return el objeto Curso encontrado o null si no existe
     */
    public Curso findById(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(Curso.class, id);
        } finally {
            em.close();
        }
    }
    
    /**
     * Busca cursos por nombre
     * 
     * @param nombre nombre del curso
     * @return lista de cursos que coinciden con el nombre
     */
    public List<Curso> findByNombre(String nombre) {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Curso> query = em.createQuery(
            "SELECT c FROM Curso c WHERE c.nombre = :nombre", Curso.class);
            query.setParameter("nombre", nombre);
            return query.getResultList();
        } finally {
            em.close();
        }
    }
    
    /**
     * Obtiene todos los cursos registrados en la base de datos.
     * 
     * @return lista de objetos Curso
     */
    public List<Curso> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Curso> query = em.createQuery("SELECT c FROM Curso c", Curso.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }
    
    /**
     * Actualiza los datos de un curso existente.
     * 
     * @param curso objeto Curso con los datos actualizados
     */
    public void update(Curso curso) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(curso);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
    public void delete(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Curso curso = em.find(Curso.class, id);
            if (curso != null) {
                em.remove(curso);
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
}
