package org.alejandria.web.admin.usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by IntelliJ IDEA.
 * User: marce
 * Date: 4/20/12
 * Time: 9:49 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class UsuarioController{

    @Autowired
    private UsuarioService service;

    @RequestMapping("/usuario.run")
    public ModelAndView getUsuarioView(ModelAndView mv){
        mv.setViewName("org/alejandria/web/admin/usuario/usuario");
        mv.addObject("preguntasSecretas", service.getAllPreguntasSecretas());
        mv.addObject("paises", service.getAllPaises());

        return mv;
    }

    public UsuarioService getService() {
        return service;
    }

    public void setService(UsuarioService service) {
        this.service = service;
    }
}
