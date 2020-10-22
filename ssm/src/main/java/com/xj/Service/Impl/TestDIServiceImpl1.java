package com.xj.Service.Impl;

import com.xj.Service.TestDIService;
import com.xj.dao.TestDIDao;

public class TestDIServiceImpl1 implements TestDIService{
	private TestDIDao testDIDao;
	public void setTestDIDao(TestDIDao testDIDao) {
		this.testDIDao = testDIDao;
	}
	@Override
	public void sayHello() {
		testDIDao.sayHello();
		System.out.println("TestDIService1 setter方法注入 say : Hello , Study hard !");
	}
}
