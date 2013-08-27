package org.alejandria.web.index;

import org.alejandria.model.dao.PaisDao;
import org.alejandria.model.dao.UsuarioDao;
import org.alejandria.model.entity.Pais;
import org.alejandria.model.entity.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * User: @juanitodread
 * Date: 4/11/12
 * Time: 12:43 AM
 */
@Component
public class IndexService {

    @Autowired
    private PaisDao paisDao;
    @Autowired
    private UsuarioDao usuarioDao;
    
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    public void setDao(PaisDao paisDao){
       this.paisDao = paisDao;
    }
    
    public void setUsuarioDao(UsuarioDao usuarioDao){
       this.usuarioDao = usuarioDao; 
    }
    
    public void deletePais(Pais p){
        paisDao.delete(p);
    }
    
    public void updatePais(Pais p){
        paisDao.update(p);
    }
    
    public void savePais(Pais p){
        Usuario usr = usuarioDao.getUsuarioById(1L);
        p.setUsuarioCreacion(usr);
        p.setUsuarioActualizacion(usr);
        paisDao.insert(p);
    }

    public List<Pais> findPaises(String name){
        return paisDao.findPaises(name);
    }
    
    public Pais getPaisById(Long id){
        return paisDao.getPaisById(id);
    }
    
    public List<Pais> getPaises(){
        log.info("get paises..");
        return paisDao.getAllPaises();
    }

}
