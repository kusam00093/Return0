package com.board.user.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.board.user.domain.Pagination;
import com.board.user.domain.PagingResponse;
import com.board.user.domain.RserviceVo;
import com.board.user.domain.SearchVo;
import com.board.user.domain.UserVo;
import com.board.user.mapper.UserMapper;
import com.board.user.mapper.UserPagingMapper;
import com.fasterxml.jackson.core.JsonProcessingException;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
   
   @Autowired
   private UserMapper userMapper;
   
   @Autowired
   private UserPagingMapper userPagingMapper;
   
   


            
            @RequestMapping("/User/View")
            public ModelAndView view(HttpServletRequest request, int nowpage) throws JsonProcessingException {
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
               
               int count = userPagingMapper.count(userVo);
               PagingResponse<UserVo> response = null;
               if(count < 1) {
            	   response =  new PagingResponse<>(Collections.emptyList(), null);
               }
               
              SearchVo   searchVo   =  new SearchVo(); //레코드 3개 페이지사이즈 5
              searchVo.setPage(nowpage);
              searchVo.setPageSize(5); // 페이지사이즈 5
              Pagination pagination = new Pagination(count, searchVo);
              searchVo.setPagination(pagination);
              
              //userid
              int         offset    =  searchVo.getOffset();
              int         recordSize  =  searchVo.getRecordSize();
              
              List<UserVo> list = userPagingMapper.getUserPagingList(userid, offset, recordSize);
              response =  new PagingResponse<>(list, pagination);
              
              System.out.println( response );
              System.out.println( response );
              System.out.println( response );
              System.out.println( response );
               
               ModelAndView    mv    = new ModelAndView();   
               if(userVo !=null) {
                  mv.addObject("userVo", userVo);
                  mv.addObject("map", map);
                  mv.addObject("rec", rec);
                  mv.addObject("book", book);
                  
                  mv.addObject("userid",    userid );
                  mv.addObject("searchVo",   searchVo );
                  mv.addObject("nowpage",    nowpage );
                  mv.addObject("response",   response );  // list.jsp 
          		  
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


















