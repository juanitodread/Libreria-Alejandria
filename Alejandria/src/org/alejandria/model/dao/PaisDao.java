package org.alejandria.model.dao;

import org.alejandria.model.entity.Pais;

import java.util.List;

/**
 * User: @juanitodread
 * Date: 4/10/12
 * Time: 9:07 PM
 */
public interface PaisDao {

    public List<Pais> getAllPaises();
    
    public Pais getPaisById(Long id);
    
    public List<Pais> findPaises(String name);

    public void insert(Pais pais);
    
    public void update(Pais pais);

    public void delete(Pais pais);

}
