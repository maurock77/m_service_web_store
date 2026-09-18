/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.dao;

import com.mycompany.m_service_web_store.modelo.Usuario;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 * DAO para la entidad {@link Usuario}.
 * Encapsula las operaciones CRUD y consultas específicas
 * usando JPA y JPQL.
 * 
 * @author mauricio
 */
public class UsuarioDAO {
    
    private EntityManagerFactory emf;
    
    /**
     * Constructor que inicializa en EntityManagerFactory
     * usando la unidad de persistencia definida en persistence.xml
     */
    public UsuarioDAO() {
        this.emf = Persistence.createEntityManagerFactory("my_persistence_unit");
    }
    
    /**
     * Inserta u nuevo usuario en la base de datos
     * 
     * @param usuario objeto Usuario a persistir
     */
    public void insert(Usuario usuario) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(usuario);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
    /**
     * Busca un usuario por su ID.
     * 
     * @param id identificador del usuario
     * @return el objeto Usuario encontrado o null si no existe
     */
    public Usuario findById(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(Usuario.class, id);
        } finally {
            em.close();
        }
    }
    
    /**
     * Busca un usuario por su correo electrónico.
     * 
     * @param correo correo del usuario
     * @return el objeto Usuario encontrado o null si no existe
     */
    public Usuario findByCorreo(String correo) {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Usuario> query = em.createQuery(
            "SELECT u FROM Usuario u WHERE u.correo = :correo", Usuario.class);
            query.setParameter("correo",correo);
            List<Usuario> resultados = query.getResultList();
            return resultados.isEmpty() ? null : resultados.get(0);
        } finally {
            em.close();
        }
    }
    
    /**
     * Obtiene todos los usuarios registradfos en la base de datos.
     * 
     * @return lista de objetos Usuario
     */
    public List<Usuario> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Usuario> query = em.createQuery("SELECT u FROM u", Usuario.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }
    
    /**
     * Actualiza los datos de un usuario existente.
     * 
     * @param usuario objeto Usuario con los datos actualizados
     */
    public void update(Usuario usuario) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(usuario);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
    /**
     * Elimina un usuario en la base de datos por su ID.
     * 
     * @param id identificador del usuario a eliminar
     */
    public void delete(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Usuario usuario = em.find(Usuario.class, id);
            if (usuario != null) {
                em.remove(usuario);
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
}
