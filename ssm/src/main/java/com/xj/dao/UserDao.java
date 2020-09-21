package com.xj.dao;

import java.util.List;

import com.xj.POJO.User;

public interface UserDao {
	User selectUserById(Integer uid);
	List<User> selectAllUser();
	Integer addUser(User user);
	Integer updateUser(User user);
	Integer deleteUserById(Integer uid);
}
