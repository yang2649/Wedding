package com.green.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class HomeController {
		
	@Autowired
	private  UserService  userService;
	
	@RequestMapping("/")   // root : http://localhost:9090/   
	public  String  home( ) {			
		return  "home";      // /WEB-INF/views/ home .jsp
	}
	
	// 유정 로그인
		@RequestMapping("/container")
		public  String  login() {
			return "user/login";
		}
		
		// 로그인체크
		@RequestMapping("/loginprocess")
		public  String  loginprocess(
			HttpSession   session,	
			@RequestParam HashMap<String, Object>  map
				) {
			
			String   returnURL = "";
			
			if( session.getAttribute("login") != null  ) {
				// 기존 login 정보가 존재한다면 
				session.removeAttribute("login");			
			}
			
			// 로그인 성공하면
			UserVo   vo = userService.getLogin( map );
			if ( vo != null  ) {
				session.setAttribute("login", vo);
				returnURL = "redirect:/";
			} else {
				returnURL = "redirect:/login";
			}
			
			return   returnURL;
			
		}
		
		// 로그아웃
		@RequestMapping("/logout") 
		public  String   logout ( HttpSession session ) {
			
			session.invalidate();
			
			return "redirect:/logout";
			
		}
		

		
	

}







