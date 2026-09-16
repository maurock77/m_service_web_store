/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.modelo;

/**
 *
 * @author mauricio
 */
public class Usuario {
    
    private int id;
    private String nombre;
    private String correo;
    private String passwordHash;
    private String fotoUrl;
    
    // constructores
public Usuario() {
    
}

public Usuario(int id, String nombre, String correo, String passwordHash, String fotoUrl) {
    this.id = id;
    this.nombre = nombre;
    this.correo = correo;
    this.passwordHash = passwordHash;
    this.fotoUrl = fotoUrl;
}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getFotoUrl() {
        return fotoUrl;
    }

    public void setFotoUrl(String fotoUrl) {
        this.fotoUrl = fotoUrl;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", nombre=" + nombre + ", correo=" + correo + ", passwordHash=" + passwordHash + ", fotoUrl=" + fotoUrl + '}';
    }


    
}


