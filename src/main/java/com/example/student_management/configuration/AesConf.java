package com.example.student_management.configuration;

import jakarta.persistence.AttributeConverter;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.SerializationUtils;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.util.Base64;

@Log4j2
@Configuration
public class AesConf implements AttributeConverter<Object, String> {

    private final String encryptionCipher = "AES";

    private Key key;
    private Cipher cipher;

    private Key getKey() {
        if (key == null) {
            String encryptionKey = "this-is-test-key";
            key = new SecretKeySpec(encryptionKey.getBytes(), encryptionCipher);
            
            log.info("Key : {}", key.toString());
        }
        return key;
    }

//    NoSuchPaddingException, NoSuchAlgorithmException
    private Cipher getCipher() throws GeneralSecurityException {
        if (cipher == null) {
            cipher = Cipher.getInstance(encryptionCipher);
        }
        return cipher;
    }

    private void initCipher(int encryptMode) throws GeneralSecurityException {
        getCipher().init(encryptMode, getKey());
    }


    @SneakyThrows
    @Override
    public String convertToDatabaseColumn(Object attribute) {

        if (attribute == null) {
            return null;
        }

        initCipher(Cipher.ENCRYPT_MODE);
        byte[] bytes = SerializationUtils.serialize(attribute);
        log.info("Student password : {}", Base64.getEncoder().encodeToString(getCipher().doFinal(bytes)));
        return Base64.getEncoder().encodeToString(getCipher().doFinal(bytes));
    }

    @SneakyThrows
    @Override
    public Object convertToEntityAttribute(String data) {
        if (data == null) {
            return null;
        }

        initCipher(Cipher.DECRYPT_MODE);
        byte[] bytes = getCipher().doFinal(Base64.getDecoder().decode(data));

        log.info("Password is : {}", data);
        log.info("Password is : {}", SerializationUtils.deserialize(bytes));

        return SerializationUtils.deserialize(bytes);

    }

}
