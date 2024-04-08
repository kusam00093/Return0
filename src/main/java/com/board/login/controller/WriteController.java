package com.board.login.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WriteController {
	
	@RequestMapping("/Writeform")
	public ModelAndView writeform() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/writehome/writeform");
		return mv;
	}
	
	@RequestMapping("/User/Writeform")
	public ModelAndView userWriteform() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/users/write");
		return mv;
	}
	@RequestMapping("/User/Write")
	public ModelAndView userWrite() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/users/write");
		return mv;
	}
	
	@RequestMapping("/Company/Writeform")
	public ModelAndView companyWriteform() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/company/write");
		
		return mv;
	}
	@RequestMapping("/Company/Write")
	public ModelAndView companyWrite() {
		ModelAndView mv= new ModelAndView();
		System.out.println("ddddddddddddd");
		System.out.println("ddddddddddddd");
		System.out.println("ddddddddddddd");
		System.out.println("ddddddddddddd");
		mv.setViewName("/company/write");
		return mv;
	}
	

}
