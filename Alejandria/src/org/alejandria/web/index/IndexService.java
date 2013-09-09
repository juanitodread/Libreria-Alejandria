package org.alejandria.web.index;

import org.alejandria.model.dao.PaisDao;
import org.alejandria.model.dao.UsuarioDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * User: @juanitodread
 * Date: 4/11/12
 * Time: 12:43 AM
 */
@Component
public class IndexService {

    @Autowired
    private PaisDao paisDao;
    @Autowired
    private UsuarioDao usuarioDao;
    
    private final Logger log = LoggerFactory.getLogger(this.getClass());
    
    public String getScript(){
        String script = null;
        try{
            //method to get the script (sql, file properties, Web service)
            script = "javascript: function src(){ var obj = document.getElementById('imgMonthBook'); obj.style.height = '220px'; obj.style.width = '200px'; } src();";
            //script = "javascript: alert('My Malicious Code is in your site');";
        }catch(Exception e){
            //printException
        }
        return script;
        //return StringEscapeUtils.escapeEcmaScript(script);
    }
    
    public String getMessage(){
        String message = null;
        try{
            //method to get the message (sql, file properties, Web service)
            message = "To write <strong>Bold Type</strong> write code between < strong >< /strong > tags.";
            //message = "<script>alert('My Malicious Code is in your site');</script>";
        }catch(Exception e){
            //printException
        }
        return message;
        //return StringEscapeUtils.escapeXml(message);
    }
}
