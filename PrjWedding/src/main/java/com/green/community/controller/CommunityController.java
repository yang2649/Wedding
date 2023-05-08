package com.green.community.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.community.service.CommunityService;
import com.green.community.vo.CommunityVo;
import com.green.pds.vo.PdsVo;


@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService; 
	
	// 공지사항 페이지 리스트 가져오기
	@RequestMapping("/Community01")
	public ModelAndView noticeList(
			@RequestParam HashMap<String, Object> map) {
		
		//공지사항 목록
		String  menu_id  = (String)map.get("menu_id");
		List<CommunityVo> notList = communityService.getNoticeList(menu_id);
		
		System.out.println("Contr List MAP:" + notList);
	
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("community/notice");
		mv.addObject( "notList",notList);
		mv.addObject("map", map);
		
		System.out.println(notList);
		
		return mv;
	}

	@RequestMapping("/Community01View")
	public ModelAndView noticeView(
			@RequestParam HashMap<String, Object> map) {
		
		CommunityVo  communityVo  =  communityService.getNotice(map);  
	
		String         cont      =  communityVo.getCont();
		if( cont == null )     cont = "";
		cont                     =   cont.replace("\n", "<br>");
		communityVo.setCont(cont);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/noticeview");
		mv.addObject("vo", communityVo);
		mv.addObject("map", map);
		return mv;
	}
	
	
	@RequestMapping("/Community01WriteForm")
	public ModelAndView noticeWriteForm(
			@RequestParam HashMap<String, Object> map) {
		
		// if 관리자면 뭐 보이게함.
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/noticeWriteForm");
		return mv;
	}
	
	@RequestMapping("/Community01Write")
	public ModelAndView noticeWrite(
			@RequestParam HashMap<String, Object> map,
			HttpServletRequest request) {
		
		communityService.noticeWrite(map, request);
		
	     ModelAndView mv = new ModelAndView();
	     mv.addObject("map", map);
	     mv.setViewName("redirect:/Community01");
	     return mv;
	}
	
	//----------이벤트---------------------------------------------------------------------
	@RequestMapping("/Community02")
	public ModelAndView eventList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/review");
		
		return mv;
	}
	
	//---자료실------------------
	@RequestMapping("/Community03")
	public ModelAndView downloadList(
			@RequestParam HashMap<String, Object> map) {
		
		String  menu_id  = (String)map.get("menu_id");
		
		List<CommunityVo> downList = communityService.getdownList(menu_id);
		
		System.out.println("Contr List MAP:" + downList);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/download");
		mv.addObject("downList",downList);
		mv.addObject("map", map);
		
		return mv;
	}
	
	@RequestMapping("/Community03WriteForm")
	public ModelAndView downWriteForm(
			@RequestParam HashMap<String, Object> map) {
		
		// if 관리자면 뭐 보이게함.
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community/downWriteForm");
		return mv;
	}
	
	@RequestMapping("/Community03Write")
	public ModelAndView downWrite(
			@RequestParam HashMap<String, Object> map,
			HttpServletRequest request) {
		
		 communityService.downWrite(map, request);
		
	     ModelAndView mv = new ModelAndView();
	     mv.addObject("map", map);
	     mv.setViewName("redirect:/Community03");
	     return mv;
	}
	
	//--- FAQ-------------------
	
	
		@RequestMapping("/Community04")
		public ModelAndView faqlist(@RequestParam HashMap<String, Object> map) {
			
			String  menu_id  = (String)map.get("menu_id");
			
			List<CommunityVo> faqList = communityService.getfaqList(menu_id);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("community/faq");
			mv.addObject("faqList", faqList);
			return mv;
		}
		
		@RequestMapping("/Community05")
		public ModelAndView reviewList() {
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("community/review");
			
			return mv;
		}
		
		
		
	}


	
	
