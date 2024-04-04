package com.board.user.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.menus.domain.MenuVo;
import com.board.user.domain.SupportVo;
import com.board.user.domain.UserVo;
import com.board.user.mapper.UserMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
	
	@Autowired
	private UserMapper userMapper;

	// http://localhost:9090
				@RequestMapping("/")
				public  String   home() {
					return "home";
				}
				@RequestMapping("/User/View")
				public ModelAndView view(HttpServletRequest request) {
					String userid = request.getParameter("user_id");
					System.out.println("---------------------");
					System.out.println(userid);
					// 유저정보 가지고오기
					UserVo userVo = userMapper.getInfo(userid);
					
					
					List<HashMap<String, Object>>  map = userMapper.getSupport(userVo);
					//유저가 지원한 공고 정보 가져오기
					log.info("map : {}", map);
					
					ModelAndView    mv    = new ModelAndView();	
					if(userVo !=null) {
						mv.addObject("userVo", userVo);
						mv.addObject("map", map);
					}else {
						System.out.println("아이뒤없음");
						
					}
					
					mv.setViewName("users/view");
					return  mv;
				}
				
}



















