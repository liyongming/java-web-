package util;

import sun.misc.BASE64Encoder;

import java.security.MessageDigest;

/**
 * Created by Administrator on 2017/8/19.
 */
public class MD5 {
    /**
     * 使用MD5的方式加密
     * @param pass
     * @return
     * @throws Exception
     */
    public static String MD5a(String pass) throws Exception{
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        BASE64Encoder base64en = new BASE64Encoder();
        String newstr=base64en.encode(md5.digest(pass.getBytes("utf-8")));
        return newstr;
    }
}
