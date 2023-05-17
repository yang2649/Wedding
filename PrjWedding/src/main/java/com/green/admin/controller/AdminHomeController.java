package com.green.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;

@Controller
public class AdminHomeController {
		
	@Autowired
	private  UserService  userService;
	
	@RequestMapping("/")   // root : http://localhost:9090/   
	public  String  home( ) {			
		return  "home";      // /WEB-INF/views/ home .jsp
	}
	
	@RequestMapping("/adminhome")
	public String adminhome() {
		return "adminhome";
	}



		
	
	
}







