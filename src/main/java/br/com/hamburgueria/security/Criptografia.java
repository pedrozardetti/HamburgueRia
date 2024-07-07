package br.com.hamburgueria.security;

import org.apache.commons.codec.binary.Hex;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Criptografia {

    // Fizemos este método para converter a senha em um Hash MD5. Ele é necessário para comparar a senha fornecida com a armazenada no BD.
    public static String converterParaMD5(String senha) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(senha.getBytes());
        byte[] digest = md.digest();
        String resultado = new String(Hex.encodeHex(digest));
        return resultado;
    }


}
