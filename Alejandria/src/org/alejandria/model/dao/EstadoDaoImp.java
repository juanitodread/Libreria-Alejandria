package org.alejandria.model.dao;

import org.alejandria.model.entity.Estado;
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
public class EstadoDaoImp implements EstadoDao{

    @PersistenceContext
    private EntityManager em = null;

    public void setEm(EntityManager em){
        this.em = em;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Estado> getAllEstados() {
        return em.createQuery("Select e from Estado e order by e.estado").getResultList();
    }

    @Override
    public List<Estado> getEstadosByPais(Long idPais) {
        return em.createQuery(String.format("select e from Estado e where e.pais.id = %d", idPais)).getResultList();
    }

    @Override
    @Transactional(readOnly = true)
    public Estado getEstadoById(Long id) {
        return em.find(Estado.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public Estado getEstadoByIdProxy(Long id) {
        return em.getReference(Estado.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Estado> findEstados(String name) {
        return em.createQuery(String.format("select e from Estado e where upper(e.estado) like ('%%%1$s%%') or upper(e.codigo) like('%%%1$s%%') order by e.estado", name.toUpperCase())).getResultList();
    }

    @Override
    @Transactional
    public void insert(Estado estado) {
        em.persist(estado);
    }

    @Override
    @Transactional
    public void update(Estado estado) {
        em.merge(estado);
    }

    @Override
    @Transactional
    public void delete(Estado estado) {
        em.remove(estado);
    }
}
