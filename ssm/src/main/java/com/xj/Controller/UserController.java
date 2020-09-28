package com.xj.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xj.POJO.User;
import com.xj.Service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value="/Login.action",method=RequestMethod.POST)
	public String UserLogin(User user,Model model){
		User user2 = userService.UserLogin(user);
		String uull="";
		if(user2!=null){
			model.addAttribute("User", user2);
			uull="index";
		}else{
			model.addAttribute("errorMsg", "用户名密码错误");
			uull="error";
		}
		return uull;
	}
}
