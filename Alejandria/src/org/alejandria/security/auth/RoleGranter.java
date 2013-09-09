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

import java.security.Principal;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.security.authentication.jaas.AuthorityGranter;

/**
 *
 *
 * @author juanitodread
 * @version 1.0
 * Sep 3, 2013
 */
public class RoleGranter implements AuthorityGranter {
    
    private static final Set<String> adminUsers = new HashSet<String>(Arrays.asList("marcestarlet", "juanitodread"));

    @Override
    public Set<String> grant(Principal principal) {               
        if(adminUsers.contains(principal.getName())) {
            return Collections.singleton("ADMIN");
        } else {
            return Collections.singleton("CUSTOMER");
        }
    }

}
