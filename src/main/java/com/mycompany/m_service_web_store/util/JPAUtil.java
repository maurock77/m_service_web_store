/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.util;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.io.InputStream;
import java.util.Properties;

/**
 * clase utilitaria que centraliza la creación del EntityManagerFactory.
 * carga las credenciales desde db.properties y las pasa a JPA
 * 
 * @author mauricio
 */
public class JPAUtil {
    
    private static final EntityManagerFactory EMF;
    
    static {
        try {
            // cargar db.properties desde el classpath
            Properties dbProps = new Properties();
            try (InputStream input = JPAUtil.class.getClassLoader()
                    .getResourceAsStream("db.properties")) {
                if (input == null) {
                    throw new RuntimeException("No se encontró db.properties en el classpath");
                }
                dbProps.load(input);
            }
            Properties jpaProps = new Properties();
            jpaProps.put("jakarta.persistence.jdbc.url", dbProps.getProperty("db.url"));
            jpaProps.put("jakarta.persistence.jdbc.user", dbProps.getProperty("db.user"));
            jpaProps.put("jakarta.persistence.jdbc.password", dbProps.getProperty("db.password"));
            jpaProps.put("jakarta.persistence.jdbc.driver", dbProps.getProperty("db.driver"));
            
            EMF = Persistence.createEntityManagerFactory("my_persistence_unit", jpaProps);
        } catch (Exception e) {
            throw new RuntimeException("Error inicializando JPA", e);
        }
    }
    public static EntityManagerFactory getEntityManagerFactory() {
        return EMF;
    }
    public static void shutdown() {
        if (EMF != null && EMF.isOpen()) {
            EMF.close();
        }
    }
}
