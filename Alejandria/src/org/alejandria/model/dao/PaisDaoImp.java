package org.alejandria.model.dao;

import org.alejandria.model.entity.Pais;
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
@SuppressWarnings("unchecked")
@Repository
public class PaisDaoImp implements PaisDao{

    private EntityManager em = null;

    @PersistenceContext
    public void setEm(EntityManager em) {
        this.em = em;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Pais> getAllPaises() {
        return em.createQuery("select p from Pais p order by p.pais").getResultList();
    }

    @Override
    @Transactional(readOnly = true)
    public Pais getPaisById(Long id) {
        return (Pais) em.createQuery(String.format("select p from Pais p where p.id = %d", id)).getSingleResult();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Pais> findPaises(String name) {
        return em.createQuery(String.format("select p from Pais p where upper(p.pais) like ('%%%1$s%%') or upper(p.codigo) like('%%%1$s%%') order by p.pais", name.toUpperCase())).getResultList();
    }

    @Override
    @Transactional(readOnly = false)
    public void insert(Pais pais) {
        em.persist(pais);
    }

    @Override
    @Transactional(readOnly = false)
    public void update(Pais pais) {
        em.merge(pais);
    }

    @Override
    @Transactional(readOnly = false)
    public void delete(Pais pais) {
        em.remove(pais);
    }
}
