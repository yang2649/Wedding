package com.green.esimate.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.estimate.service.EstimateService;
import com.green.estimate.vo.EstimateVo;
import com.green.user.vo.UserVo;

@Controller
public class EstimateController {

	@Autowired
    private EstimateService estimateService;
	
	// 견적서 창 열기
	@RequestMapping("/Reservation01")
	public ModelAndView Estimate() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("reservation/estimate");
		
		return mv;
	}
	

	/* test
	// 견적서에 리스트 출력
	@RequestMapping("/Reservation/Estimatelist")
	public  String alllist( Model model ) {
		
		List hallList = estimateService.getHallList();
		List dressList = estimateService.getDressList();
		List cateringList = estimateService.getCateringList();
		List studioList = estimateService.getStudioList();
		
		model.addAttribute("hallList", hallList);
		model.addAttribute("dressList", dressList);
		model.addAttribute("cateringList", cateringList);
	    model.addAttribute("studioList", studioList);
		
		System.out.println(hallList);
		System.out.println(dressList);
		System.out.println(cateringList);
		System.out.println(studioList);
		
		return "reservation/estimatelist";
		
	}
	*/
	
	
	// 견적서 저장하기
	@RequestMapping("/Reservation/EstimateForm")
	public ModelAndView estimateForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reservation/estimate");
		
		return mv; 
	}
	
	
	
	@RequestMapping("/Reservation/Estimate")
	public ModelAndView insertEstimate(  
	    HttpSession   session,
	    @RequestParam HashMap<String, Object> map ) {  

		UserVo user = (UserVo) session.getAttribute("login");
				
		
		if (user == null) {
		  ModelAndView loginMv = new ModelAndView("redirect:/login");
		  return loginMv;
		    }		
		
		EstimateVo estivo = new EstimateVo();
		estivo.setMemid(user.getMemid());
		estivo.setEstiname((String) map.get("estiname"));
		estivo.setResdate((String) map.get("resdate"));
		estivo.setRestime((String) map.get("restime"));
		estivo.setGuestnum((String) map.get("guestnum"));
		estivo.setHallname((String) map.get("hallname"));
		estivo.setCateringtype((String) map.get("cateringtype"));
		estivo.setStudioname((String) map.get("studioname"));
		estivo.setDressname((String) map.get("dressname"));

		EstimateVo hallVo = estimateService.getHallid(estivo.getHallname());
		if (hallVo != null) {
			estivo.setHallid(hallVo.getHallid());
			estivo.setHallosprice(hallVo.getHallosprice());
			estivo.setHallpsprice(hallVo.getHallpsprice());
		}		
		System.out.println("hallVo:" + hallVo);

		EstimateVo cateringVo = estimateService.getCateringid(estivo.getCateringtype());
		if (cateringVo != null) {
			estivo.setCateringid(cateringVo.getCateringid());
			estivo.setCateringprice(cateringVo.getCateringprice());
		}    
		System.out.println("cateringVo:" + cateringVo);
		
		EstimateVo dressVo = estimateService.getDressid(estivo.getDressname());
		if (dressVo != null) {
			estivo.setDressid(dressVo.getDressid());
			estivo.setDressprice(dressVo.getDressprice());
		}    
		System.out.println("DressVo:" + dressVo);
		
		EstimateVo studioVo = estimateService.getstudioid(estivo.getStudioname());
		if (studioVo != null) {
			estivo.setStudioid(studioVo.getStudioid());
			estivo.setStudioprice(studioVo.getStudioprice());
		}    
		System.out.println("StudioVo:" + studioVo);
					    
				
		estimateService.insertEstimate( estivo );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("estivo", estivo);
		mv.addObject("map", map);
		mv.setViewName("redirect:/Reservation01");
		System.out.println( estivo );
		System.out.println("map :" + map);
		
		return mv;
	}
		
	/*
	@RequestMapping("/Reservation/Allestimate")
	public ModelAndView EstimateList (@RequestParam HashMap<String, Object> map ) { 
		
		EstimateVo estivo = new EstimateVo();
		estivo.setHallname((String) map.get("hallname"));
		estivo.setCateringtype((String) map.get("cateringtype"));
		estivo.setStudioname((String) map.get("studioname"));
		estivo.setDressname((String) map.get("dressname"));
			
	  EstimateVo hallVo = estimateService.getHallid(estivo.getHallname());
		if (hallVo != null) {
			estivo.setHallid(hallVo.getHallid());
			estivo.setHallosprice(hallVo.getHallosprice());
			estivo.setHallpsprice(hallVo.getHallpsprice());
		}		
		System.out.println("hallVo:" + hallVo);

		EstimateVo cateringVo = estimateService.getCateringid(estivo.getCateringtype());
		if (cateringVo != null) {
			estivo.setCateringid(cateringVo.getCateringid());
			estivo.setCateringprice(cateringVo.getCateringprice());
		}    
		System.out.println("cateringVo:" + cateringVo);
		
		EstimateVo dressVo = estimateService.getDressid(estivo.getDressname());
		if (dressVo != null) {
			estivo.setDressid(dressVo.getDressid());
			estivo.setDressprice(dressVo.getDressprice());
		}    
		System.out.println("DressVo:" + dressVo);
		
		EstimateVo studioVo = estimateService.getstudioid(estivo.getStudioname());
		if (studioVo != null) {
			estivo.setStudioid(studioVo.getStudioid());
			estivo.setStudioprice(studioVo.getStudioprice());
		}    
		System.out.println("StudioVo:" + studioVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("estivo", estivo);
		mv.addObject("map", map);
		mv.setViewName("redirect:/Reservation01");
		
		return mv; 
    }
	*/
}