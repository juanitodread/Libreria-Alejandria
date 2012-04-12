package org.alejandria.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table (name = "PreguntaSecreta")
public class PreguntaSecreta implements Serializable, Comparable<PreguntaSecreta> {

    @Id
    @SequenceGenerator(sequenceName = "secIdPreguntaSecreta", name="id")
    @GeneratedValue(generator = "id", strategy = GenerationType.SEQUENCE)
    @Column(name = "idPreguntaSecreta")
    private Long id;
    @Column(name = "preguntaSecreta", unique = true, insertable = false, updatable = false, length = 100)
    private String preguntaSecreta;
    @Column(name = "activo", insertable = false, updatable = false)
    private boolean activo;
    @Column(name = "fechaCreacion")
    @Temporal(TemporalType.DATE)
    private Date fechaCreacion;
    @Column(name = "fechaActualizacion")
    @Temporal(TemporalType.DATE)
    private Date fechaActualizacion;
    @ManyToOne
    @JoinColumn(name = "idUsuarioCreacion", nullable = false)
    private Usuario usuarioCreacion;
    @ManyToOne
    @JoinColumn(name = "idUsuarioActualizacion", nullable = false)
    private Usuario usuarioActualizacion;

    public PreguntaSecreta(){

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPreguntaSecreta() {
        return preguntaSecreta;
    }

    public void setPreguntaSecreta(String preguntaSecreta) {
        this.preguntaSecreta = preguntaSecreta;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setFechaActualizacion(Date fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }

    public Usuario getUsuarioCreacion() {
        return usuarioCreacion;
    }

    public void setUsuarioCreacion(Usuario usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }

    public Usuario getUsuarioActualizacion() {
        return usuarioActualizacion;
    }

    public void setUsuarioActualizacion(Usuario usuarioActualizacion) {
        this.usuarioActualizacion = usuarioActualizacion;
    }

    @Override
    public int compareTo(PreguntaSecreta preguntaSecreta) {
        if(preguntaSecreta == null){
            return 1;
        }
        return preguntaSecreta.getId() > this.id ? -1 : preguntaSecreta.getId() < this.id ? 1 : 0;
    }

    public int hashCode(){
        return this.id.intValue();
    }

    public boolean equals(Object obj){
        if(null == obj || !(obj instanceof PreguntaSecreta)){
            return false;
        }
        return ((PreguntaSecreta) obj).getId() == this.id;
    }
}
