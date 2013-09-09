<<<<<<< HEAD
package org.alejandria.web.admin.usuario;

import org.alejandria.model.entity.Usuario;
import org.apache.commons.lang3.StringEscapeUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
@RequestMapping("/admin/user")
public class UsuarioController {
    
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UsuarioService service;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getUsuarioView(ModelAndView mv){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        mv.addObject("username", auth.getName());
        
        
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
        log.info("Creating User...");
        Usuario user = new Usuario();
        user.setNombre(StringEscapeUtils.escapeHtml4(txtName));
        user.setaPaterno(StringEscapeUtils.escapeHtml4(txtFirstNameP));
        user.setaMaterno(StringEscapeUtils.escapeHtml4(txtFirstNameM));
        user.setEmail(StringEscapeUtils.escapeHtml4(txtEmail));
        user.setUser(StringEscapeUtils.escapeHtml4(txtUsername));
        user.setPassword(StringEscapeUtils.escapeHtml4(txtPassword));
        user.setRespuestaSecreta(StringEscapeUtils.escapeHtml4(txtSecretAnswer));
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        service.saveUser(user, cmbSecretQuestion, cmbTown, auth.getName());
        
        return getUsuarioView(mv);
    }

    public UsuarioService getService() {
        return service;
    }

    public void setService(UsuarioService service) {
        this.service = service;
    }
}
=======
package org.alejandria.web.admin.usuario;

import org.alejandria.model.entity.Usuario;
import org.apache.commons.lang3.StringEscapeUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    
    private final Logger log = LoggerFactory.getLogger(this.getClass());

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
        log.info("Creating User...");
        Usuario user = new Usuario();
        user.setNombre(StringEscapeUtils.escapeHtml4(txtName));
        user.setaPaterno(StringEscapeUtils.escapeHtml4(txtFirstNameP));
        user.setaMaterno(StringEscapeUtils.escapeHtml4(txtFirstNameM));
        user.setEmail(StringEscapeUtils.escapeHtml4(txtEmail));
        user.setUser(StringEscapeUtils.escapeHtml4(txtUsername));
        user.setPassword(StringEscapeUtils.escapeHtml4(txtPassword));
        user.setRespuestaSecreta(StringEscapeUtils.escapeHtml4(txtSecretAnswer));
        
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
>>>>>>> master
