package com.code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginContoller {
	
	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		//return "plain-login";
		return "legacy-form";
	}
	
	//add request mapping for access denied
	
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		
		return "access-denied";
	}
}
