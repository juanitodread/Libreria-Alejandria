package org.alejandria.web.admin.usuario;

import org.alejandria.model.dao.MunicipioDao;
import org.alejandria.model.dao.PaisDao;
import org.alejandria.model.dao.PreguntaSecretaDao;
import org.alejandria.model.dao.UsuarioDao;
import org.alejandria.model.entity.Pais;
import org.alejandria.model.entity.PreguntaSecreta;
import org.alejandria.model.entity.Usuario;
import org.alejandria.security.crypto.CryptoUtil;
import org.alejandria.util.Util;
import org.alejandria.util.encodecs.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created with IntelliJ IDEA. User: Juan Date: 2/11/12 Time: 09:16 PM To change
 * this template use File | Settings | File Templates.
 */
@Component
public class UsuarioService {
    @Autowired
    private PreguntaSecretaDao preguntaSecretaDao;
    @Autowired
    private PaisDao            paisDao;
    @Autowired
    private MunicipioDao       municipioDao;
    @Autowired
    private UsuarioDao         userDao;

    public void saveUser(Usuario user, long idSecretQuestion, long idTown, String admin) {
        user.setMunicipio(municipioDao.getMunicipioByIdProxy(idTown));
        user.setPreguntaSecreta(preguntaSecretaDao
                .getPreguntaSecretaByIdProxy(idSecretQuestion));

        Usuario userSession = userDao.getUsuarioByUsername(admin);
        user.setUsuarioCreacion(userSession);
        user.setUsuarioActualizacion(userSession);

        // secure password
        byte[] salt = CryptoUtil.generateSalt(Util.SALT_LENGTH);
        String salt64 = Base64.encodeToString(salt);
        String pass64 = Base64.encodeToString(CryptoUtil
                .generateSecureKeyToByte(user.getPassword(), salt,
                        Util.PASSWORD_ITERATIONS_ALGORITHM,
                        Util.PASSWORD_LENGTH));
        user.setPassword(pass64);
        user.setSalt(salt64);
        
     // secure password
        String secretAnswer64 = Base64.encodeToString(CryptoUtil
                .generateSecureKeyToByte(user.getRespuestaSecreta(), salt,
                        Util.PASSWORD_ITERATIONS_ALGORITHM,
                        Util.PASSWORD_LENGTH));
        user.setRespuestaSecreta(secretAnswer64);

        userDao.insert(user);
    }

    public List<PreguntaSecreta> getAllPreguntasSecretas() {
        return preguntaSecretaDao.getAllPreguntasSecretas();
    }

    public List<Pais> getAllPaises() {
        return paisDao.getAllPaises();
    }

    public PreguntaSecretaDao getPreguntaSecretaDao() {
        return preguntaSecretaDao;
    }

    public void setPreguntaSecretaDao(PreguntaSecretaDao preguntaSecretaDao) {
        this.preguntaSecretaDao = preguntaSecretaDao;
    }
    
    public boolean authenticateUser(String username, String password) {
        return userDao.authenticateUser(username, password);
    }
}
