/**
 * Librería Alejandría
 * 
 * Copyright 2013 juanitodread
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 */
package org.alejandria.web.ajax.querys;

import org.alejandria.model.dao.EstadoDao;
import org.alejandria.model.dao.MunicipioDao;
import org.alejandria.model.dao.UsuarioDao;
import org.alejandria.model.entity.Estado;
import org.alejandria.model.entity.Municipio;
import org.alejandria.model.entity.Usuario;
import org.alejandria.web.view.JQueryGridPage;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

/**
*
*
* @author juanitodread
* @version 1.0
* Aug 26, 2013
*/
@Controller
@RequestMapping("/ajax")
public class AjaxQueryController {

    @Autowired
    private EstadoDao    estadoDao;
    @Autowired
    private MunicipioDao municipioDao;
    @Autowired
    private UsuarioDao usuarioDao;
    
    @RequestMapping(value = "/loadStatesFromCountry", method = RequestMethod.GET)
    public @ResponseBody
    List<Estado> loadStatesFromCountry(@RequestParam Long idCountry) {
        List<Estado> estados = estadoDao.getEstadosByPais(idCountry);
        return estados;
    }

    @RequestMapping(value = "/loadCitiesFromState", method = RequestMethod.GET)
    public @ResponseBody
    List<Municipio> loadSCitiesFromState(@RequestParam Long idState) {
        List<Municipio> municipios = municipioDao
                .getMunicipiosByEstado(idState);
        return municipios;
    }
    
    @RequestMapping(value = "/getAllUsers", method = RequestMethod.GET)
    public @ResponseBody
    JQueryGridPage<Usuario> getAllUsers(@RequestParam int page, @RequestParam int rows) {
        System.out.println(page + " - " + rows);
        int countRows = usuarioDao.getUsersCount();
        final int startIdx = (page - 1) * rows;
        final int endIdx = Math.min(startIdx + rows, countRows);
        int totalPages = (int) (rows < countRows ? Math.ceil(1.0 * countRows / rows) : page);
        
        List<Usuario> usuarios = usuarioDao.getSetOfUsers(startIdx, endIdx);
        return new JQueryGridPage<Usuario>(page, countRows, totalPages, usuarios);
    }

}
