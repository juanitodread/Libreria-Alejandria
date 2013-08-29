package org.alejandria.web.admin.usuario;

import org.alejandria.model.dao.MunicipioDao;
import org.alejandria.model.dao.PaisDao;
import org.alejandria.model.dao.PreguntaSecretaDao;
import org.alejandria.model.dao.UsuarioDao;
import org.alejandria.model.entity.Pais;
import org.alejandria.model.entity.PreguntaSecreta;
import org.alejandria.model.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Juan
 * Date: 2/11/12
 * Time: 09:16 PM
 * To change this template use File | Settings | File Templates.
 */
@Component
public class UsuarioService {
    @Autowired
    private PreguntaSecretaDao preguntaSecretaDao;
    @Autowired
    private PaisDao paisDao;
    @Autowired
    private MunicipioDao municipioDao;
    @Autowired
    private UsuarioDao userDao;
    
    public void saveUser(Usuario user, long idSecretQuestion,
                         long idTown) {
        user.setMunicipio(municipioDao.getMunicipioByIdProxy(idTown));
        user.setPreguntaSecreta(preguntaSecretaDao.getPreguntaSecretaByIdProxy(idSecretQuestion));
        
        Usuario userSession = userDao.getUsuarioByIdProxy(1l);
        user.setUsuarioCreacion(userSession);
        user.setUsuarioActualizacion(userSession);
        
        userDao.insert(user);
    }

    public List<PreguntaSecreta> getAllPreguntasSecretas(){
        return preguntaSecretaDao.getAllPreguntasSecretas();
    }

    public List<Pais> getAllPaises(){
        return paisDao.getAllPaises();
    }

    public PreguntaSecretaDao getPreguntaSecretaDao() {
        return preguntaSecretaDao;
    }

    public void setPreguntaSecretaDao(PreguntaSecretaDao preguntaSecretaDao) {
        this.preguntaSecretaDao = preguntaSecretaDao;
    }
}
