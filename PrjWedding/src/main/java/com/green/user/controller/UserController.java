package com.green.user.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
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


	// 회원삭제
	@RequestMapping("/User/Delete")
	public String delete(String memid) {

		// 삭제
		userService.deleteUser(memid);

		return "redirect:/User/List";
	}
	
	// 관리자 회원삭제
	@RequestMapping("/User/AdminDelete")
	public String adminDelete(String memid) {

		// 삭제
		userService.deleteUser(memid);

		return "redirect:/Adminpage/Meminfomanager";
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
			UserVo userVo = userService.getLogin(map);
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
					.getRequest();
			String memid = request.getParameter("memid");
			if (userVo != null) {
				if (memid.equals("admin")) {
					session.setAttribute("login", userVo);
					System.out.println("로그인: " + userVo);
					returnURL = "redirect:/adminhome";
				} else {
					session.setAttribute("login", userVo);
					System.out.println("로그인: " + userVo);
					returnURL = "redirect:/";
				}
			} else {
				returnURL = "redirect:/login";
			}
			return returnURL;
		}

		
	  // 로그아웃
	  @RequestMapping("/logout")
	  public String logout(HttpSession session) {
		  
	  	session.removeAttribute("login");
	  	
		return "redirect:/";
	  }
				
		// 내 정보 보기
		@RequestMapping("/Mypage01")    
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
			
			mv.setViewName("redirect:/Mypage01");
			
			return mv;
		}
		
		// 관리자 회원 목록 조회
		@RequestMapping("/Adminpage/Meminfomanager")
		public String memlist(Model model) {

			List memList = userService.getAdminUserList();

			System.out.println("조회된 사용자 목록:" + memList);

			model.addAttribute("mList", memList);

			return "adminpage/meminfomanager";
		}

		// 관리자 견적서 목록 조회
		@RequestMapping("/Adminpage/Estilistmanager")
		public String estilist(Model model) {

			List estiList = userService.getUserList();

			System.out.println("조회된 견적서 목록:" + estiList);

			model.addAttribute("eList", estiList);

			return "adminpage/estilistmanager";
		}

		// 관리자 찜하기 목록 조회
		@RequestMapping("/Adminpage/Favlistmanager")
		public String favlist(Model model) {

			List favList = userService.getUserList();

			System.out.println("조회된 찜하기 목록:" + favList);

			model.addAttribute("fList", favList);

			return "adminpage/estilistmanager";
		}

		// 관리자 회원 정보 보기
		@RequestMapping("/Adminpage/Adminview")
		public ModelAndView getAdminUserInfo(HttpSession session, @RequestParam("memid") String memid) {
			UserVo user = (UserVo) session.getAttribute("login");
			HashMap<String, Object> map = (HashMap<String, Object>) session.getAttribute("map");

			// 클릭한 회원의 정보 조회
			UserVo clickedUser = userService.getUserById(memid);

			ModelAndView mv = new ModelAndView();
			mv.addObject("adminuserinfo", user);
			mv.addObject("map", map);
			mv.addObject("clickedUser", clickedUser); // 클릭한 회원의 정보 추가
			mv.setViewName("adminpage/adminview");

			return mv;
		}

		// 관리자 회원 정보 수정
		@RequestMapping("/Adminpage/AdminUpdateForm")
		public ModelAndView adminUpdateForm(HttpSession session, @RequestParam("memid") String memid) {
			UserVo clickedUser = userService.getUserById(memid);

			ModelAndView mv = new ModelAndView();
			mv.addObject("user", clickedUser);
			mv.setViewName("adminpage/adminupdate");

			return mv;
		}

		@RequestMapping("/Adminpage/AdminUpdate")
		public ModelAndView adminUpdate(HttpSession session, @RequestParam HashMap<String, Object> map) {
			System.out.println("update: " + map);

			String clickedUserId = String.valueOf(map.get("memid"));
			String fmt = "redirect:/Adminpage/Adminview?memid=%s";
			String loc = String.format(fmt, clickedUserId);
			UserVo clickedUser = userService.getUserById(clickedUserId);

			userService.adminUpdate(map);

			ModelAndView mv = new ModelAndView();
			session.setAttribute("login", userService.getUserById(clickedUserId));
			System.out.println("update 후 clickedUser: " + clickedUser);
			System.out.println("update 후 map: " + map);

			mv.setViewName(loc);

			return mv;
		}

		
		// 아이디 찾기
		
		@RequestMapping("/Findid")
		public String findId(@RequestParam("memname") String memname,
		        @RequestParam("email") String email,
		        HttpSession session,
		        Model model) {
		    UserVo user = userService.FindId(memname, email);
		    if (user != null) {
		        session.setAttribute("memid", user.getMemid()); // 세션에 memid 저장
		        model.addAttribute("user", user);
		    } else {
		        session.setAttribute("memid", null); // 사용자를 찾지 못한 경우에도 세션에 memid null로 저장
		        model.addAttribute("message", "User not found");
		        return "user/findidrs";
		    }
		    return "user/findidrs";
		}
			
			@RequestMapping("/User/FindidForm")
			public ModelAndView findIdForm(HttpSession session) {
			    ModelAndView mv = new ModelAndView();
			    mv.setViewName("user/findid");
			    return mv;
			}

			@RequestMapping("/Findidrs")
			public String FindIdResult(@RequestParam String memname, @RequestParam String email, Model model) {
			    try {
			        UserVo vo = userService.FindId(memname, email);
			        String memid = vo.getMemid();
			        model.addAttribute("memid", memid);
			        return "user/findidrs";
			    } catch (Exception e) {
			        model.addAttribute("message", "An error occurred while processing your request.");
			        return "user/error";
			    }
			}
		
	  
			
		 // 비밀번호 찾기
			
			@RequestMapping("/Findpw")
			public String findPw(@RequestParam("memid") String memid,
			        @RequestParam("email") String email,
			        HttpSession session,
			        Model model) {
			    UserVo user = userService.FindPw(memid, email);
			    if (user != null) {
			        session.setAttribute("mempw", user.getMempw()); // 세션에 mempw 저장
			        model.addAttribute("user", user);
			    } else {
			        session.setAttribute("foundPw", null);
			        model.addAttribute("message", "Password not found.");
			        return "user/findpwrs";
			    }
			    return "user/findpwrs";
			}
			
			@RequestMapping("/User/FindpwForm")
			public ModelAndView findPasswordForm(HttpSession session) {
			    ModelAndView mv = new ModelAndView();
			    mv.setViewName("user/findpw");
			    return mv;
			}
			
			@RequestMapping("/Findpwrs")
			public String findPasswordResult(@RequestParam String memid, @RequestParam String email, Model model) {
			    try {
			        UserVo vo = userService.FindPw(memid, email);
			        String mempw = vo.getMempw();
			        model.addAttribute("mempw", mempw);
			        return "user/findpwrs";
			    } catch (Exception e) {
			        model.addAttribute("message", "An error occurred while processing your request.");
			        return "user/error";
			    }
			}
		
		
		
}


















