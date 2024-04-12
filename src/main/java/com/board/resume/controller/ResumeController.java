package com.board.resume.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.resume.domain.ResumeCareerVo;
import com.board.resume.domain.ResumeGradeVo;
import com.board.resume.domain.ResumeLicenseVo;
import com.board.resume.domain.ResumeVo;
import com.board.resume.mapper.ResumeMapper;
import com.board.resume.userVo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Resume")
public class ResumeController {
	 
	@Autowired
	private  ResumeMapper  resumeMapper; 
	
	@RequestMapping("/List")
    public  ModelAndView  list(HttpServletRequest request) {
       HttpSession session = request.getSession();
//       LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
       ResumeVo resumevo = new ResumeVo();
//       resumevo.setUser_id(loginUserVo.getUser_id());
       int resume_rno = resumevo.getResume_rno();
       // 사용자 목록 조회
       
         List<ResumeVo>  resumeList = resumeMapper.getResumeList();
       
       ModelAndView  mv       = new ModelAndView();
       mv.addObject( "resumeList",  resumeList  );
       mv.setViewName("resume/resumeList");
       
       return  mv;
    }

	 @RequestMapping("/WriteForm")
	 public  ModelAndView   writeForm(UserVo userVo) {
		String user_id = userVo.getUser_id();
		ModelAndView    mv    = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.setViewName("resume/write");
		return  mv;
		
	 }
	
	 @RequestMapping("/Write")
		public  ModelAndView  write( ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo) {		
			// 저장
		   		
		   resumeMapper.insertResume( resumeVo );		
//		   resumeMapper.insertResumeCareer( resumeCareerVo );		
		   List<ResumeCareerVo> resumeAllCareerVo = new ArrayList<>();
		   resumeMapper.insertAllResumeCareer(resumeAllCareerVo);
		   resumeMapper.insertResumeGrade( resumeGradeVo );		
		   resumeMapper.insertResumeLicense( resumeLicenseVo );		
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	 
	 @RequestMapping("/Delete")
	 public  ModelAndView  delete( ResumeVo  resumeVo ) {		
			// 저장
		   resumeMapper.deleteResume( resumeVo );		
			
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	 
	 @RequestMapping("View")
	 public ModelAndView views( ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo ) {
		 // resume_rno=aa db 조회
		 HashMap<String,Object> mapResume = resumeMapper.getResume(resumeVo);
		 HashMap<String,Object> mapResumeLicense = resumeMapper.getResumeLicense(resumeLicenseVo);
		 HashMap<String,Object> mapResumeCareer = resumeMapper.getResumeCareer(resumeCareerVo);
		 HashMap<String,Object> mapResumeGrade = resumeMapper.getResumeGrade(resumeGradeVo);
//		 HashMap<String,Object> map = resumeMapper.getResumeMap(resumeVo,resumeCareerVo,resumeLicenseVo,resumeGradeVo);
		 // map.get("resume_rno")
		 log.info("mapResume: {}", mapResume);
		 log.info("mapResumeLicense: {}", mapResumeLicense);
		 log.info("mapResumeCareer: {}", mapResumeCareer);
		 log.info("mapResumeGrade: {}", mapResumeGrade);
	
		 ModelAndView mv = new ModelAndView()	;
		 mv.addObject("mapResume", mapResume );
		 mv.addObject("mapResumeLicense", mapResumeLicense );
		 mv.addObject("mapResumeCareer", mapResumeCareer	);
		 mv.addObject("mapResumeGrade", mapResumeGrade	);
//		 mv.addObject("map", map);
		 mv.setViewName("resume/views");
		
		 return mv;
	 }
	 
	 @RequestMapping("/UpdateForm")
	 public  ModelAndView   updateForm(ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo) {
		 // resume_rno 로 수정할 한면의 데이터를 조회
		 HashMap<String,Object> mapResume = resumeMapper.getResume(resumeVo);
		 HashMap<String,Object> mapResumeLicense = resumeMapper.getResumeLicense(resumeLicenseVo);
		 HashMap<String,Object> mapResumeCareer = resumeMapper.getResumeCareer(resumeCareerVo);
		 HashMap<String,Object> mapResumeGrade = resumeMapper.getResumeGrade(resumeGradeVo);
		 //  Model 에 담는다
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("mapResume", mapResume );
		 mv.addObject("mapResumeLicense", mapResumeLicense );
		 mv.addObject("mapResumeCareer", mapResumeCareer	);
		 mv.addObject("mapResumeGrade", mapResumeGrade	);
		 mv.setViewName("resume/update");
		 return mv;
	 }
	 
	 @RequestMapping("/Update")
	 public  ModelAndView  update( ResumeVo  resumeVo, 
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo,
				ResumeLicenseVo resumeLicenseVo) {		
			// 저장
		 
		 resumeMapper.updateResume( resumeVo );
		 resumeMapper.updateResumeCareer( resumeCareerVo );		
		 resumeMapper.updateResumeGrade( resumeGradeVo );		
		 resumeMapper.updateResumeLicense( resumeLicenseVo );		
			
		 //log.info( "userVo : {}",  resumeVo  );
		 //log.info( "updateResumeCareer : {}",  resumeCareerVo  );
		 //log.info( "updateResumeGrade : {}",  resumeGradeVo  );
		 //log.info( "updateResumeLicense : {}",  resumeLicenseVo  );
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	
	
}
	
	

