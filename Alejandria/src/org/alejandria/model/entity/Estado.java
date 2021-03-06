package org.alejandria.model.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.SequenceGenerator;

import org.codehaus.jackson.annotate.JsonIgnore;

/**
 * User: @juanitodread
 * Date: 4/1/12
 * Time: 7:44 PM
 */

@Entity
@Table(name = "Estado")
public class Estado implements Serializable, Comparable<Estado> {

    /**
     * 
     */
    private static final long serialVersionUID = -4413898761750020881L;
    
    @Id
    @SequenceGenerator(sequenceName = "secIdEstado", name = "secIdEstado", allocationSize = 1)
    @GeneratedValue(generator = "secIdEstado", strategy = GenerationType.SEQUENCE)
    @Column(name = "idEstado")
    private Long id;
    @Column(name = "estado")
    private String estado;
    @Column(name = "codigo")
    private String codigo;
    @Column(name = "activo", insertable = false)
    private Boolean activo;
    @Column(name = "fechaCreacion", insertable = false, updatable = false)
    @Temporal(value = TemporalType.TIMESTAMP)
    private Date fechaCreacion;
    @Column(name = "fechaActualizacion", insertable = false, updatable = false)
    @Temporal(value = TemporalType.TIMESTAMP)
    private Date fechaActualizacion;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUsuarioCreacion", nullable = false)
    private Usuario usuarioCreacion;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idUsuarioActualizacion", nullable = false)
    private Usuario usuarioActualizacion;
    @ManyToOne
    @JoinColumn(name = "idPais", nullable = false)
    private Pais pais;
    
    public Estado(){

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
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

    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }

    @Override
    public int compareTo(Estado estado) {
        if(null == estado){
            return 1;
        }
        return estado.getId() > this.id ? -1 : estado.getId() < this.id ? 1 : 0;
    }
    
    public int hashCode(){
        return this.id.intValue();
    }
    
    public boolean equals(Object obj){
        if(null == obj || !(obj instanceof Estado)){
            return false;
        }
        return ((Estado) obj).getId().equals(this.id);
    }
}
