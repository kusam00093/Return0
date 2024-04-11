package com.board.login.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.LoginUserVo;
import com.board.login.mapper.LoginUserMapper;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
public class LoginUserController {


	@Autowired
	private LoginUserMapper userMapper;
	
	// 개인 로그인을 한다
	@RequestMapping("/login")
	//public   ModelAndView   login(
	//		@Param String userid, @Param  String passwd, 
	//		HttpServletRequest  request  ) {
	public   ModelAndView   login( HttpServletRequest  request  ) {
		
		String     user_id    =  request.getParameter("user_id");
		String     user_passwd    =  request.getParameter("user_passwd");
		
		LoginUserVo     userVo    =  userMapper.login( user_id, user_passwd  ); 
	
		
		String     loc       =  "";
		if(  userVo != null  ) { // 아이디와 암호가 일치하면
			HttpSession  session =  request.getSession();
			session.setAttribute("userLogin", userVo );
			session.setMaxInactiveInterval(30 * 60); // 30분 동안 유지
			loc    =  "redirect:/";  
		} else {  // 아이디 비번 틀림
			loc    =  "/login/loginform"; 
		}
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName( loc );		
		return  mv;
		
	}
	
	
	
	
	// 개인 로그아웃을 한다
	@RequestMapping("/logout")
	public   String   logout(  HttpSession  session    ) {
		session.invalidate();
		return  "redirect:/";
	}
	
	// 개인 회원가입 화면으로
	// /Users/WriteForm
	@RequestMapping("/User/Write")
	public ModelAndView writeForm() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("login/userwrite");
		return mv;

	}
	
	// 개인 회원가입을 한다
	// /Users/Write
	@RequestMapping("/userwrite")
	public ModelAndView write(LoginUserVo userVo) {
		// 저장
		userMapper.insertUser(userVo);

		// 데이터를 가지고 이동한다
		ModelAndView mv = new ModelAndView();

		mv.setViewName("redirect:/");
		return mv;
	}

	// 로그인 유형 선택 화면으로
	@RequestMapping("/Loginform")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/login/loginform");
		return mv;
	}

	// 개인 로그인 화면으로
	@RequestMapping("/User/Login")
	public ModelAndView userLogin() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/login/userlogin");
		return mv;
	}
}

	
	