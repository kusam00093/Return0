package com.board.company.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.company.domain.CompanyBookmarkVo;
import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingStackVo;
import com.board.company.domain.PostingVo;
import com.board.company.domain.UserVo;
import com.board.resume.domain.ResumeVo;

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



	HashMap<String, Object> getPostingMap(CompanyVo companyVo, PostingVo postingVo, int posting_pno);

	List<UserVo> getUserList(UserVo userVo);

	List<UserVo> getUserStackList(UserVo userVo);

	int count(UserVo userVo);

	List<UserVo> getUserPagingList(int offset, int pageSize);

	List<PostingVo> getMyPostingList(PostingVo postingVo);

	void insertPostingStack(PostingStackVo postingStackVo);

	List<ResumeVo> getResumeList(ResumeVo resumeVo);



	PostingStackVo getPostingStack(PostingStackVo postingStackVo);

	void insertPostingStack(List<PostingStackVo> postingStackList);

	List<ResumeVo> getRecommendList(ResumeVo resumeVo);





	boolean existBookmark(CompanyBookmarkVo companyBookmarkVo);

	void deleteBookmark(CompanyBookmarkVo companyBookmarkVo);

	void insertBookmark(CompanyBookmarkVo companyBookmarkVo);

	List<ResumeVo> getBookmarkList(ResumeVo resumeVo);





	//HashMap<String, Object> getPostingList(PostingVo postingVo);


}
