package com.green.reservation.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.reservation.service.ReservationService;
import com.green.reservation.vo.ReservationVo;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/Reservation02")
	public ModelAndView Package(
			@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		
	
		mv.setViewName("reservation/package");
		return mv;
	}
	@RequestMapping("/Reservation02/List")
	public ModelAndView PackageList(@RequestParam HashMap<String, Object> map) {
		List<ReservationVo> vo = reservationService.PackageList(map);

		

		ModelAndView mv = new ModelAndView();
		
		mv.addObject("vo",vo);
		mv.setViewName("reservation/package");
		return mv;
	}
}
