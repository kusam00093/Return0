package com.board.login.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.UserVo;
import com.board.login.mapper.LoginMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;




@Controller
public class UserLoginController {

@Autowired
private LoginMapper loginMapper; 




	
	@RequestMapping("/login")
	//public   ModelAndView   login(
	//		@Param String userid, @Param  String passwd, 
	//		HttpServletRequest  request  ) {
	public   ModelAndView   login( HttpServletRequest  request  ) {
		
		String     user_id    =  request.getParameter("user_id");
		String     user_passwd    =  request.getParameter("user_passwd");
		
		UserVo     userVo    =  loginMapper.login( user_id, user_passwd  ); 
	
		
		String     loc       =  "";
		if(  userVo != null  ) { // 아이디와 암호가 일치하면
			HttpSession  session =  request.getSession();
			session.setAttribute("login", userVo );
			session.setMaxInactiveInterval(30 * 60); // 30분 동안 유지
			loc    =  "redirect:/";  
		} else {  // 아이디 비번 틀림
			loc    =  "/loginhome/loginform"; 
		}
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName( loc );		
		return  mv;
		
	}
	
	
	@RequestMapping("/logout")
	public   String   logout(  HttpSession  session    ) {
		session.invalidate();
		return  "/loginhome/loginform";
	}
	

}

	
	