package com.green.wizet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WizetController {
	
	
	@RequestMapping("/Location") 
	public  String  Location() {
		return "wizet/location";   
	}
	@RequestMapping("/Map") 
	public  String  Map() {
		return "wizet/map";   
	}
	@RequestMapping("/Parking") 
	public  String  Parking() {
		return "wizet/parking";   
	}
}
