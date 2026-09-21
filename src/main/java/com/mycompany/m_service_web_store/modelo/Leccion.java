/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.modelo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author mauricio
 */

@Entity
@Table(name = "leccion")
public class Leccion {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "curso_id", nullable = false)
    private int cursoId;
    
    @Column(name = "titulo", nullable = false, length = 150)
    private String titulo;
    
    @Column(name = "contenido", columnDefinition = "TEXT")
    private String contenido;
    
    @Column(name = "orden")
    private int orden;

    // constructores
    public Leccion() {
}

    public Leccion(int id, int cursoId,String titulo, String contenido, int orden) {
    this.id = id;
    this.cursoId = cursoId;
    this.titulo = titulo;
    this.contenido = contenido;
    this.orden = orden;
}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCursoId() {
        return cursoId;
    }

    public void setCursoId(int cursoId) {
        this.cursoId = cursoId;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public int getOrden() {
        return orden;
    }

    public void setOrden(int orden) {
        this.orden = orden;
    }

    @Override
    public String toString() {
        return "Leccion{" + "id=" + id + ", cursoId=" + cursoId + ", titulo=" + titulo + ", contenido=" + contenido + ", orden=" + orden + '}';
    }
    
    
}
