package com.board.user.mapper;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.domain.BoardVo;
import com.board.user.domain.RserviceVo;
import com.board.user.domain.SupportVo;
import com.board.user.domain.UserVo;

@Mapper
public interface UserMapper {

	UserVo getInfo(String userid);

	List<HashMap<String, Object>> getSupport(UserVo userVo);

	

	List<HashMap<String, Object>> getRecommend(UserVo userVo);

	


	

}





