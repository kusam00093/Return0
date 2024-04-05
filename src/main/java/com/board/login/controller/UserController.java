package com.board.login.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.UserVo;
import com.board.login.mapper.LoginMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Users")
public class UserController {
	
	@Autowired
	private  LoginMapper  userMapper;
	
	
	//  /Users/WriteForm
	@RequestMapping("/WriteForm")
	public  ModelAndView   writeForm() {
		
		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("users/write");
		return  mv;
		
	}
	
	//  /Users/Write
	@RequestMapping("/Write")
	public  ModelAndView  write( UserVo  userVo ) {		
		// 저장
		userMapper.insertUser( userVo );		
		
		// 데이터를 가지고 이동한다
		ModelAndView   mv   =  new  ModelAndView();
	
		mv.setViewName("redirect:/");
		return   mv;
	}
	
	//  http://localhost:9090/Users/View?userid=aa
	@RequestMapping("/View")
	public  ModelAndView   view(UserVo userVo) {
		
		// user_id=aa  db 조회
		HashMap<String, Object>  map  =  userMapper.getUser( userVo );   
		// System.out.println( vo );
		log.info("map : {}", map);
		
		// map.get("userid")
		
		ModelAndView  mv  =  new ModelAndView();
		mv.addObject("vo", map);
		mv.setViewName("users/view");
		return  mv;		
	}
	}