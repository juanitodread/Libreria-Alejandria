package org.alejandria.model.dao;

import org.alejandria.model.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
    @Transactional(readOnly = true)
    public List<Usuario> getAllUsuarios() {
        return em.createQuery("select u from Usuario u order by u.nombre").getResultList();
    }

    @Override
    @Transactional(readOnly = true)
    public Usuario getUsuarioById(Long id) {
        return em.find(Usuario.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public Usuario getUsuarioByIdProxy(Long id){
        return em.getReference(Usuario.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Usuario> findUsuarios(String name) {
        return em.createQuery(String.format("select u from Usuario u where upper(u.nombre) like ('%%%1$s%%') or upper(u.aPaterno) like('%%%1$s%%') or upper(u.aMaterno) like('%%%1$s%%') or upper(u.user) like('%%%1$s%%') order by u.nombre", name.toUpperCase())).getResultList();
    }

    @Override
    @Transactional
    public void insert(Usuario usuario) {
        em.persist(usuario);
    }

    @Override
    @Transactional
    public void update(Usuario usuario) {
        em.merge(usuario);
    }

    @Override
    @Transactional
    public void delete(Usuario usuario) {
        em.remove(usuario);
    }
}
