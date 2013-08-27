package org.alejandria.model.entity;

import javax.persistence.*;

import org.codehaus.jackson.annotate.JsonIgnore;

import java.io.Serializable;
import java.util.Date;

/**
 * User: @juanitodread Date: 4/1/12 Time: 8:39 PM
 */

@Entity
@Table(name = "Municipio")
public class Municipio implements Serializable, Comparable<Municipio> {

    /**
     * 
     */
    private static final long serialVersionUID = -2093106635482162452L;

    @Id
    @SequenceGenerator(name = "secIdMunicipio", sequenceName = "secIdMunicipio", allocationSize = 1)
    @GeneratedValue(generator = "secIdMunicipio", strategy = GenerationType.SEQUENCE)
    @Column(name = "idMunicipio")
    private Long              id;
    @Column(name = "municipio")
    private String            municipio;
    @Column(name = "codigo")
    private String            codigo;
    @Column(name = "activo", insertable = false)
    private Boolean           activo;
    @Column(name = "fechaCreacion", insertable = false, updatable = false)
    @Temporal(value = TemporalType.TIMESTAMP)
    private Date              fechaCreacion;
    @Column(name = "fechaActualizacion", insertable = false, updatable = false)
    @Temporal(value = TemporalType.TIMESTAMP)
    private Date              fechaActualizacion;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUsuarioCreacion", nullable = false)
    private Usuario           usuarioCreacion;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUsuarioActualizacion", nullable = false)
    private Usuario           usuarioActualizacion;
    @ManyToOne
    @JoinColumn(name = "idEstado", nullable = false)
    private Estado            estado;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    @JsonIgnore
    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
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

    @JsonIgnore
    public Usuario getUsuarioCreacion() {
        return usuarioCreacion;
    }

    public void setUsuarioCreacion(Usuario usuarioCreacion) {
        this.usuarioCreacion = usuarioCreacion;
    }

    @JsonIgnore
    public Usuario getUsuarioActualizacion() {
        return usuarioActualizacion;
    }

    public void setUsuarioActualizacion(Usuario usuarioActualizacion) {
        this.usuarioActualizacion = usuarioActualizacion;
    }

    public Municipio() {

    }

    @Override
    public int compareTo(Municipio municipio) {
        if (null == municipio) {
            return 1;
        }
        return municipio.getId() > this.id ? -1
                : municipio.getId() < this.id ? 1 : 0;
    }

    public int hashCode() {
        return this.id.intValue();
    }

    public boolean equals(Object obj) {
        if (null == obj || !(obj instanceof Municipio)) {
            return false;
        }
        return ((Municipio) obj).getId().equals(this.id);
    }
}
