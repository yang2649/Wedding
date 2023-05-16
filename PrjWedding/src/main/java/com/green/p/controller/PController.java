package com.green.p.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.p.service.PService;
import com.green.p.vo.PVo;
import com.green.user.vo.UserVo;

@Controller
public class PController {

	@Autowired
	private PService  pService;
	
       
	
	
	// 회원목록조회 -> 회원목록을 조회해서 회원목록패이지(user/list.jsp)로 이동
	// http://localhost:9090/User/List
	@RequestMapping("/GGimList")
	public ModelAndView ggimlist(HttpSession session) {
	    UserVo user = (UserVo) session.getAttribute("login");
	    String memid = user.getMemid();
	    
	    HashMap<String, Object> map = new HashMap<String, Object>();
	    map.put("memid", memid);
	    
	    List<PVo> ggimList = pService.getPList(map); 
	    
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("dress/view");
	    mv.addObject("map", map);
	    mv.addObject("ggimList", ggimList);
	    
	    return mv;
	}
	@RequestMapping("/GGimDelete")
	public  ModelAndView  delete(HttpSession session, PVo  vo ) {
		UserVo user = (UserVo) session.getAttribute("login");
		// data 삭제
		pService.deleteggim( vo );   
		 String  favid  =  vo.getFavid();
		
		// 삭제 후 이동할 주소
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/GGimList");	
		return  mv;
		
	}
	@RequestMapping("/GGim")
	public   ModelAndView   Plist(HttpSession session,
			@RequestParam HashMap<String, Object> map ) {
         

	    UserVo user = (UserVo) session.getAttribute("login");
	    if (user == null) {
	    	      
	    	ModelAndView  mv  = new ModelAndView();
	    	mv.setViewName("PlzLogin");
	    	
	    	return  mv;
	       
	    }	else {
	    	
		PVo pvo = new PVo();
		
		String  dressid  =  String.valueOf( map.get("dressid") );
		String  memid  =  String.valueOf( map.get("memid") );
		System.out.println("컨트롤러"+ map);
		// 게시글 등록
		pService.insertGGim( map );
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/Cooperative09 ");
		
		mv.addObject("map",map);
		return  mv;
	    }
		
	}
	
}