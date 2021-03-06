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
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.annotate.JsonIgnore;

/**
 * User: @juanitodread
 * Date: 4/1/12
 * Time: 6:46 PM
 */

@Entity
@Table(name="Usuario")
public class Usuario implements Serializable, Comparable<Usuario> {

    @Id
    @SequenceGenerator(name = "secIdUsuario", sequenceName = "secIdUsuario", allocationSize = 1)
    @GeneratedValue(generator = "secIdUsuario", strategy = GenerationType.SEQUENCE)
    @Column(name = "idUsuario")
    private Long id;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "aPaterno")
    private String aPaterno;
    @Column(name = "aMaterno")
    private String aMaterno;
    @Column(name = "email")
    private String email;
    @Column(name = "usuario")
    private String user;
    @Column(name = "pass")
    private String password;
    @Column(name = "salt")
    private String salt;
    @Column(name = "avatar")
    private byte[] avatar;
    @Column(name = "respuestaSecreta")
    private String respuestaSecreta;
    @Column(name = "fechaInicioSesion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaInicioSesion;
    @ManyToOne
    @JoinColumn(name = "idMunicipio", nullable = false)
    private Municipio municipio;
    @ManyToOne
    @JoinColumn(name = "idPreguntaSecreta", nullable = false)
    private PreguntaSecreta preguntaSecreta;
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

    public Usuario(){

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getaPaterno() {
        return aPaterno;
    }

    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
    }

    public String getaMaterno() {
        return aMaterno;
    }

    public void setaMaterno(String aMaterno) {
        this.aMaterno = aMaterno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public byte[] getAvatar() {
        return avatar;
    }

    public void setAvatar(byte[] avatar) {
        this.avatar = avatar;
    }

    public String getRespuestaSecreta() {
        return respuestaSecreta;
    }

    public void setRespuestaSecreta(String respuestaSecreta) {
        this.respuestaSecreta = respuestaSecreta;
    }

    public Date getFechaInicioSesion() {
        return fechaInicioSesion;
    }

    public void setFechaInicioSesion(Date fechaInicioSesion) {
        this.fechaInicioSesion = fechaInicioSesion;
    }

    public Municipio getMunicipio() {
        return municipio;
    }

    public void setMunicipio(Municipio municipio) {
        this.municipio = municipio;
    }

    public void setPreguntaSecreta(PreguntaSecreta preguntaSecreta) {
        this.preguntaSecreta = preguntaSecreta;
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

    @Override
    public int compareTo(Usuario usuario) {
        if(null == usuario){
            return 1;
        }
        return usuario.getId() > this.id ? -1 : usuario.getId() < this.id ? 1 : 0;
    }

    public int hashCode(){
        return this.id.intValue();
    }

    public boolean equals(Object obj){
        if(null == obj || !(obj instanceof Usuario)){
            return false;
        }
        return ((Usuario) obj).getId().equals(this.id);
    }
}
