package org.alejandria.model.dao;

import org.alejandria.model.entity.Municipio;
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
public class MunicipioDaoImp implements MunicipioDao{

    private EntityManager em = null;

    @PersistenceContext
    public void setEm(EntityManager em){
        this.em = em;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Municipio> getAllMunicipios() {
        return em.createQuery("select m from Municipio m order by m.municipio").getResultList();
    }

    @Override
    @Transactional(readOnly = true)
    public Municipio getMunicipioById(Long id) {
        return em.find(Municipio.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public Municipio getMunicipioByIdProxy(Long id) {
        return em.getReference(Municipio.class, id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Municipio> findMuncipios(String name) {
        return em.createQuery(String.format("select m from Municipio m where upper(m.municipio) like ('%%%1$s%%') or upper(m.codigo) like('%%%1$s%%') order by m.municipio", name.toUpperCase())).getResultList();
    }

    @Override
    @Transactional
    public void insert(Municipio municipio) {
        em.persist(municipio);
    }

    @Override
    @Transactional
    public void update(Municipio municipio) {
        em.merge(municipio);
    }

    @Override
    public void delete(Municipio municipio) {
        em.remove(municipio);
    }
}
