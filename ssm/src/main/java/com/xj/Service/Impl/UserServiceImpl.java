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
	public User selectUserById(Integer uid) {
		return userDao.selectUserById(uid);
	}

	@Override
	public List<User> selectAllUser() {
		return userDao.selectAllUser();
	}

	@Override
	public Integer addUser(User user) {
		return userDao.addUser(user);
	}

	@Override
	public Integer updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public Integer deleteUserById(Integer uid) {
		return userDao.deleteUserById(uid);
	}

}
