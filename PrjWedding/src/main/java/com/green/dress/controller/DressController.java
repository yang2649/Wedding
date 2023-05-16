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
import com.green.dress.vo.DressVo;
import com.green.user.vo.UserVo;

@Controller
public class DressController {

	@Autowired
	private DressService  dressService;
	
       
	@RequestMapping("/Cooperative09")
	public ModelAndView list(HttpSession session, @RequestParam HashMap<String, Object> map) {
	    ModelAndView mv = new ModelAndView();

	    UserVo user = (UserVo) session.getAttribute("login");
	    if (user == null) {
	    	List<DressVo> dressList = dressService.getDressList(map);
	        mv.setViewName("dress/dress");
	        mv.addObject("dressList", dressList);
	        return mv;
	        
	       
	    }else {
	    	

	    String memid = user.getMemid();
	    String dressid = (String) map.get("dressid");
	    map.put("memid", memid);
	    map.put("dressid", dressid);

	    List<DressVo> dressList = dressService.getDressList(map);

	    mv.setViewName("dress/dress");
	    mv.addObject("dressList", dressList);
	    mv.addObject("map", map);
	    mv.addObject("DressVo", new DressVo());

	    return mv;
	    }
	}
	@RequestMapping("/PlzLogin") 
	public  String  Parking() {
		return "dress/plzlogin";   
	}
	
	// 회원목록조회 -> 회원목록을 조회해서 회원목록패이지(user/list.jsp)로 이동
	// http://localhost:9090/User/List
	@RequestMapping("/Mypage02")
	public ModelAndView favlist(HttpSession session) {
	    UserVo user = (UserVo) session.getAttribute("login");
	    String memid = user.getMemid();
	    
	    HashMap<String, Object> map = new HashMap<String, Object>();
	    map.put("memid", memid);
	    
	    List<DressVo> favList = dressService.getPList(map); 
	    
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("dress/view");
	    mv.addObject("map", map);
	    mv.addObject("favList", favList);
	    
	    return mv;
	}
	@RequestMapping("/favDelete")
	public  ModelAndView  delete(HttpSession session, DressVo  vo ) {
		UserVo user = (UserVo) session.getAttribute("login");
		// data 삭제
		dressService.deletefav( vo );   
		 String  favid  =  vo.getFavid();
		
		// 삭제 후 이동할 주소
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/Mypage02");	
		return  mv;
		
	}
	@RequestMapping("/fav")
	public   ModelAndView   favlist(HttpSession session,
			@RequestParam HashMap<String, Object> map ) {
         

	    UserVo user = (UserVo) session.getAttribute("login");
	    if (user == null) {
	    	      
	    	ModelAndView  mv  = new ModelAndView();
	    	mv.setViewName("PlzLogin");
	    	
	    	return  mv;
	       
	    }	else {
	    	
		DressVo DressVo = new DressVo();
		
		String  dressid  =  String.valueOf( map.get("dressid") );
		String  memid  =  String.valueOf( map.get("memid") );
		System.out.println("컨트롤러"+ map);
		// 게시글 등록
		dressService.insertfav( map );
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/Cooperative09 ");
		
		mv.addObject("map",map);
		return  mv;
	    }
		
	}

}