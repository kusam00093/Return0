package com.board.login.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.login.domain.UserVo;


@Mapper
public interface LoginMapper {

	List<UserVo> getUserList();

	void insertUser(UserVo userVo);

	HashMap<String, Object> getUser(UserVo userVo);

	

}
