package com.power.br.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.power.br.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/getAllUser")
	public String getAllUser(HttpServletRequest request){
		request.setAttribute("userList", userService.getUserList());
		return "/index";
	}
	
	
}