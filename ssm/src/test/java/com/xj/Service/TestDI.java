package com.xj.Service;



import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDI {
	@Test
	public void TestService() {
		ApplicationContext appCon=new ClassPathXmlApplicationContext("applicationContext.xml");
		TestDIService service = (TestDIService)appCon.getBean("testDIServiceImpl");
		service.sayHello();
		TestDIService service1 = (TestDIService)appCon.getBean("testDIServiceImpl1");
		service1.sayHello();
	}
}
