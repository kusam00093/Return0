package com.board.resume.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingVo;
import com.board.company.mapper.CompanyMapper;
import com.board.login.domain.LoginUserVo;
import com.board.resume.domain.ApplicantRecodeVo;
import com.board.resume.domain.ResumeCareerVo;
import com.board.resume.domain.ResumeGradeVo;
import com.board.resume.domain.ResumeLicenseVo;
import com.board.resume.domain.ResumeVo;
import com.board.resume.domain.UserStackVo;
import com.board.resume.mapper.ResumeMapper;
import com.board.resume.userVo.UserVo;
//import com.board.user.domain.UserStackVo;
import com.board.user.mapper.UserMapper;

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
	private CompanyMapper companyMapper;
	@RequestMapping("/List")
		public  ModelAndView  list(HttpServletRequest request) {
		   HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name(); 
		    
			// 이력서 목록 조회
	        List<ResumeVo>  resumeList = resumeMapper.getResumeList(loginUserVo);
			System.out.println("loginUserVo ========" + loginUserVo);
			ModelAndView  mv       = new ModelAndView();
			
			mv.addObject( "resumeList",  resumeList  );
			mv.addObject("user_id", user_id);
			mv.addObject("user_name", user_name);
			mv.setViewName("resume/resumeList");
			
			return  mv;
		}
	 @RequestMapping("/WriteForm")
	 public  ModelAndView   writeForm(HttpServletRequest request, ResumeVo resemeVo) {
		HttpSession session = request.getSession();
		LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		String user_id = loginUserVo.getUser_id();
		String user_name = loginUserVo.getUser_name();
		int resume_rno = resemeVo.getResume_rno();
		ModelAndView    mv    = new ModelAndView();
		mv.addObject("user_id", user_id);
		mv.addObject("user_name", user_name);
		mv.addObject("resume_rno", resume_rno);
		mv.setViewName("resume/write");
		return  mv;
		
	 }
	
	 @RequestMapping("/Write")
		public  ModelAndView  write( ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo,HttpServletRequest request,
				UserStackVo userStackVo) {		
			// 저장
		   //resumeMapper.insertResumeAll( resumeVo, resumeCareerVo, resumeGradeVo);
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name(); 
		   int resume_rno = resumeVo.getResume_rno();
//		   // 스택 각자 행 삽입
//		   List<UserStackVo> resumeStackList = new ArrayList<>();
//		   String []  stackList = userStackVo.getUser_stack_name().split(",");
//		   for (String user_stack_name : stackList) {
//			   resumeStackList.add(new UserStackVo(userStackVo.getUser_stack_name(), user_stack_name));
//		   }
		 
		   resumeMapper.insertResume( resumeVo );		
		   resumeMapper.insertResumeCareer( resumeCareerVo );		
		   resumeMapper.insertResumeGrade( resumeGradeVo );		
		   resumeMapper.insertResumeLicense( resumeLicenseVo );		
		   resumeMapper.insertUserStack( userStackVo );		
		  
//		   resumeMapper.insertUserStack( resumeStackList );	
		   
			
	
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.addObject("user_id",user_id);
			mv.addObject("resume_rno", resume_rno);
			
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	 
	 @RequestMapping("/ResumeApplyList")
	 public ModelAndView resumeApplyForm(HttpServletRequest request, ResumeVo  resumeVo, int nowpage,
			 CompanyVo companyVo,PostingVo postingVo, ApplicantRecodeVo applicantRecodeVo) {
		   HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name();
		   int posting_pno = postingVo.getPosting_pno();
		   int resume_rno = resumeVo.getResume_rno();
		   postingVo.setPosting_pno(posting_pno);
		   PostingVo vo = companyMapper.getPosting(postingVo);
		   List<ResumeVo>  resumeList = resumeMapper.getResumeList(loginUserVo);
		   
		    ModelAndView mv = new ModelAndView();
		    mv.addObject("user_id", user_id);
			mv.addObject( "resumeList",  resumeList  );
			mv.addObject("applicantRecodeVo", applicantRecodeVo);
			mv.addObject("resume_rno", resume_rno);
			mv.addObject("posting_pno", posting_pno);
			mv.addObject("nowpage",nowpage);
			mv.addObject("vo",vo);
			mv.setViewName("resume/resumeApply");
			
		   
		   return mv;
	 }
	 
	 @RequestMapping("/ResumeApply")
	 public  ModelAndView   resumeApply(HttpServletRequest request, ResumeVo  resumeVo, int nowpage,
			 CompanyVo companyVo,PostingVo postingVo, ApplicantRecodeVo applicantRecodeVo) {
		
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name();
		   int posting_pno = postingVo.getPosting_pno();
		   int resume_rno = resumeVo.getResume_rno();
		   postingVo.setPosting_pno(posting_pno);
		  
			
	        
	        resumeMapper.insertResumeApply( applicantRecodeVo );	
	        
			ModelAndView  mv       = new ModelAndView();
			mv.addObject("user_id", user_id);
			mv.addObject("applicantRecodeVo", applicantRecodeVo);
			mv.addObject("posting_pno", posting_pno);
			mv.addObject("resume_rno", resume_rno);
			mv.addObject("nowpage",nowpage);
			mv.setViewName("redirect:/Company/PostingView?nowpage"+nowpage);
			return  mv;
		}
	 
	 @RequestMapping("/ResumeApplyCancel")
	 public  ModelAndView   resumeApplyCancel(HttpServletRequest request, ResumeVo  resumeVo, int nowpage,
			 CompanyVo companyVo,PostingVo postingVo, ApplicantRecodeVo applicantRecodeVo) {
		
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name();
		   int posting_pno = postingVo.getPosting_pno();
		   int resume_rno = resumeVo.getResume_rno();
		   postingVo.setPosting_pno(posting_pno);
		  
	        resumeMapper.cancelResumeApply( applicantRecodeVo );	
	        
			ModelAndView  mv       = new ModelAndView();
			mv.addObject("user_id", user_id);
			mv.addObject("applicantRecodeVo", applicantRecodeVo);
			mv.addObject("posting_pno", posting_pno);
			mv.addObject("resume_rno", resume_rno);
			mv.addObject("nowpage",nowpage);
			mv.setViewName("redirect:/Company/PostingView?nowpage"+nowpage);
			return  mv;
		}
	 
	 
	 @RequestMapping("/Delete")
	 public  ModelAndView  delete(HttpServletRequest request, ResumeVo  resumeVo ) {		
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name(); 
		   int resume_rno = resumeVo.getResume_rno();
		 
		 // 저장
		   resumeMapper.deleteResume( resumeVo );		
		  
		  
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.addObject("user_id",user_id);
			mv.addObject("resume_rno", resume_rno);
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	 
	 @RequestMapping("/View")
	 public ModelAndView views( ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo,UserStackVo userStackVo, UserVo userVo, HttpServletRequest request ) {
		 // resume_rno=aa db 조회
		 
		 
		    HttpSession session = request.getSession();
		    LoginUserVo loginuserVo = (LoginUserVo) session.getAttribute("userLogin");
		    String user_id = (loginuserVo != null) ? loginuserVo.getUser_id() : null;
		    String user_name = (loginuserVo != null) ? loginuserVo.getUser_name() : null;
		   int resume_rno = resumeVo.getResume_rno();
		 
		 HashMap<String,Object> mapResume = resumeMapper.getResume(resumeVo);
		 HashMap<String,Object> mapResumeLicense = resumeMapper.getResumeLicense(resumeLicenseVo);
		 HashMap<String,Object> mapResumeCareer = resumeMapper.getResumeCareer(resumeCareerVo);
		 HashMap<String,Object> mapResumeGrade = resumeMapper.getResumeGrade(resumeGradeVo);
		 HashMap<String,Object> mapUserStack = resumeMapper.getUserStack(userStackVo);
		
			
		 
//		 HashMap<String,Object> map = resumeMapper.getResumeMap(resumeVo,resumeCareerVo,resumeLicenseVo,resumeGradeVo);
		 // map.get("resume_rno")
		 log.info("mapResume: {}", mapResume);
		 log.info("mapResumeLicense: {}", mapResumeLicense);
		 log.info("mapResumeCareer: {}", mapResumeCareer);
		 log.info("mapResumeGrade: {}", mapResumeGrade);
//		 log.info("mapUserStack: {}", mapUserStack);
		 ModelAndView mv = new ModelAndView()	;
		 mv.addObject("mapResume", mapResume );
		 mv.addObject("mapResumeLicense", mapResumeLicense );
		 mv.addObject("mapResumeCareer", mapResumeCareer	);
		 mv.addObject("mapResumeGrade", mapResumeGrade	);
		 mv.addObject("mapUserStack", mapUserStack	);
		 mv.addObject("user_name", user_name );
		 mv.addObject("user_id", user_id );
		  
//		 mv.addObject("map", map);
		 mv.setViewName("resume/views");
		
		 return mv;
	 }
	 
	 @RequestMapping("/UpdateForm")
	 public  ModelAndView   updateForm(UserStackVo userStackVo,ResumeVo  resumeVo, ResumeLicenseVo resumeLicenseVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo, HttpServletRequest request) {
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name(); 
		   int resume_rno = resumeVo.getResume_rno();
		 // resume_rno 로 수정할 한면의 데이터를 조회
		 HashMap<String,Object> mapResume = resumeMapper.getResume(resumeVo);
		 HashMap<String,Object> mapResumeLicense = resumeMapper.getResumeLicense(resumeLicenseVo);
		 HashMap<String,Object> mapResumeCareer = resumeMapper.getResumeCareer(resumeCareerVo);
		 HashMap<String,Object> mapResumeGrade = resumeMapper.getResumeGrade(resumeGradeVo);
//		 HashMap<String,Object> mapUserStack = resumeMapper.getUserStack(userStackVo);
	
		 
		 //  Model 에 담는다
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("mapResume", mapResume );
		 mv.addObject("mapResumeLicense", mapResumeLicense );
		 mv.addObject("mapResumeCareer", mapResumeCareer	);
		 mv.addObject("mapResumeGrade", mapResumeGrade	);
//		 mv.addObject("mapUserStack", mapUserStack	);
		 mv.addObject("user_name", user_name);
		 mv.setViewName("resume/update");
		 return mv;
	 }
	 
	 @RequestMapping("/Update")
	 public  ModelAndView  update( ResumeVo  resumeVo, UserStackVo userStackVo,
				ResumeCareerVo resumeCareerVo, ResumeGradeVo resumeGradeVo,
				ResumeLicenseVo resumeLicenseVo, HttpServletRequest request) {	
		 
		 HttpSession session = request.getSession();
		   LoginUserVo loginUserVo = (LoginUserVo)session.getAttribute("userLogin");
		   String user_id = request.getParameter("user_id");
		   String user_name = loginUserVo.getUser_name(); 
		   int resume_rno = resumeVo.getResume_rno();
		   // 저장
		 
		 resumeMapper.updateResume( resumeVo );
		 resumeMapper.updateResumeCareer( resumeCareerVo );		
		 resumeMapper.updateResumeGrade( resumeGradeVo );		
		 resumeMapper.updateResumeLicense( resumeLicenseVo );		
//		 resumeMapper.updateUserStack( userStackVo );		
			
		 //log.info( "userVo : {}",  resumeVo  );
		 //log.info( "updateResumeCareer : {}",  resumeCareerVo  );
		 //log.info( "updateResumeGrade : {}",  resumeGradeVo  );
		 //log.info( "updateResumeLicense : {}",  resumeLicenseVo  );
			// 데이터를 가지고 이동한다
			ModelAndView   mv   =  new  ModelAndView();
			mv.addObject("resume_rno", resume_rno);
			mv.setViewName("redirect:/Resume/List");
			return   mv;
		}
	
	
}
	
	