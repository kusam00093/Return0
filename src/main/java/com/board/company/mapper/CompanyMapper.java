package com.board.company.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingVo;

@Mapper
public interface CompanyMapper {
	void getUpdate(PostingVo postingVo);

	PostingVo getPosting(PostingVo postingVo);

	void insertPosting(PostingVo postingVo);

	void insertComuser(CompanyVo companyVo);

	CompanyVo getCompany(CompanyVo companyVo);

	void updateCompany(CompanyVo companyVo);

}
