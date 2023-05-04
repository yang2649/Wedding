package com.green.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommunityController {

	
	@RequestMapping("/Community01")
	public ModelAndView noticeList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/notice");
		
		return mv;
	}
	
	@RequestMapping("/Community02")
	public ModelAndView eventList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/review");
		
		return mv;
	}
	@RequestMapping("/Community03")
	public ModelAndView reviewList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/review");
		
		return mv;
	}
	@RequestMapping("/Community04")
	public ModelAndView downloadList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/download");
		
		return mv;
	}
	//@RequestMapping("/Community02")
	
	
	@RequestMapping("/Community05")
	public ModelAndView faqlist() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/faq");
		
		return mv;
	}
	//@RequestMapping("/Community02")
	
	
}
