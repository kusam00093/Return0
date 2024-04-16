package com.board.user.mapper;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.user.bookmark.domain.BookmarkVo;
import com.board.user.domain.RserviceVo;
import com.board.user.domain.SupportVo;
import com.board.user.domain.UserVo;

@Mapper
public interface UserMapper {

   UserVo getInfo(String userid);

   List<HashMap<String, Object>> getSupport(UserVo userVo);

   

   List<RserviceVo> getRecommend(UserVo userVo);

   List<HashMap<String, Object>> getBookList(UserVo userVo);

   List<HashMap<String, Object>> getCtlBookList(BookmarkVo request);

int totalSupport(UserVo userVo);

UserVo getInfo(UserVo userVo);

void userDelete(UserVo userVo);

void userUpdate(UserVo userVo);

  

   


   

}