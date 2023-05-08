package com.green.caterring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CaterringController {
	
	
	@RequestMapping("/Caterring01")
	public String caterring01() {
		return "caterring/buffet";
	}
	@RequestMapping("/Caterring02")
	public String caterring02() {
		return "caterring/premium";
	}
	
	
}
