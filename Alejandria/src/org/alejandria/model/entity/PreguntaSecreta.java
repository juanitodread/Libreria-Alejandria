package org.alejandria.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table (name = "PreguntaSecreta")
public class PreguntaSecreta implements Serializable {

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
}
