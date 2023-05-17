package com.green.admin.controller;


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

import com.green.admin.service.AdminService;
import com.green.admin.vo.AdminVo;
import com.green.user.vo.UserVo;
 
@Controller
public class AdminController {

	@Autowired
	private AdminService  adminService;

	
//============================================================================================================================//	

	//관리자> 로그인 체크
	@RequestMapping("/adminlogin")
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
			AdminVo adminVo = adminService.getLogin(map);
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
					.getRequest();
			String memid = request.getParameter("memid");
			if (adminVo != null) {
				if (memid.equals("admin")) {
					session.setAttribute("login", adminVo);
					System.out.println("로그인: " + adminVo);
					returnURL = "redirect:/adminhome";
				} else {
					session.setAttribute("login", adminVo);
					System.out.println("로그인: " + adminVo);
					returnURL = "redirect:/";
				}
			} else {
				returnURL = "redirect:/login";
			}
			return returnURL;
		}
	
	//관리자> 로그아웃 체크
	@RequestMapping("/adminlogout")
	public String logout(HttpSession session) {

		session.removeAttribute("login");

		return "redirect:/";
	}

//============================================================================================================================//	
	
	//관리자> 회원목록 조회
	@RequestMapping("/Adminpage/Adminmemlist")
	public String memlist(Model model) {

		List memList = adminService.getAdminMemList();

		System.out.println("조회된 사용자 목록:" + memList);

		model.addAttribute("mList", memList);

		return "adminpage/adminmemlist";
	}
	
	//관리자> 찜  목록 조회
	@RequestMapping("/Adminpage/Adminfavlist")
	public String favlist(Model model) {
		
		List favList = adminService.getAdminFavList();
		
		System.out.println("조회된 찜하기 목록:" + favList);
		
		model.addAttribute("fList", favList);
		
		return "adminpage/adminfavlist";
	}
	
	//관리자> 견적서 목록 조회
	@RequestMapping("/Adminpage/Adminestilist")
	public String estilist(Model model) {

		List estiList = adminService.getAdminEstiList();

		System.out.println("조회된 견적서 목록:" + estiList);

		model.addAttribute("eList", estiList);

		return "adminpage/adminestilist";
	}

//============================================================================================================================//	
	
	// 관리자> 해당 회원 정보 조회
	@RequestMapping("/Adminpage/Meminfomanager")
	public ModelAndView getMemInfoManager(HttpSession session, @RequestParam("memid") String memid) {
	    UserVo user = (UserVo) session.getAttribute("login");
	     
	    AdminVo admin = new AdminVo();
	    admin.setMemid(user.getMemid());
		/*
		 * AdminVo admin = adminService.getAdminData( session.getAttribute("login") );
		 */
	    HashMap<String, Object> map = (HashMap<String, Object>) session.getAttribute("map");

	    // 클릭한 회원의 정보 조회
	    AdminVo member = adminService.getMember(memid);
	    
	    // 클릭한 회원의 찜 목록 조회
	    List<String> favList = adminService.getFavIdByMemId(memid); // memid로 찜 목록 조회

	    // 클릭한 회원의 견적서 목록 조회
	    List<String> estiList = adminService.getEstiIdByMemId(memid); // memid로 찜 목록 조회
	    
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("adminuserinfo", admin);
	    mv.addObject("map", map);
	    mv.addObject("member", member);
	    mv.addObject("memid", memid);
	    mv.setViewName("adminpage/meminfomanager");

	    return mv;
	}

	// 관리자> 해당 회원 찜 목록 조회
	@RequestMapping("/Adminpage/Memfavlistmanager")
	public ModelAndView getMemFavManager(HttpSession session, @RequestParam("memid") String memid) {
	    UserVo user = (UserVo) session.getAttribute("login");
	     
	    AdminVo admin = new AdminVo();
	    admin.setMemid(user.getMemid());
	    HashMap<String, Object> map = (HashMap<String, Object>) session.getAttribute("map");

	    // 클릭한 회원의 정보 조회
	    AdminVo member = adminService.getMember(memid);
	    
	    // 클릭한 회원의 찜 목록 조회
	    List<String> favList = adminService.getFavIdByMemId(memid); // memid로 찜 목록 조회
	    
	    // 클릭한 회원의 견적서 목록 조회
	    List<String> estiList = adminService.getEstiIdByMemId(memid); // memid로 찜 목록 조회

	    ModelAndView mv = new ModelAndView();
	    mv.addObject("adminuserinfo", admin);
	    mv.addObject("map", map);
	    mv.addObject("member", member);
	    mv.addObject("fList", favList); // 클릭한 회원의 찜 목록 추가
	    mv.addObject("memid", memid);
	    mv.setViewName("adminpage/memfavlistmanager");

	    return mv;
	}

	//관리자> 해당 회원 찜 정보     조회
	//관리자> 해당 회원 견적서 목록 조회
	@RequestMapping("/Adminpage/Memestilistmanager")
	public ModelAndView getMemEstiManager(HttpSession session, @RequestParam("memid") String memid) {
		UserVo user = (UserVo) session.getAttribute("login");
	     
	    AdminVo admin = new AdminVo();
	    admin.setMemid(user.getMemid());
	    HashMap<String, Object> map = (HashMap<String, Object>) session.getAttribute("map");

	    // 클릭한 회원의 정보 조회
	    AdminVo member = adminService.getMember(memid);
	    
	    // 클릭한 회원의 찜 목록 조회
	    List<String> favList = adminService.getFavIdByMemId(memid); // memid로 찜 목록 조회
	    
	    // 클릭한 회원의 견적서 목록 조회
	    List<String> estiList = adminService.getEstiIdByMemId(memid); // memid로 찜 목록 조회

	    ModelAndView mv = new ModelAndView();
	    mv.addObject("adminuserinfo", admin);
	    mv.addObject("map", map);
	    mv.addObject("member", member);
	    mv.addObject("eList", estiList); // 클릭한 회원의 찜 목록 추가
	    mv.addObject("memid", memid);
	    mv.setViewName("adminpage/memestilistmanager");

	    return mv;
	}

	//관리자> 해당 회원 견적서 정보 조회

//============================================================================================================================//	
	
	//관리자> 해당 회원 정보 수정
	@RequestMapping("/Adminpage/AdminUpdateForm")
	public ModelAndView adminUpdateForm(HttpSession session, @RequestParam("memid") String memid) {
		AdminVo clickedUser = adminService.getMember(memid);

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
		AdminVo clickedUser = adminService.getMember(clickedUserId);

		adminService.adminUpdate(map);

		ModelAndView mv = new ModelAndView();
		session.setAttribute("login", adminService.getMember(clickedUserId));
		System.out.println("update 후 clickedUser: " + clickedUser);
		System.out.println("update 후 map: " + map);

		mv.setViewName(loc);

		return mv;
	}

	//관리자> 해당 회원 찜 목록     수정
	//관리자> 해당 회원 찜 정보     수정
	//관리자> 해당 회원 견적서 목록 수정
	//관리자> 해당 회원 견적서 정보 수정
	
//============================================================================================================================//	
	
	//관리자> 해당 회원 정보        삭제
	@RequestMapping("/User/AdminDelete")
	public String adminDelete(String memid) {

		// 삭제
		adminService.adminDeleteUser(memid);

		return "redirect:/Adminpage/Adminmemlist";
	}

	//관리자> 해당 회원 찜 목록     삭제
	//관리자> 해당 회원 찜 정보     삭제
	//관리자> 해당 회원 견적서 목록 삭제
	//관리자> 해당 회원 견적서 정보 삭제
	
//============================================================================================================================//	
	
	//관리자> 공지사항 게시판 조회
	//관리자> 이벤트   게시판 조회
	//관리자> 자료실   게시판 조회
	//관리자> FAQ      게시판 조회
	//관리자> 후기     게시판 조회
	
//============================================================================================================================//	
	
	//관리자> 공지사항 게시판 수정
	//관리자> 이벤트   게시판 수정
	//관리자> 자료실   게시판 수정
	//관리자> FAQ      게시판 수정
	//관리자> 후기     게시판 수정
	
//============================================================================================================================//
	
	//관리자> 공지사항 게시판 삭제
	//관리자> 이벤트   게시판 삭제
	//관리자> 자료실   게시판 삭제
	//관리자> FAQ      게시판 삭제
	//관리자> 후기     게시판 삭제
	
//============================================================================================================================//
		
}


