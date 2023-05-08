package com.green.cooperative.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CooperativeController {
	
	
	@RequestMapping("/Cooperative") 
	public  String  Cooperative() {
		return "cooperative/cooperative";   
	}
	@RequestMapping("/Studio") 
	public  String  Studio1() {
		return "cooperative/feelmoment";   
	}
	@RequestMapping("/Ateso") 
	public  String  Studio2() {
		return "cooperative/Ateso";   
	}
	@RequestMapping("/Spring") 
	public  String  Studio3() {
		return "cooperative/spring";   
	}
	@RequestMapping("/Dress") 
	public  String  Dress() {
		return "cooperative/dress";   
	}
	@RequestMapping("/Invitation") 
	public  String  Invitation() {
		return "cooperative/invitation";   
	}
	@RequestMapping("/Hanbog") 
	public  String  Hanbog() {
		return "cooperative/hanbog";   
	}
	@RequestMapping("/Makeup") 
	public  String  Makeup() {
		return "cooperative/makeup";   
	}
}
