package cn.mldn.test;

import java.util.Base64;

public class TestBase64 {
	public static void main(String[] args) {
		Base64.Encoder enc = Base64.getEncoder() ;
		System.out.println(enc.encodeToString("mldnjava".getBytes()));
	}
}
