package com.board.company.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingVo;
import com.board.company.domain.UserVo;

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

	List<UserVo> getUserList(UserVo userVo);

	List<UserVo> getUserStackList(UserVo userVo);

	int count(UserVo userVo);

	List<UserVo> getUserPagingList(int offset, int pageSize);

	//HashMap<String, Object> getPostingList(PostingVo postingVo);


}
