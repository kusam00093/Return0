package com.board.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.HomeSearchLikeVo;
import com.board.domain.HomeSearchVo;
import com.board.mapper.HomeMapper;
import com.board.user.bookmark.domain.BookmarkVo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@Autowired
	private HomeMapper homeMapper;
	
	@RequestMapping("/")
	public  ModelAndView   home() {
		ModelAndView    mv    = new ModelAndView("home");
		List<HomeSearchVo> homeSearchVo = homeMapper.getAllList(); 
		
		mv.addObject("homeSearchVo", homeSearchVo);
		
		
		return mv;
	}
	@RequestMapping("/Home/Search")
	public ResponseEntity<String> likeHome(@RequestBody  HomeSearchLikeVo request) throws JsonProcessingException{
		if (request.getDepartment().equals("전체")) {
	        request.setDepartment(null);
	    }
		if (request.getLocal().equals("전체")) {
	        request.setLocal(null);
	    }
		if (request.getCareer().equals("경력무관")) {
	        request.setCareer(null);
	    }
		System.out.println(request);
		System.out.println(request);
		System.out.println(request);
		
			List<HomeSearchVo> homeSearchVo = homeMapper.getLikeList(request);
			
			ObjectMapper objectMapper = new ObjectMapper();
			String homeSearchString = objectMapper.writeValueAsString(homeSearchVo);
			System.out.println(homeSearchString);
	    	
	    	 return ResponseEntity.ok(homeSearchString);
	}


	
}








