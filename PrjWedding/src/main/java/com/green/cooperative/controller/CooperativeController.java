package com.green.cooperative.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CooperativeController {
	
	
	@RequestMapping("/Cooperative01") 
	public  String  Cooperative01() {
		return "cooperative/cooperative";   
	}
	@RequestMapping("/Ateso") 
	public  String  Studio2() {
		return "cooperative/Ateso";   
	}
	@RequestMapping("/Spring") 
	public  String  Studio3() {
		return "cooperative/spring";   
	}
	@RequestMapping("/Cooperative02") 
	public  String  Cooperative02() {
		return "cooperative/dress";   
	}
	@RequestMapping("/Cooperative05") 
	public  String  Cooperative03() {
		return "cooperative/invitation";   
	}
	@RequestMapping("/Cooperative04") 
	public  String  Cooperative04() {
		return "cooperative/hanbok";   
	}
	@RequestMapping("/Cooperative03") 
	public  String  Cooperative05() {
		return "cooperative/makeup";   
	}
}
