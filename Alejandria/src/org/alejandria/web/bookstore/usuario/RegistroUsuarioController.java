package org.alejandria.web.bookstore.usuario;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by IntelliJ IDEA.
 * User: marce
 * Date: 4/21/12
 * Time: 12:32 AM
 * To change this template use File | Settings | File Templates.
 */

@Controller
public class RegistroUsuarioController {

    @RequestMapping("/registroUsuario.run")
    public ModelAndView getRegistroUsuarioView(ModelAndView mv){
        mv.setViewName("org/alejandria/web/bookstore/usuario/registroUsuario");
        return mv;
    }
}
