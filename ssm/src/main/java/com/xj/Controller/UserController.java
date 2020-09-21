package com.xj.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.xj.POJO.User;
import com.xj.Service.UserService;

@Controller("userController")
public class UserController {
	@Autowired
	private UserService userService;
	public void test(){
		//查询一个用户
		User auser=userService.selectUserById(1);
		System.out.println (auser);
		System.out.println ("================");
		//添加一个用户
		User addmu=new User() ;
		addmu.setUname("陈成");
		addmu.setUsex("男");
		int add=userService.addUser(addmu);
		System.out.println("添加了"+add+"条记录");
		System.out.println ("================");
		//修改一个用户
		User updatemu=new User ();
		updatemu.setUid(1);
		updatemu.setUname("李四");
		updatemu.setUsex("女");
		int up=userService.updateUser(updatemu);
		System.out.println("修改了"+up+"条记录");
		System.out.println ("================");
		//删除一个用户
		int dl=userService.deleteUserById(9);
		System.out.println("删除了"+dl+"条记录");
		System.out.println ("================");
		//查询所有用户
		List<User> list=userService.selectAllUser();
		for (User myUser : list) {
		System.out.println (myUser) ;
		}
	}
}
