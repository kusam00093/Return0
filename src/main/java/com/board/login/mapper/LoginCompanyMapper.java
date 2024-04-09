package com.board.login.mapper;

import java.util.HashMap;




import org.apache.ibatis.annotations.Mapper;


import com.board.login.domain.LoginCompanyVo;



@Mapper
public interface LoginCompanyMapper {

void insertCompany(LoginCompanyVo companyVo); 
	
	
	

	HashMap<String, Object> getCompany(LoginCompanyVo companyVo);
	
LoginCompanyVo login(String com_id, String com_passwd);
}
