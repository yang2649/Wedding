package com.green.user.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService  userService;
	
	// 회원가입
	@RequestMapping("/User/WriteForm") 
	public  String  writeForm() {
		return "user/write";   // user/write.jsp
	}
	
	@RequestMapping("/User/Write")
	public  String write(  UserVo user, Model model ) {   // UserVo user <form> 넘겨준 정보(name 속성이 있는)  
		
		userService.insertUser( user );	
		return "user/join";
	}	
	
	@RequestMapping("/User/Join")
	public String Join( ) {
		return "user/join";
	}
	
	// 회원 목록 조회
	@RequestMapping("/User/List")
	public  String  list( Model model ) {
		
	List userList = userService.getUserList(); 
		
	System.out.println("조회된 시용자 목록:" + userList );
		
	model.addAttribute("uList", userList);

		return "user/list";   
	}
	
	// 유정 로그인
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
			UserVo   userVo = userService.getLogin( map );
			if ( userVo != null  ) {
				session.setAttribute("login", userVo);
				System.out.println("로그인:" + userVo );
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
				
		// 내 정보 보기
		@RequestMapping("/User/View")    
		public ModelAndView getUser(HttpSession session) {

			UserVo user = (UserVo) session.getAttribute("login");
			HashMap<String, Object> map = (HashMap<String, Object>) session.getAttribute("map");

			System.out.println( "view user :" + user );
			System.out.println( "view map:" + map );

			ModelAndView mv = new ModelAndView();
			mv.addObject("user", user);
			mv.addObject("map", map);
			mv.setViewName("user/view");	


			return mv;
		}

		// 내 정보 수정
		@RequestMapping("/User/UpdateForm")    
		public ModelAndView updateForm(HttpSession session) {

			UserVo user = (UserVo) session.getAttribute("login");

			ModelAndView mv = new ModelAndView();
			mv.addObject("user", user);
			mv.setViewName("user/update");	

			return mv;
		}

		@RequestMapping("/User/Update")
		public ModelAndView updateUser(
				HttpSession   session,	
				@RequestParam HashMap<String, Object>  map) {

			UserVo user = (UserVo) session.getAttribute("login");
			userService.updateUser( map );

			ModelAndView mv = new ModelAndView();	
			session.setAttribute("login", userService.getUser( map ));
			System.out.println( "update 후 user:" + user );
			System.out.println( "update 후 map:" + map );

			mv.setViewName("redirect:/User/View");

			return mv;
		}

				

		
}


















