package com.board.write.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WriteController {
	
	@RequestMapping("/Writeform")
	public ModelAndView write() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/writehome/writeform");
		return mv;
	}
	
	@RequestMapping("/User/Write")
	public ModelAndView userWrite() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/users/write");
		return mv;
	}
	
	@RequestMapping("/Company/Write")
	public ModelAndView companyWrite() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/company/write");
		return mv;
	}
	

}
