package com.green.venue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VenueController {

	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
}
