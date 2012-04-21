package org.alejandria.model.dao;

import org.alejandria.model.entity.Estado;

import java.util.List;

/**
 * User: @juanitodread
 * Date: 4/10/12
 * Time: 9:08 PM
 */
public interface EstadoDao {

    public List<Estado> getAllEstados();

    public Estado getEstadoById(Long id);
    
    public Estado getEstadoByIdProxy(Long id);

    public List<Estado> findEstados(String name);

    public void insert(Estado estado);

    public void update(Estado estado);

    public void delete(Estado estado);

}
