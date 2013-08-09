package org.alejandria.web.ajax.querys;

import org.alejandria.model.dao.EstadoDao;
import org.alejandria.model.dao.MunicipioDao;
import org.alejandria.model.entity.Estado;
import org.alejandria.model.entity.Municipio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA. User: Juan Date: 2/11/12 Time: 10:17 PM To change
 * this template use File | Settings | File Templates.
 */
@Controller
public class AjaxQueryController {

    @Autowired
    private EstadoDao    estadoDao;
    @Autowired
    private MunicipioDao municipioDao;

    @RequestMapping(value = "/ajaxQueryLoadStatesFromCountry", method = RequestMethod.GET)
    public @ResponseBody
    String loadStatesFromCountry(@RequestParam Long idPais) {
        List<Estado> estados = estadoDao.getEstadosByPais(idPais);
        StringBuilder sb = new StringBuilder("{\"options\":[");
        for (Estado est : estados) {
            sb.append("{\"key\" : ");
            sb.append(est.getId());
            sb.append(", \"value\" : \"");
            sb.append(est.getEstado());
            sb.append("\"}");
        }
        sb.append("]}");
        return sb.toString();
    }

    @RequestMapping(value = "/ajaxQueryLoadSCitiesFromState", method = RequestMethod.GET)
    public @ResponseBody
    String loadSCitiesFromState(@RequestParam Long idState) {
        List<Municipio> municipios = municipioDao
                .getMunicipiosByEstado(idState);
        StringBuilder sb = new StringBuilder("{\"options\":[");
        for (Municipio mun : municipios) {
            sb.append("{\"key\" : ");
            sb.append(mun.getId());
            sb.append(", \"value\" : \"");
            sb.append(mun.getMunicipio());
            sb.append("\"}");
        }
        sb.append("]}");
        return sb.toString();
    }

}
