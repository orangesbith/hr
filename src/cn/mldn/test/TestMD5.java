package cn.mldn.test;

import cn.mldn.util.MD5Code;

public class TestMD5 {
	public static void main(String[] args) {
		// 在实际的开发之中为了考虑到密码的安全性问题，往往会采用盐值（salt）
		String salt = "bWxkbmphdmE=" ;
		String pwd = "hello" + "{!(" + salt + ")!}";
		String md5 = new MD5Code().getMD5ofStr(pwd) ;	// 加密
		System.out.println(md5);
		System.out.println(md5.length());
	}
}
