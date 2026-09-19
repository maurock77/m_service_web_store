/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.modelo;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

/**
 * Clave compuesta para la entidad UsuarioCurso
 * representa la ocmbinación de usuario_id y curso_id
 * @author mauricio
 */
@Embeddable
public class UsuarioCursoId implements Serializable{
    
    private int usuarioId;
    private int cursoId;
    
    // constructores
    public UsuarioCursoId() {}
    
    public UsuarioCursoId(int usuarioId, int id1) {
        this.usuarioId = usuarioId;
        this.cursoId = cursoId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public int getCursoId() {
        return cursoId;
    }

    public void setCursoId(int cursoId) {
        this.cursoId = cursoId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UsuarioCursoId) ) return false;
        UsuarioCursoId that = (UsuarioCursoId) o;
        return usuarioId == that.usuarioId && cursoId == that.cursoId;
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(usuarioId, cursoId);
    }
    
    
}
