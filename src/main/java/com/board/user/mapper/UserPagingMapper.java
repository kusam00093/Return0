package com.board.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.board.user.domain.UserVo;

@Mapper
public interface UserPagingMapper {

	int count(UserVo userVo);

	

	
	List<UserVo> getUserPagingList(String userid, int nowpage, int pageSize);
}
