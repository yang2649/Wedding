package com.green.venue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VenueController {
	
	
	@RequestMapping("/Venue01")
	public String venue01() {
		return "venue/greenhall";
	}
	
	@RequestMapping("/Venue02")
	public String venue02() {
		return "venue/redhall";
	}
	
	@RequestMapping("/Venue03")
	public String venue03() {
		return "venue/bluehall";
	}
	
	@RequestMapping("/Venue04")
	public String venue04() {
		return "venue/blackhall";
	}
	
	@RequestMapping("/Venue05")
	public String venue05() {
		return "venue/viphall";
	}
	
	@RequestMapping("/Venue06")
	public String venue06() {
		return "venue/pyebaek";
	}
}
