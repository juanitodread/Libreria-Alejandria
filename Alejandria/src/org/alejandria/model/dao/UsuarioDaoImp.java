package org.alejandria.model.dao;

import org.alejandria.model.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * User: @juanitodread
 * Date: 4/10/12
 * Time: 9:26 PM
 */
@Repository
public class UsuarioDaoImp implements UsuarioDao{

    private EntityManager em;

    @PersistenceContext
    public void setEm(EntityManager em){
        this.em = em;
    }

    @Override
    public List<Usuario> getAllUsuarios() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Usuario getUsuarioById(Long id) {
        Usuario usr = new Usuario();
        usr.setId(id);
        return em.getReference(Usuario.class, id);
        //return (Usuario) em.createQuery(String.format("select u from Usuario u where u.id = %d", id)).getSingleResult();
    }

    @Override
    public List<Usuario> findUsuarios(String name) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void insert(Usuario usuario) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void update(Usuario usuario) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void delete(Usuario usuario) {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
