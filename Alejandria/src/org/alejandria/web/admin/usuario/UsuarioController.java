package org.alejandria.web.admin.usuario;

import org.alejandria.model.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by IntelliJ IDEA.
 * User: marce
 * Date: 4/20/12
 * Time: 9:49 PM
 * To change this template use File | Settings | File Templates.
 */

@Controller
@RequestMapping("/user")
public class UsuarioController{

    @Autowired
    private UsuarioService service;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getUsuarioView(ModelAndView mv){
        mv.setViewName("org/alejandria/web/admin/usuario/usuario");
        mv.addObject("secretQuestions", service.getAllPreguntasSecretas());
        mv.addObject("countries", service.getAllPaises());

        return mv;
    }
    
    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public ModelAndView saveUser(@RequestParam String txtName, 
                                 @RequestParam String txtFirstNameP,
                                 @RequestParam String txtFirstNameM, 
                                 @RequestParam String txtEmail, 
                                 @RequestParam String txtUsername, 
                                 @RequestParam String txtPassword, 
                                 @RequestParam long cmbSecretQuestion, 
                                 @RequestParam String txtSecretAnswer, 
                                 @RequestParam long cmbTown, 
                                 ModelAndView mv) {
        Usuario user = new Usuario();
        user.setNombre(txtName);
        user.setaPaterno(txtFirstNameP);
        user.setaMaterno(txtFirstNameM);
        user.setEmail(txtEmail);
        user.setUser(txtUsername);
        user.setPassword(txtPassword);
        user.setRespuestaSecreta(txtSecretAnswer);
        
        service.saveUser(user, cmbSecretQuestion, cmbTown);
        
        return getUsuarioView(mv);
    }

    public UsuarioService getService() {
        return service;
    }

    public void setService(UsuarioService service) {
        this.service = service;
    }
}
