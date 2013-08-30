package org.alejandria.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alejandria.model.entity.PreguntaSecreta;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created with IntelliJ IDEA.
 * User: juanitodread
 * Date: 2/11/12
 * Time: 09:09 PM
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class PreguntaSecretaDaoImp implements PreguntaSecretaDao {

    private EntityManager em = null;

    @PersistenceContext
    public void setEm(EntityManager em) {
        this.em = em;
    }

    @Override
    @Transactional(readOnly = true)
    public List<PreguntaSecreta> getAllPreguntasSecretas() {
        return em.createQuery("select ps from PreguntaSecreta ps order by ps.preguntaSecreta").getResultList();
    }

    @Override
    public PreguntaSecreta getPreguntaSecretaById(Long id) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public PreguntaSecreta getPreguntaSecretaByIdProxy(Long id) {
        return em.getReference(PreguntaSecreta.class, id);
    }

    @Override
    public List<PreguntaSecreta> findPreguntasSecretas(String name) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void insert(PreguntaSecreta preguntaSecreta) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void update(PreguntaSecreta preguntaSecreta) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void delete(PreguntaSecreta preguntaSecreta) {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
