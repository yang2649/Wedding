package com.green.dress.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.dress.service.DressService;
import com.green.p.vo.PVo;

@Controller
public class DressController {

	@Autowired
	private DressService  dressService;
	
	// 회원목록조회 -> 회원목록을 조회해서 회원목록패이지(user/list.jsp)로 이동
	// http://localhost:9090/User/List
	@RequestMapping("/Image/List")
	public  ModelAndView list( 
			@RequestParam HashMap<String, Object> map) {
		
	
		// db 조회
		 List<PVo> dressList = dressService.getDressList(map); 
		 String  dressid  =  (String)map.get("dressid");
		 
		  PVo PVo = (PVo) map.get("PVo");
		 
		 map.put("memid", "admin");
		 map.put("dressid",dressid);
		 ModelAndView mv = new ModelAndView();
		
		 System.out.println("map" + map);
		// System.out.println("조회된 시용자 목록:" + userList );
		mv.setViewName("dress/dress");
		mv.addObject("dressList", dressList);
		mv.addObject("PVo", PVo);
		mv.addObject("map",map);
		
		return mv;    // /WEB-INF/views/  user/list   .jsp
	}
}