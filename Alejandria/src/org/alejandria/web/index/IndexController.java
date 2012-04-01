package org.alejandria.web.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: @juanitodread
 * Date: 3/31/12
 * Time: 8:47 PM
 */

@Controller
public class IndexController{

    @RequestMapping("/index.run")
    public String getIndexView(){
        return "org/alejandria/web/index/index";
    }
}
