package com.green.reservation.controller;

import java.util.HashMap;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservationController {

	@RequestMapping("/Reservation02")
	public ModelAndView Package(
			@RequestParam HashMap<String, Object> map) {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("reservation/package");
		return mv;
	}
}
