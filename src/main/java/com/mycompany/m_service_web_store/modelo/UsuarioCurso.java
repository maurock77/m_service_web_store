/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.m_service_web_store.modelo;

import jakarta.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * Entidad intermedia que representa la inscripción de un Usuario en un Curso.
 * se corresponde con la tabla usuario_curso en la base de datos.
 * 
 * @author mauricio
 */
@Entity
@Table(name = "usuario_curso")
public class UsuarioCurso implements Serializable {
    
    @EmbeddedId
    private UsuarioCursoId id;
    
    @ManyToOne
    @MapsId("usuarioId")
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario usuario;
    
    @ManyToOne
    @MapsId("cursoId")
    @JoinColumn(name = "curso_id", nullable = false)
    private Curso curso;
    
    @Column(name = "fecha_inscripcion")
       private LocalDateTime fechaInscripcion;
    
    // constructores
    public UsuarioCurso() {}
    
    public UsuarioCurso(Usuario usuario, Curso curso, LocalDateTime fechaInscripcion) {
        this.usuario = usuario;
        this.curso = curso;
        this.fechaInscripcion = fechaInscripcion;
        this.id = new UsuarioCursoId(usuario.getId(), curso.getId());
    }

    public UsuarioCursoId getId() {
        return id;
    }

    public void setId(UsuarioCursoId id) {
        this.id = id;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    public LocalDateTime getFechaInscripcion() {
        return fechaInscripcion;
    }

    public void setFechaInscripcion(LocalDateTime fechaInscripcion) {
        this.fechaInscripcion = fechaInscripcion;
    }

    @Override
    public String toString() {
        return "UsuarioCurso{" + "id=" + id + ", usuario=" + usuario + ", curso=" + curso + ", fechaInscripcion=" + fechaInscripcion + '}';
    }

   
}
