package com.example.test.util;

import java.io.UnsupportedEncodingException;

import java.security.InvalidKeyException;

import java.security.KeyPair;

import java.security.KeyPairGenerator;

import java.security.NoSuchAlgorithmException;

import java.security.PrivateKey;

import java.security.PublicKey;

import java.security.SecureRandom;

import java.util.Base64;

import javax.crypto.BadPaddingException;

import javax.crypto.Cipher;

import javax.crypto.IllegalBlockSizeException;

import javax.crypto.NoSuchPaddingException;

public class CipherUtil {

    public static KeyPair genRSAKeyPair() throws NoSuchAlgorithmException {
        SecureRandom secureRandom = new SecureRandom();
        KeyPairGenerator gen;
        gen = KeyPairGenerator.getInstance("RSA");
        gen.initialize(1024, secureRandom);
        KeyPair keyPair = gen.genKeyPair();
        return keyPair;
    }
    /**
     * Public Key로 RSA 암호화를 수행합니다.
     * @param plainText 암호화할 평문입니다.
     * @param publicKey 공개키 입니다.
     * @return
     */
    public static String encryptRSA(String plainText, PublicKey publicKey)
            throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException,
                      BadPaddingException, IllegalBlockSizeException {
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.ENCRYPT_MODE, publicKey);
        byte[] bytePlain = cipher.doFinal(plainText.getBytes());
        String encrypted = Base64.getEncoder().encodeToString(bytePlain);
    	return encrypted;
    }
    /**
     * Private Key로 RAS 복호화를 수행합니다.
     *
     * @param encrypted 암호화된 이진데이터를 base64 인코딩한 문자열 입니다.
     * @param privateKey 복호화를 위한 개인키 입니다.
     * @return
     * @throws Exception
     */
    public static String decryptRSA(String encrypted, PrivateKey privateKey)
    		throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException,
    		         BadPaddingException, IllegalBlockSizeException, UnsupportedEncodingException {
        Cipher cipher = Cipher.getInstance("RSA");
        byte[] byteEncrypted = Base64.getDecoder().decode(encrypted.getBytes());
        cipher.init(Cipher.DECRYPT_MODE, privateKey);
        byte[] bytePlain = cipher.doFinal(byteEncrypted);
        String decrypted = new String(bytePlain, "utf-8");
        return decrypted;
    }

}

