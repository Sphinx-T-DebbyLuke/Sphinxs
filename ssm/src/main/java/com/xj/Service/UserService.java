package com.xj.Service;

import java.util.List;

import com.xj.POJO.User;

public interface UserService {
	User selectUserById(Integer uid);
	List<User> selectAllUser();
	Integer addUser(User user);
	Integer updateUser(User user);
	Integer deleteUserById(Integer uid);
}
