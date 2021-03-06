package co.edu.usbcali.mathusb.modelo;
// Generated 23-mar-2016 0:44:34 by Hibernate Tools 4.0.0


import java.util.HashSet;
import java.util.Set;

/**
 * Comentario generated by hbm2java
 */
public class Comentario  implements java.io.Serializable {


     private Long comenId;
     private Comentario comentario;
     private Usuario usuario;
     private String tituloComentario;
     private String contenidoComentario;
     private Set<Comentario> comentarios = new HashSet<Comentario>(0);

    public Comentario() {
    }

	
    public Comentario(Long comenId, String contenidoComentario) {
        this.comenId = comenId;
        this.contenidoComentario = contenidoComentario;
    }
    public Comentario(Long comenId, Comentario comentario, Usuario usuario, String tituloComentario, String contenidoComentario, Set<Comentario> comentarios) {
       this.comenId = comenId;
       this.comentario = comentario;
       this.usuario = usuario;
       this.tituloComentario = tituloComentario;
       this.contenidoComentario = contenidoComentario;
       this.comentarios = comentarios;
    }
   
    public Long getComenId() {
        return this.comenId;
    }
    
    public void setComenId(Long comenId) {
        this.comenId = comenId;
    }
    public Comentario getComentario() {
        return this.comentario;
    }
    
    public void setComentario(Comentario comentario) {
        this.comentario = comentario;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getTituloComentario() {
        return this.tituloComentario;
    }
    
    public void setTituloComentario(String tituloComentario) {
        this.tituloComentario = tituloComentario;
    }
    public String getContenidoComentario() {
        return this.contenidoComentario;
    }
    
    public void setContenidoComentario(String contenidoComentario) {
        this.contenidoComentario = contenidoComentario;
    }
    public Set<Comentario> getComentarios() {
        return this.comentarios;
    }
    
    public void setComentarios(Set<Comentario> comentarios) {
        this.comentarios = comentarios;
    }




}


