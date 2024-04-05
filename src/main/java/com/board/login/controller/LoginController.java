package com.board.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller

public class LoginController {
	@RequestMapping("/Loginform")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/loginhome/loginform");
		return mv;
	}

	@RequestMapping("/User/Login")
	public ModelAndView userLogin() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/users/login");
		return mv;
	}

	@RequestMapping("/Company/Login")
	public ModelAndView companyLogin() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/company/login");
		return mv;
	}
	

}

	
	