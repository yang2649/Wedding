package com.green.mypage.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MypageController {

	
	@RequestMapping("/Mypage01")
	public ModelAndView noticeList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myinfo");
		
		return mv;
	}
	
	@RequestMapping("/Mypage02")
	public ModelAndView eventList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myfav");
		
		return mv;
	}
	@RequestMapping("/Mypage03")
	public ModelAndView reviewList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/myesti");
		
		return mv;
	}
	

	
	
}
