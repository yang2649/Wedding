package com.green.dress.controller;

import java.util.ArrayList;
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
	public ModelAndView list(HttpSession session, @RequestParam HashMap<String, Object> map) {
	    ModelAndView mv = new ModelAndView();

	    UserVo user = (UserVo) session.getAttribute("login");
	    if (user == null) {
	    	List<PVo> dressList = dressService.getDressList(map);
	        mv.setViewName("dress/dress");
	        mv.addObject("dressList", dressList);
	        return mv;
	        
	       
	    }else {
	    	

	    String memid = user.getMemid();
	    String dressid = (String) map.get("dressid");
	    map.put("memid", memid);
	    map.put("dressid", dressid);

	    List<PVo> dressList = dressService.getDressList(map);

	    mv.setViewName("dress/dress");
	    mv.addObject("dressList", dressList);
	    mv.addObject("map", map);
	    mv.addObject("PVo", new PVo());

	    return mv;
	    }
	}
	@RequestMapping("/PlzLogin") 
	public  String  Parking() {
		return "dress/plzlogin";   
	}
}