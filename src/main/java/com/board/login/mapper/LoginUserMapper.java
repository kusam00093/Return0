package com.board.login.mapper;

import java.util.HashMap;


import org.apache.ibatis.annotations.Mapper;

import com.board.login.domain.LoginUserVo;


@Mapper
public interface LoginUserMapper {


void insertUser(LoginUserVo userVo);

	HashMap<String, Object> getUser(LoginUserVo userVo);

LoginUserVo login(String user_id, String user_passwd);

	

}
