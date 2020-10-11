package com.xj.Service;

import java.util.List;

import com.xj.POJO.User;

public interface UserService {
	User UserLogin(User user);
	List<User> selectAllUser();
	void addUser(User user);
}
