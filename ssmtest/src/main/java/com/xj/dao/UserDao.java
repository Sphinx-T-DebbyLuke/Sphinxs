package com.xj.dao;

import com.xj.POJO.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
	User UserLogin(User user);
	List<User> selectAllUser();
	void addUser(User user);
	Integer deleteUser(Integer id);
	User selectUserById(Integer id);
	Integer UpdateUser(User user);
}
