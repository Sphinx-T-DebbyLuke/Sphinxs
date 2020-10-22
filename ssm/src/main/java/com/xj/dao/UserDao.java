package com.xj.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xj.POJO.User;

@Repository
public interface UserDao {
	User UserLogin(User user);
	List<User> selectAllUser();
	void addUser(User user);
}
