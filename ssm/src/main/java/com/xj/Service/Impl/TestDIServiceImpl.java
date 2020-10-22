package com.xj.Service.Impl;

import com.xj.Service.TestDIService;
import com.xj.dao.TestDIDao;

public class TestDIServiceImpl implements TestDIService {
	private TestDIDao testDIDao;
	public TestDIServiceImpl(TestDIDao testDIDao) {
		super();
		this.testDIDao=testDIDao;
	}
	@Override
	public void sayHello() {
		testDIDao.sayHello();
		System.out.println("TestDIService 构造方法注入 say : Hello , Study hard !");
	}

}
