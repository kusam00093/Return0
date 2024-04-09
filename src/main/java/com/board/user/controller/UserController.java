package com.board.user.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.user.domain.RserviceVo;
import com.board.user.domain.SupportVo;
import com.board.user.domain.UserVo;
import com.board.user.mapper.UserMapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
   
   @Autowired
   private UserMapper userMapper;
   
   

   // http://localhost:9090
         
            @RequestMapping("/User/View")
            public ModelAndView view(HttpServletRequest request) throws JsonProcessingException {
               String userid = request.getParameter("user_id");
               System.out.println("---------------------");
               System.out.println(userid);
               // 유저정보 가지고오기
               UserVo userVo = userMapper.getInfo(userid);
               
               //유저가 지원한 공고 정보 가져오기
               List<HashMap<String, Object>>  map = userMapper.getSupport(userVo);
               
               RserviceVo rserviceVo = new RserviceVo();
               // 유저와 공고의 매칭 서비스
               List<HashMap<String, Object>> rec  = userMapper.getRecommend(userVo);
               
               // 유저가 체크한 북마크 목록가져오기
               List<HashMap<String, Object>> book = userMapper.getBookList(userVo);
               //ObjectMapper objectMapper = new ObjectMapper();
               log.info("map : {}", rec);
               
               ModelAndView    mv    = new ModelAndView();   
               if(userVo !=null) {
                  mv.addObject("userVo", userVo);
                  mv.addObject("map", map);
                  mv.addObject("rec", rec);
                  mv.addObject("book", book);
               // book 리스트를 JSON 문자열로 변환
                 // String bookJson = objectMapper.writeValueAsString(book);

                  // 모델에 JSON 문자열 추가
                //  mv.addObject("bookJson", bookJson);
               }else {
                  System.out.println("아이뒤없음");
                  
               }
               
               mv.setViewName("users/view");
               return  mv;
            }
            
            
            
}


















