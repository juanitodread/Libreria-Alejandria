package org.alejandria.model.dao;

import org.alejandria.model.entity.Municipio;

import java.util.List;

/**
 * User: @juanitodread
 * Date: 4/10/12
 * Time: 9:08 PM
 */
public interface MunicipioDao {

    public List<Municipio> getAllMunicipios();

    public Municipio getMunicipioById(Long id);
    
    public Municipio getMunicipioByIdProxy(Long id);

    public List<Municipio> findMuncipios(String name);

    public void insert(Municipio municipio);

    public void update(Municipio municipio);

    public void delete(Municipio municipio);

}
