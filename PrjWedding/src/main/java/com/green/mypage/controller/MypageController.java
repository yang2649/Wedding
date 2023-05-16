package com.green.mypage.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.mypage.service.MypageService;
import com.green.mypage.vo.MypageVo;
import com.green.user.vo.UserVo;


@Controller
public class MypageController {
	
	@Autowired
	private MypageService mypageService;


//------------------------------------------------------------------
	/*
	@RequestMapping("/Mypage01")
	public ModelAndView myinfoList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myinfo");
		
		return mv;
	}
	
	@RequestMapping("/Mypage02")
	public ModelAndView myfavList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myfav");
		
		return mv;
	}
	
	
	@RequestMapping("/Mypage03")
	public ModelAndView myestiList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myesti");
		
		return mv;
	}
*/

//------------------------- 내 견적서 ------------------------------
	
	@RequestMapping("/Mypage03")
	public ModelAndView estiList(HttpSession session, @RequestParam HashMap<String, Object> map) {
	   
	    UserVo user = (UserVo) session.getAttribute("login");
	    List<MypageVo> estiList;
	    System.out.println("user:" + user);
	    
	    MypageVo mypage = new MypageVo();
	    mypage.setMemid(user.getMemid());
	    
	    estiList = mypageService.getEstiList(mypage.getMemid());
	    System.out.println("estiii:" + estiList );
	   
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("estiList", estiList);
	    mv.addObject("map", map);
	    
	    // mypage에 estiList의 첫 번째 항목을 저장
	    if (!estiList.isEmpty()) {
	        mypage = estiList.get(0);
	    }
	    
	    mv.addObject("mypage", mypage);    
	    System.out.println("map:" + map);
	    System.out.println("estiList:" + estiList);
	    System.out.println("mypage:" + mypage);
	    mv.setViewName("mypage/myesti");  
	    return mv;
	}

//------------------------- 찜 목록 ------------------------------
	@RequestMapping("/Mypage/Myfav")
	public ModelAndView favList(HttpSession session, @RequestParam HashMap<String, Object> map) {
	   
	    UserVo user = (UserVo) session.getAttribute("login");
	    List<MypageVo> favList;
	    
	    MypageVo mypage = new MypageVo();
	    mypage.setMemid(user.getMemid());
	    
	    favList = mypageService.getFavList(mypage.getMemid());
	    System.out.println("fav:" + favList );
	    
	    // mypage에 favList의 첫 번째 항목을 저장
	    if (!favList.isEmpty()) {
	        mypage = favList.get(0);
	    }
	   
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("favList", favList);
	    mv.addObject("map", map);	    
	    mv.addObject("mypage", mypage); 
	    
	    System.out.println("map:" + map);
	    System.out.println("favList:" + favList);
	    System.out.println("mypage:" + mypage);

	    
	    mv.setViewName("mypage/myfav");  
	    return mv;
	}
	

	
}









