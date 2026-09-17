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
}
