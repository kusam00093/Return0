package com.board.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.LoginCompanyVo;
import com.board.login.mapper.LoginCompanyMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


	@Controller
	public class LoginCompanyController {

	

		@RequestMapping("/writeform")
		public ModelAndView writeform() {
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/login/writeform");
			return mv;
		}
	

		@RequestMapping("/Company/Login")
		public ModelAndView companyLogin() {
			ModelAndView mv= new ModelAndView();
			mv.setViewName("/login/comlogin");
			return mv;
		}
		@Autowired
		private LoginCompanyMapper logincompanyMapper;

		
		
		@RequestMapping("/comlogin")
		

			public   ModelAndView   login( HttpServletRequest  request  ) {
				
				String     com_id    =  request.getParameter("com_id");
				String     com_passwd    =  request.getParameter("com_passwd");
				
				LoginCompanyVo     companyVo    =  logincompanyMapper.login( com_id, com_passwd  ); 
			
				
				String     loc       =  "";
				if(  companyVo != null  ) { // 아이디와 암호가 일치하면
					HttpSession  session =  request.getSession();
					session.setAttribute("companyLogin", companyVo );
					session.setMaxInactiveInterval(30 * 60); // 30분 동안 유지
				    loc    =  "redirect:/";  
				} else {  // 아이디 비번 틀림
					loc    =  "/login/loginform"; 
				}
				
				ModelAndView  mv  = new ModelAndView();
				mv.setViewName( loc );		
				return  mv;
				
			}
		
		
	
		
		
		@RequestMapping("/Login/Writeform")
		public ModelAndView companyWriteform() {
			ModelAndView mv= new ModelAndView();
			mv.setViewName("/login/comwrite");
			
			return mv;
		}
		@RequestMapping("/Company/Write")
		public ModelAndView companyWrite() {
			ModelAndView mv= new ModelAndView();
			mv.setViewName("/login/comwrite");
			return mv;
		}
		@RequestMapping("/comWrite")
		public ModelAndView write(LoginCompanyVo companyVo) {
			// 저장
			LoginCompanyMapper.insertCom(companyVo);

			// 데이터를 가지고 이동한다
			ModelAndView mv = new ModelAndView();

			mv.setViewName("redirect:/");
			return mv;

		}
}
