package org.alejandria.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * User: @juanitodread
 * Date: 4/1/12
 * Time: 7:16 PM
 */

@Entity
@Table(name="Pais")
public class Pais implements Serializable, Comparable<Pais>{

    @Id
    @SequenceGenerator(sequenceName = "secIdPais", name = "secIdPais", allocationSize = 1)
    @GeneratedValue(generator = "secIdPais", strategy = GenerationType.SEQUENCE)
    @Column(name = "idPais")
    private Long id;
    @Column(name = "pais")
    private String pais;
    @Column(name="codigo")
    private String codigo;
    @Column(name="activo", insertable = false)
    private Boolean activo;
    @Column(name="fechaCreacion", insertable = false, updatable = false)
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
    
    public Pais(){

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
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
    public int compareTo(Pais pais) {
        if(pais == null){
            return 1;
        }
        return pais.getId() > this.id ? -1 : pais.getId() < this.id ? 1 : 0;
    }

    public int hashCode(){
         return this.id.intValue();
    }

    public boolean equals(Object obj){
        if(null == obj || !(obj instanceof Pais)){
            return false;
        }
        return ((Pais) obj).getId() == this.id;
    }
}
