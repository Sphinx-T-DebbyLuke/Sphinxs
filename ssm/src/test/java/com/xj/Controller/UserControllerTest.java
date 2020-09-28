package com.xj.Controller;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserControllerTest {
	@Test
	public void test(){
		ApplicationContext appCon=new ClassPathXmlApplicationContext("applicationContext.xml");
				//UserController uc=(UserController)appCon.getBean ("userController") ;
				//uc.test();
	}
}
