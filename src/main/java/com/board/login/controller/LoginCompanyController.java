package com.board.login.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.LoginCompanyVo;
import com.board.login.mapper.LoginCompanyMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


	@Controller
	public class LoginCompanyController {
		
		
		
	
		@Autowired
		private LoginCompanyMapper companyMapper;

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


		
		
		@RequestMapping("/comlogin")
		

			public   ModelAndView   login( HttpServletRequest  request  ) {
				
				String     com_id    =  request.getParameter("com_id");
				String     com_passwd    =  request.getParameter("com_passwd");
				
				LoginCompanyVo     companyVo    =  companyMapper.login( com_id, com_passwd  ); 
			
				
				String     loc       =  "";
				if(  companyVo != null  ) { // 아이디와 암호가 일치하면
					HttpSession  session =  request.getSession();
					session.setAttribute("login", companyVo );
					session.setMaxInactiveInterval(30 * 60); // 30분 동안 유지
				    loc    =  "redirect:/";  
				} else {  // 아이디 비번 틀림
					loc    =  "/login/comlogin"; 
					
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
		@RequestMapping("/comwrite")
		public ModelAndView write(LoginCompanyVo companyVo) {
			// 저장
			companyMapper.insertCompany(companyVo);

			// 데이터를 가지고 이동한다
			ModelAndView mv = new ModelAndView();

			mv.setViewName("redirect:/");
			return mv;

		}
		@RequestMapping("/IdDupCheck1")
		@ResponseBody
		public String IdDupCheck(LoginCompanyVo companyVo) {
			
			HashMap<String, Object>  map =  companyMapper.getCompany(companyVo);
			System.out.println(map);
			// db id 중복체크 결과(서버data) 를 html 에 돌려준다
			
			if ( map == null  ) {
				return "<h2 style='color:green'>사용가능한 아이디입니다</h2>";
			} else {
				if( companyVo.getCom_id().equals(map.get("con_id"))) {
					return "<h2 style='color:red'>사용할 수 없는 아이디입니다</h2>";			
				} 
			
			}
			return "<h2 style='color:red'>사용할 수 없는 아이디입니다</h2>";}}

