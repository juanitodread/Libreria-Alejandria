package org.alejandria.model.dao;

import org.alejandria.model.entity.Usuario;

import java.util.List;

/**
 * User: @juanitodread
 * Date: 4/10/12
 * Time: 9:09 PM
 */
public interface UsuarioDao {

    public List<Usuario> getAllUsuarios();

    public Usuario getUsuarioById(Long id);
    
    public Usuario getUsuarioByUsername(String username);
    
    public Usuario getUsuarioByIdProxy(Long id);

    public List<Usuario> findUsuarios(String name);

    public void insert(Usuario usuario);

    public void update(Usuario usuario);

    public void delete(Usuario usuario);

    public List<Usuario> getSetOfUsers(int start, int maxRows);

    public int getUsersCount();
    
    public boolean authenticateUser(String username, String password);

}
