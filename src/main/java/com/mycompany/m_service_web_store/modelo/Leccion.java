/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.modelo;

/**
 *
 * @author mauricio
 */
public class Leccion {
    
    private int id;
    private int cursoId;
    private String titulo;
    private String contenido;
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
