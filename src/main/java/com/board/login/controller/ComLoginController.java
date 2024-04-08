package com.board.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.CompanyVo;
import com.board.login.mapper.CompanyMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class ComLoginController {
	
	@Autowired
	private CompanyMapper companyMapper;

	
	
	@RequestMapping("/login")
	

		public   ModelAndView   login( HttpServletRequest  request  ) {
			
			String     com_id    =  request.getParameter("com_id");
			String     com_passwd    =  request.getParameter("com_passwd");
			
			CompanyVo     companyVo    =  companyMapper.login( com_id, com_passwd  ); 
		
			
			String     loc       =  "";
			if(  companyVo != null  ) { // 아이디와 암호가 일치하면
				HttpSession  session =  request.getSession();
				session.setAttribute("login", companyVo );
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
