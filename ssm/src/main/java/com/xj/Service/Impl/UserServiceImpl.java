package com.xj.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xj.POJO.User;
import com.xj.Service.UserService;
import com.xj.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User UserLogin(User user) {
		return userDao.UserLogin(user);
	}
	@Override
	public List<User> selectAllUser() {
		return userDao.selectAllUser();
	}
	@Override
	public void addUser(User user) {
		userDao.addUser(user);;
	}

}
