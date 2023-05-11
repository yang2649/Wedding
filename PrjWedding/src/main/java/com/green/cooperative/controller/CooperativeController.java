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
	/*@RequestMapping("/Cooperative02") 
	public  String  Cooperative02() {
		return "cooperative/dress";   
	}*/
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
	@RequestMapping("/466") 
	public  String  invitation01() {
		return "cooperative/invitation1";   
	}
	@RequestMapping("/355") 
	public  String  invitation02() {
		return "cooperative/invitation2";   
	}
	@RequestMapping("/497") 
	public  String  invitation03() {
		return "cooperative/invitation3";   
	}
	@RequestMapping("/594") 
	public  String  invitation04() {
		return "cooperative/invitation4";   
	}
	@RequestMapping("/634") 
	public  String  invitation05() {
		return "cooperative/invitation5";   
	}
	@RequestMapping("/533") 
	public  String  invitation06() {
		return "cooperative/invitation6";   
	}
	@RequestMapping("/512") 
	public  String  invitation07() {
		return "cooperative/invitation7";   
	}
	@RequestMapping("/546") 
	public  String  invitation08() {
		return "cooperative/invitation8";   
	}
}
