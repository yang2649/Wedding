package com.green.dress.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.dress.service.DressService;
import com.green.p.vo.PVo;
import com.green.user.vo.UserVo;

@Controller
public class DressController {

	@Autowired
	private DressService  dressService;
	
	// 회원목록조회 -> 회원목록을 조회해서 회원목록패이지(user/list.jsp)로 이동
	// http://localhost:9090/User/List
	@RequestMapping("/Cooperative09")
	public  ModelAndView list( HttpSession session,
			@RequestParam HashMap<String, Object> map) {
		
		UserVo user = (UserVo) session.getAttribute("login");
		// db 조회
		 List<PVo> dressList = dressService.getDressList(map); 
		 String  dressid  =  (String)map.get("dressid");
		 String  dressname  =  (String)map.get("dressname");
		 String  dressprice  =  (String)map.get("dressprice");
		 String  memid    = user.getMemid();
		 
		 
		  PVo PVo = (PVo) map.get("PVo");
		 
		  map.put("dressname", dressname );
		  map.put("dressprice", dressprice );
		 map.put("memid", memid );
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