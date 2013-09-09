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
package org.alejandria.security.crypto;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/**
 * Crypto utilities
 * 
 * @author juanitodread
 * @version 1.0
 * @since Sep 3, 2013
 */
public class CryptoUtil {

    private static final String RANDOM_ALGORITHM      = "SHA1PRNG";

    private static final String PBKDF2_SHA1_ALGORITHM = "PBKDF2WithHmacSHA1";

    /**
     * This method generates a secure key using the Password-Based Key
     * Derivation Function function.
     * 
     * @param key
     *            Is the passphrase used in the process
     * @param salt
     *            Is the salt used to generate the secret key (64 bit is
     *            recommended)
     * @param iterations
     *            Is the number of iterations (10000 is recommended)
     * @param derivedKeyLength
     *            Is the length of the key generated (160 is recommended - SHA1)
     * @return A SecretKey
     */
    public static byte[] generateSecureKeyToByte(String key, byte[] salt,
            int iterations, int derivedKeyLength) {
        SecretKey secretKey = null;
        secretKey = generateSecureKey(key, salt, iterations, derivedKeyLength);
        return secretKey.getEncoded();
    }

    /**
     * This method generates a secure key using the Password-Based Key
     * Derivation Function function.
     * 
     * @param key
     *            Is the passphrase used in the process
     * @param salt
     *            Is the salt used to generate the secret key (64 bit is
     *            recommended)
     * @param iterations
     *            Is the number of iterations (10000 is recommended)
     * @param derivedKeyLength
     *            Is the length of the key generated (160 is recommended - SHA1)
     * @return A SecretKey
     */
    public static SecretKey generateSecureKey(String key, byte[] salt,
            int iterations, int derivedKeyLength) {
        SecretKey secretKey = null;
        KeySpec spec = new PBEKeySpec(key.toCharArray(), salt, iterations,
                derivedKeyLength);
        SecretKeyFactory factory;
        try {
            factory = SecretKeyFactory.getInstance(PBKDF2_SHA1_ALGORITHM);
            secretKey = factory.generateSecret(spec);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (InvalidKeySpecException e) {
            e.printStackTrace();
        }
        return secretKey;
    }

    /**
     * This method generates a random salt using a SecureRandom number with
     * SHA1PRNG algorithm.
     * 
     * @param bits
     *            The number of bits of the generated salt.
     * @return An array of n bytes with the generated salt.
     * @throws NoSuchAlgorithmException
     */
    public static byte[] generateSalt(int bits) {
        byte[] salt = new byte[bits / 8];
        SecureRandom random = null;
        try {
            random = SecureRandom.getInstance(RANDOM_ALGORITHM);
            random.nextBytes(salt);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return salt;
    }
}
