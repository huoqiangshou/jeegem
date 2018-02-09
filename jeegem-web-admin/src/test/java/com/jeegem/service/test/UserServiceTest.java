package com.jeegem.service.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.jeegem.user.service.UserService;


public class UserServiceTest extends BaseJunitTest {
	
	@Autowired
	private UserService userService;
	
	@Test  
    public void test0(){
		System.out.println(userService);
    }  
	
}
