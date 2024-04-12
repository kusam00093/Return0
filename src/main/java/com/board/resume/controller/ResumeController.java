package com.board.resume.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.LoginUserVo;
import com.board.resume.domain.ResumeCareerVo;
import com.board.resume.domain.ResumeGradeVo;
import com.board.resume.domain.ResumeLicenseVo;
import com.board.resume.domain.ResumeVo;
import com.board.resume.mapper.ResumeMapper;
import com.board.resume.userVo.UserVo;
import com.board.user.domain.UserStackVo;
import com.board.user.mapper.UserMapper;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Resume")
public class ResumeController {
	 
	@Autowired
	private  ResumeMapper  resumeMapper; 
	
	@Autowired
	 private UserMapper userMapper;
	 
	@RequestMapping("/List")
		public  ModelAndView  list(HttpServletRequest request) {
		   HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   	   
		    
			// 이력서 목록 조회
	        List<ResumeVo>  resumeList = resumeMapper.getResumeList(loginUserVo);
			System.out.println("loginUserVo ========" + loginUserVo);
			ModelAndView  mv       = new ModelAndView();
			
			mv.addObject( "resumeList",  resumeList  );
			mv.setViewName("resume/resumeList");
			
			return  mv;
		}
	 @RequestMapping("/WriteForm")
	 public  ModelAndView   writeForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		String user_id = loginUserVo.getUser_id();
		String user_name = loginUserVo.getUser_name();
		ModelAndView    mv    = new ModelAndView();
		mv.addObject("user_id", user_id);
		mv.addObject("user_name", user_name);
		mv.setViewName("resume/write");
		return  mv;
		
	 }
	
	 @RequestMapping("/Write")
		public  ModelAndView  write( ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo,HttpServletRequest request,
				UserStackVo userStackVo) {		
			// 저장
		   //resumeMapper.insertResumeAll( resumeVo, resumeCareerVo, resumeGradeVo);
		  
		 
		   resumeMapper.insertResume( resumeVo );		
		   resumeMapper.insertResumeCareer( resumeCareerVo );		
		   resumeMapper.insertResumeGrade( resumeGradeVo );		
		   resumeMapper.insertResumeLicense( resumeLicenseVo );		
		   resumeMapper.insertUserStackVo( userStackVo );		
	
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	 
	 @RequestMapping("/ResumeApply")
	 public  ModelAndView   resumeApply(HttpServletRequest request, ResumeVo  ResumeVo, int nowpage) {
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   ResumeVo resumeVo = new ResumeVo();
		  
			// 이력서 목록 조회
	        List<ResumeVo>  resumeList = resumeMapper.getResumeList(loginUserVo);
	        resumeMapper.selectResumeApply( resumeVo );	
	        
			ModelAndView  mv       = new ModelAndView();
			
			mv.addObject( "resumeList",  resumeList  );
			mv.setViewName("redirect:/Company/List?nowpage"+nowpage);
			
			return  mv;
		}
	 
	 
	 
	 @RequestMapping("/Delete")
	 public  ModelAndView  delete( ResumeVo  resumeVo ) {		
			// 저장
		   resumeMapper.deleteResume( resumeVo );		
		   String user_id = resumeVo.getUser_id();
		  
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.addObject("user_id",user_id);
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	 
	 @RequestMapping("/View")
	 public ModelAndView views( ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo, UserVo userVo, HttpServletRequest request ) {
		 // resume_rno=aa db 조회
		 
		 HashMap<String,Object> mapResume = resumeMapper.getResume(resumeVo);
		 
		 HashMap<String,Object> mapResumeLicense = resumeMapper.getResumeLicense(resumeLicenseVo);
		 HashMap<String,Object> mapResumeCareer = resumeMapper.getResumeCareer(resumeCareerVo);
		 HashMap<String,Object> mapResumeGrade = resumeMapper.getResumeGrade(resumeGradeVo);
		
			HttpSession session = request.getSession();
			LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		 String user_name = loginUserVo.getUser_name();
		 
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
		 mv.addObject("user_name", user_name );
		 
//		 mv.addObject("map", map);
		 mv.setViewName("resume/views");
		
		 return mv;
	 }
	 
	 @RequestMapping("/UpdateForm")
	 public  ModelAndView   updateForm(ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo, HttpServletRequest request) {
		 // resume_rno 로 수정할 한면의 데이터를 조회
		 HashMap<String,Object> mapResume = resumeMapper.getResume(resumeVo);
		 HashMap<String,Object> mapResumeLicense = resumeMapper.getResumeLicense(resumeLicenseVo);
		 HashMap<String,Object> mapResumeCareer = resumeMapper.getResumeCareer(resumeCareerVo);
		 HashMap<String,Object> mapResumeGrade = resumeMapper.getResumeGrade(resumeGradeVo);
		 
		 HttpSession session = request.getSession();
		 LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		 String user_name = loginUserVo.getUser_name();
		 
		 //  Model 에 담는다
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("mapResume", mapResume );
		 mv.addObject("mapResumeLicense", mapResumeLicense );
		 mv.addObject("mapResumeCareer", mapResumeCareer	);
		 mv.addObject("mapResumeGrade", mapResumeGrade	);
		 mv.addObject("user_name", user_name);
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
	
	

