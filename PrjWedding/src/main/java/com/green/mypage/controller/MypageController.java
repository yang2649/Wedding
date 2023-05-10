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
	
//------------------------------------------------------------------------
	/*
	@RequestMapping("/Mypage/Myesti")
	public ModelAndView estiList(HttpSession session, @RequestParam HashMap<String, Object> map) {
	   
		UserVo user = (UserVo) session.getAttribute("login");
	    List<MypageVo> estiList;
	    
	    MypageVo mypage = new MypageVo();
	    mypage.setMemid(user.getMemid());
	    estiList = mypageService.getEstiList(mypage.getMemid());
	   
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("estiList", estiList);
	    mv.addObject("map", map);
	    mv.addObject("mypage", mypage);	    
	    System.out.println("map:" + map);
	    System.out.println("estiList:" + estiList);
	    System.out.println("mypage:" + mypage);
	    mv.setViewName("mypage/myesti");	
	    return mv;
	}
	*/

//-----------------------------------------------------------------------
	
	@RequestMapping("/Mypage/Myesti")
	public ModelAndView estiList(HttpSession session, @RequestParam HashMap<String, Object> map) {
	   
	    UserVo user = (UserVo) session.getAttribute("login");
	    List<MypageVo> estiList;
	    
	    MypageVo mypage = new MypageVo();
	    mypage.setMemid(user.getMemid());
	    estiList = mypageService.getEstiList(mypage.getMemid());
	   
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
	
}
