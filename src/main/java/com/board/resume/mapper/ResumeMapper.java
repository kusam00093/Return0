package com.board.resume.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.resume.domain.ResumeCareerVo;
import com.board.resume.domain.ResumeGradeVo;
import com.board.resume.domain.ResumeLicenseVo;
import com.board.resume.domain.ResumeVo;


@Mapper
public interface ResumeMapper {

	
	List<ResumeVo> getResumeList();

	void deleteResume(ResumeVo resumeVo);

	void insertResume(ResumeVo resumeVo);

//	void insertResumeCareer(ResumeCareerVo resumeCareerVo);

	void insertResumeGrade(ResumeGradeVo resumeGradeVo);

	void insertResumeLicense(ResumeLicenseVo resumeLicenseVo);
    
	void insertAllResumeCareer(List<ResumeCareerVo> resumeAllCareerVo);
	
	void updateResume(ResumeVo resumeVo);

	void updateResumeCareer(ResumeCareerVo resumeCareerVo);

	void updateResumeGrade(ResumeGradeVo resumeGradeVo);

	void updateResumeLicense(ResumeLicenseVo resumeLicenseVo);
	
	
	HashMap<String, Object> getResume(ResumeVo resumeVo);

	HashMap<String, Object> getResumeCareer(ResumeCareerVo resumeCareerVo);

	HashMap<String, Object> getResumeGrade(ResumeGradeVo resumeGradeVo);

	HashMap<String, Object> getResumeLicense(ResumeLicenseVo resumeLicenseVo);

	

	

//	HashMap<String, Object> getResumeMap(ResumeVo resumeVo, ResumeCareerVo resumeCareerVo,
//			ResumeLicenseVo resumeLicenseVo, ResumeGradeVo resumeGradeVo);
}
