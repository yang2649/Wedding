package com.green.p.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.p.service.PService;
import com.green.p.vo.PVo;

@Controller
public class PController {

	@Autowired
	private PService  pService;
	
       
	
	
	// 회원목록조회 -> 회원목록을 조회해서 회원목록패이지(user/list.jsp)로 이동
	// http://localhost:9090/User/List
	@RequestMapping("/List")
	public  ModelAndView list( @RequestParam HashMap<String ,Object>map) {
		
		// db 조회
		PVo pvo = pService.getPList(map); 
		
		// System.out.println("조회된 시용자 목록:" + userList );
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dress/dress");
		mv.addObject("map",map);
		
		return mv;    // /WEB-INF/views/  user/list   .jsp
	}
	
	@RequestMapping("/GGim")
	public   ModelAndView   Plist(
			@RequestParam HashMap<String, Object> map ) {
         
		
		PVo pvo = new PVo();
		
		String  dressid  =  String.valueOf( map.get("dressid") );
		String  memid  =  String.valueOf( map.get("memid") );
		System.out.println("컨트롤러"+ map);
		// 게시글 등록
		pService.insertGGim( map );
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/Cooperative02 ");
		mv.addObject("map",map);
		return  mv;
		
	}
	
}