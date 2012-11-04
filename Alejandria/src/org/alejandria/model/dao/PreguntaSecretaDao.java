package org.alejandria.model.dao;

import org.alejandria.model.entity.PreguntaSecreta;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Juan
 * Date: 2/11/12
 * Time: 09:08 PM
 * To change this template use File | Settings | File Templates.
 */
public interface PreguntaSecretaDao {

    public List<PreguntaSecreta> getAllPreguntasSecretas();

    public PreguntaSecreta getPreguntaSecretaById(Long id);

    public PreguntaSecreta getPreguntaSecretaByIdProxy(Long id);

    public List<PreguntaSecreta> findPreguntasSecretas(String name);

    public void insert(PreguntaSecreta preguntaSecreta);

    public void update(PreguntaSecreta preguntaSecreta);

    public void delete(PreguntaSecreta preguntaSecreta);

}
