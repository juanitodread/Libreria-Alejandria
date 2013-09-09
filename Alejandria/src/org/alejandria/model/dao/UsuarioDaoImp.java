package org.alejandria.model.dao;

import org.alejandria.model.entity.Usuario;
import org.alejandria.security.crypto.CryptoUtil;
import org.alejandria.util.Util;
import org.alejandria.util.encodecs.Base64;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.List;

/**
 * User: @juanitodread Date: 4/10/12 Time: 9:26 PM
 */
@Repository
public class UsuarioDaoImp implements UsuarioDao {

    private EntityManager em;

    @PersistenceContext
    public void setEm(EntityManager em) {
        this.em = em;
    }

    @Override
    @Transactional(readOnly = true)
    public int getUsersCount() {
        Number countRows = null;
        countRows = (Number) em
                .createQuery("select count(u.id) from Usuario u")
                .getSingleResult();
        return countRows.intValue();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Usuario> getSetOfUsers(int start, int maxRows) {
        return em.createQuery("select u from Usuario u order by u.nombre")
                .setFirstResult(start).setMaxResults(maxRows).getResultList();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Usuario> getAllUsuarios() {
        return em.createQuery("select u from Usuario u order by u.nombre")
                .getResultList();
    }

    @Override
    @Transactional(readOnly = true)
    public Usuario getUsuarioById(Long id) {
        return em.find(Usuario.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public Usuario getUsuarioByIdProxy(Long id) {
        return em.getReference(Usuario.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Usuario> findUsuarios(String name) {
        name = "%" + name + "%";
        return em
                .createQuery("select u from Usuario u where upper(u.nombre) like :nombre or upper(u.aPaterno) like :apaterno or upper(u.aMaterno) like :amaterno or upper(u.user) like :user order by u.nombre")
                .setParameter("nombre", name)
                .setParameter("apaterno", name)
                .setParameter("amaterno", name)
                .setParameter("user", name)
                .getResultList();
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

    @Override
    @Transactional(readOnly = true)
    public boolean authenticateUser(String username, String password) {
        Usuario user = getUsuarioByUsername(username);
        
        if(user == null) {
            return false;
        }
        
        String userSalt64 = user.getSalt();
        String digestPass = null;
        byte[] salt = Base64.decode(userSalt64);
        byte[] pass = CryptoUtil.generateSecureKeyToByte(password, 
                                                         salt, 
                                                         Util.PASSWORD_ITERATIONS_ALGORITHM, 
                                                         Util.PASSWORD_LENGTH);
        
        digestPass = Base64.encodeToString(pass);
        
        if(user.getPassword().equals(digestPass)) {
            return true;
        }       
        
        return false;
    }

    @Override
    @Transactional(readOnly = true)
    public Usuario getUsuarioByUsername(String username) {
        Usuario user = null;
        List<Usuario> result = em.createQuery("select u from Usuario u where u.user = :username")
                                    .setParameter("username", username).getResultList();
        
        if(result.size() > 0) {
            user = result.get(0);
        }
        
        return user;
    }
}
