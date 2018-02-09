package com.jeegem.user.manager;

import junit.framework.TestCase;

public class TestUserManager extends TestCase {
	
	public void testPwd(){
		String s = UserManager.md5Pswd("admin","123123");
		System.out.println(s);
	}
}
