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
package org.alejandria.security.auth;

import java.io.IOException;
import java.util.Map;

import javax.security.auth.Subject;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.NameCallback;
import javax.security.auth.callback.PasswordCallback;
import javax.security.auth.callback.UnsupportedCallbackException;
import javax.security.auth.login.LoginException;
import javax.security.auth.spi.LoginModule;

import org.alejandria.util.ApplicationContextProvider;
import org.alejandria.web.admin.usuario.UsuarioService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

/**
 *
 *
 * @author juanitodread
 * @version 1.0
 * Sep 2, 2013
 */
@Component
public class JAASLocalAuthModule implements LoginModule {

    private CallbackHandler handler;
    private Subject subject;
    private UserPrincipal userPrincipal;
    private RolePrincipal rolePrincipal;
    
    UsuarioService userService;
    
    @Override
    public void initialize(Subject subject, CallbackHandler callbackHandler,
            Map<String, ?> sharedState, Map<String, ?> options) {
        this.subject = subject;
        this.handler = callbackHandler;
    }

    @Override
    public boolean login() throws LoginException {
        Callback[] callbacks = new Callback[2];
        callbacks[0] = new NameCallback("user");
        callbacks[1] = new PasswordCallback("password", true);
        
        try {
            this.handler.handle(callbacks);
            
            String user = ((NameCallback) callbacks[0]).getName();
            String password = String.valueOf(((PasswordCallback) callbacks[1]).getPassword());
            
            if(user != null && password != null) {
                //manage user and password with database  
                ApplicationContext ctx = ApplicationContextProvider.getSpringApplicationContext();
                
                userService = ctx.getBean(UsuarioService.class);
                if(userService.authenticateUser(user, password)) {   
                   subject.getPrincipals().add(new UserPrincipal(user));
                   return true;
                }
            }
        } catch(IOException ex) {
            ex.printStackTrace();
            throw new LoginException(ex.getMessage());
        } catch (UnsupportedCallbackException ex) {
            throw new LoginException(ex.getMessage());
        }
        return false;
    }

    @Override
    public boolean commit() throws LoginException {  
        return true;
    }

    @Override
    public boolean abort() throws LoginException {
        return false;
    }

    @Override
    public boolean logout() throws LoginException {
        if(subject != null) {
            subject.getPrincipals().remove(userPrincipal);
            subject.getPrincipals().remove(rolePrincipal);
        }
        
        return true;
    }

}
