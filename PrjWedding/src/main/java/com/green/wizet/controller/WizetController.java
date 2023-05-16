package com.green.wizet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WizetController {
	
	
	@RequestMapping("/Location01") 
	public  String  Location() {
		return "wizet/location";   
	}
	@RequestMapping("/Location02") 
	public  String  Parking() {
		return "wizet/parking";   
	}
}
