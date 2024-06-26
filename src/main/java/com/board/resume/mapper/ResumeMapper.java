package com.board.resume.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.company.domain.PostingVo;
import com.board.login.domain.LoginUserVo;
import com.board.resume.domain.ApplicantRecodeVo;
import com.board.resume.domain.ResumeCareerVo;
import com.board.resume.domain.ResumeGradeVo;
import com.board.resume.domain.ResumeLicenseVo;
import com.board.resume.domain.ResumeVo;
import com.board.resume.domain.UserStackVo;



@Mapper
public interface ResumeMapper {

	
	List<ResumeVo> getResumeList(LoginUserVo loginUserVo);

	void deleteResume(ResumeVo resumeVo);

	void insertResume(ResumeVo resumeVo);

	void insertResumeCareer(ResumeCareerVo resumeCareerVo);

	void insertResumeGrade(ResumeGradeVo resumeGradeVo);

	void insertResumeLicense(ResumeLicenseVo resumeLicenseVo);
    
	void insertUserStack(UserStackVo userStackVo);
	
	void updateResume(ResumeVo resumeVo);

	void updateResumeCareer(ResumeCareerVo resumeCareerVo);

	void updateResumeGrade(ResumeGradeVo resumeGradeVo);

	void updateResumeLicense(ResumeLicenseVo resumeLicenseVo);
	
//	void updateUserStack(UserStackVo userStackVo);
	
//	void insertUserStack(List<UserStackVo> resumeStackList);

	
	void cancelResumeApply(ApplicantRecodeVo applicantRecodeVo);
	
	HashMap<String, Object> getResume(ResumeVo resumeVo);

	HashMap<String, Object> getResumeCareer(ResumeCareerVo resumeCareerVo);

	HashMap<String, Object> getResumeGrade(ResumeGradeVo resumeGradeVo);

	HashMap<String, Object> getResumeLicense(ResumeLicenseVo resumeLicenseVo);

	HashMap<String, Object> getUserStack(UserStackVo userStackVo);

	void insertResumeApply(ApplicantRecodeVo applicantRecodeVo);

	

	

	

	

	

	

//	HashMap<String, Object> getResumeMap(ResumeVo resumeVo, ResumeCareerVo resumeCareerVo,
//			ResumeLicenseVo resumeLicenseVo, ResumeGradeVo resumeGradeVo);
}
