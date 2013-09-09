package org.alejandria.web.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: @juanitodread
 * Date: 3/31/12
 * Time: 8:47 PM
 */

@Controller
public class IndexController{

    @Qualifier("indexService")
    @Autowired
    private IndexService service;

    public void setService(IndexService service){
        this.service = service;
    }

    @RequestMapping("/index")
    public ModelAndView getIndexView(ModelAndView mv){
        mv.setViewName("org/alejandria/web/index/index");
        mv.addObject("omoScript",service.getScript());
        mv.addObject("commentMsg",service.getMessage());
        return mv;
    }
}
