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
package org.alejandria.util;

/**
 * This is a utility class for Alejandr�a:
 *
 * @author juanitodread
 * @version $
 * Sep 8, 2013 
 */ 
public class Util {

    /**
     * Is the size in bits for secure password. 160 bits is the size of SHA1
     */
    public static final int PASSWORD_LENGTH = 160;
    
    /**
     * Is the size in bits for random salt.
     */
    public static final int SALT_LENGTH = 64;
    
    /**
     * Is the number of iterations applied over digest algorithm.
     */
    public static final int PASSWORD_ITERATIONS_ALGORITHM = 20000;
}
