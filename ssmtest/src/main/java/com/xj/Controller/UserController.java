package com.xj.Controller;

import com.xj.POJO.User;
import com.xj.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/User")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/toLogin.do")
	private String toLogin(@ModelAttribute User user){
		return "forward:/login.jsp";
	}

	@RequestMapping(value="/Login.do",method=RequestMethod.POST)
	public String UserLogin(@Valid @ModelAttribute User user, BindingResult result, HttpServletRequest request){
		if(result.hasErrors()){
			return "forward:/login.jsp";
		}
		User user2 = userService.UserLogin(user);
		String uull="";
		if(user2!=null){
			request.getSession().setAttribute("User",user2);
			uull="index";
		}else{
			request.getSession().setAttribute("errMsg","用户名密码错误");
			uull="forward:/login.jsp";
		}
		return uull;
	}
	@RequestMapping(value = "/logout.do")
	private String logout(HttpServletRequest request,@ModelAttribute User user){
		request.getSession().setAttribute("User",null);
		request.getSession().setAttribute("errMsg",null);
		return "forward:/login.jsp";
	}

}
