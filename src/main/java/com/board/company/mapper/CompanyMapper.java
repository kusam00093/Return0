package com.board.company.mapper;

import java.util.HashMap;
import java.util.List;

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

	List<PostingVo> getPostingList(PostingVo postingVo);

	void postingDelete(PostingVo postingVo);

	void deleteCompany(CompanyVo companyVo);



	HashMap<String, Object> getPostingMap(CompanyVo companyVo, PostingVo postingVo);

	//HashMap<String, Object> getPostingList(PostingVo postingVo);


}
