package test;

import org.junit.Test;
import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

/**
 * Created by Administrator on 2017/8/19.
 */
public class MD5Test {
    @Test
    public void testMd5() throws Exception{
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        BASE64Encoder base64en = new BASE64Encoder();
        String newstr=base64en.encode(md5.digest("liyongming".getBytes("utf-8")));
        System.out.println("加密后的密码"+newstr);
    }
}
