package com.board.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/User")
public class UserController {
	
//	@GetMapping("/User")
//	@ResponseBody
//	public String user() {
//		return "<h2>Hello</h2>";
//	}
	
	// User/UserProfile
	@RequestMapping("/UserProfile")
	public String profile() {
		return "user/userProfile";
	}
}
