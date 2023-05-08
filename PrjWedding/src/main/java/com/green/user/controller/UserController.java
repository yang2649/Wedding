package com.green.user.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService  userService;
	

	@RequestMapping("/User/WriteForm") 
	public  String  writeForm() {
		return "user/write";   // user/write.jsp
	}
	
	// DB 회원등록 -> 회원목록 패이지로 이동
	@RequestMapping("/User/Write")
	public  String write(  UserVo user, Model model ) {   // UserVo user <form> 넘겨준 정보(name 속성이 있는)  
		
		userService.insertUser( user );	
		return "user/join";

	}
	
	@RequestMapping("/User/Join")
	public String Join( ) {
		return "user/join";
	}


	
}


















