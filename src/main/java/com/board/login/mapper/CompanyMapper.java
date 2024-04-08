package com.board.login.mapper;

import java.util.HashMap;



import org.apache.ibatis.annotations.Mapper;


import com.board.login.domain.CompanyVo;



@Mapper
public interface CompanyMapper {

	static void insertCom(CompanyVo companyVo) {
		// TODO Auto-generated method stub
		
	}

	HashMap<String, Object> getCompany(CompanyVo companyVo);
	
CompanyVo login(String com_id, String com_passwd);
}
