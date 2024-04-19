package com.board.company.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.board.company.domain.CompanyBookmarkVo;
import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingStackVo;
import com.board.company.domain.PostingVo;
import com.board.company.domain.UserVo;
import com.board.company.mapper.CompanyMapper;
import com.board.login.domain.LoginCompanyVo;
import com.board.login.domain.LoginUserVo;
import com.board.resume.domain.ResumeVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Company")
public class CompanyController {
	
	
	@Autowired
	private CompanyMapper companyMapper;
	
	

	
	
	@RequestMapping("/List")
	public ModelAndView List(int nowpage, PostingVo postingVo, String user_id, String com_id,HttpServletRequest request, CompanyVo companyVo) {

		
		
		
		List<PostingVo> postingList = companyMapper.getPostingList(postingVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("postingList", postingList);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);
		mv.addObject("user_id",user_id);
		mv.setViewName("company/list");
		return mv;
	}
	

	
	
//	@RequestMapping("/MyPage")
//	public ModelAndView mypage() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("company/company_myPage");
//		return mv;
//	}
	
//	@RequestMapping("/MyPage/People")
//	public ModelAndView people() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("company/company_myPagePeople");
//		return mv;
//	}
//	
//	@RequestMapping("/MyPage/Recommand")
//	public ModelAndView recommand() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("company/company_myPageRecommand");
//		return mv;
//	}
//	
//	@RequestMapping("/MyPage/Book")
//	public ModelAndView com_book() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("company/company_myPageBook");
//		return mv;
//	}
	//========================================================
	@RequestMapping("/MyPosting")
	public ModelAndView myPosting(PostingVo postingVo, int nowpage,HttpServletRequest request,CompanyVo companyVo, ResumeVo resumeVo, UserVo userVo) {
		
		HttpSession session = request.getSession();
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		CompanyVo vo = companyMapper.getCompany(companyVo);
		
		List<ResumeVo> ResumeList = companyMapper.getResumeList(resumeVo);
		List<ResumeVo> recommendList = companyMapper.getRecommendList(resumeVo);
		
		
		
		
		ModelAndView mv = new ModelAndView();
		List<PostingVo> postingList = companyMapper.getMyPostingList(postingVo);
		mv.addObject("postingList",postingList);
		mv.addObject("vo",vo);
		mv.addObject("ResumeList",ResumeList);
		mv.addObject("nowpage",nowpage);
		mv.addObject("recommendList",recommendList);
		mv.addObject("com_id",com_id);
		mv.addObject("bookmarkActionUrl", "/toggleBookmark");
		mv.setViewName("company/company_myPosting");
		return mv;
		
	}
	
	
	@RequestMapping("/MyPage")
	public ModelAndView companyView(int nowpage,CompanyVo companyVo, UserVo userVo, HttpServletRequest request, PostingVo postingVo, ResumeVo resumeVo) {
        
		HttpSession session = request.getSession();
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);	
		
		
		List<ResumeVo> bookmarkList = companyMapper.getBookmarkList(resumeVo);
		List<PostingVo> postingList = companyMapper.getMyPostingList(postingVo);
		CompanyVo vo = companyMapper.getCompany(companyVo);
		List<UserVo> userList = companyMapper.getUserList(userVo);
		List<UserVo> userstackList = companyMapper.getUserStackList(userVo);
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.addObject("postingList",postingList);
		mv.addObject("bookmarkList",bookmarkList);
		mv.addObject("nowpage", nowpage);
		mv.addObject("userList",userList);
		mv.addObject("userstackList",userstackList);
		mv.addObject("user_id",userVo.getUser_id());
		mv.addObject("com_id",companyVo.getCom_id());
		mv.setViewName("company/company_myPage");
		return mv;
	}
	
    @PostMapping("/toggleBookmark") // JSP 파일에서 보낸 URL과 일치해야 함
    @ResponseBody
    public String toggleBookmark(@RequestBody CompanyBookmarkVo companyBookmarkVo) {
    		
//    	System.out.println("==================ASDZfasdfasdf==");
//    	int resume_rno=companyBookmarkVo.getResume_rno();
//    	System.out.println("==================ASDZfasdfasdf==");
//    	System.out.println(companyBookmarkVo);
//    	
//    	CompanyBookmarkVo vo = companyMapper.existBookmark(companyBookmarkVo);
//    	vo.setResume_rno(resume_rno);
        if (companyMapper.existBookmark(companyBookmarkVo)) {
        
            companyMapper.deleteBookmark(companyBookmarkVo);
            System.out.println("북마크가 삭제");
            return "북마크가 삭제되었습니다.";
        } else {
            companyMapper.insertBookmark(companyBookmarkVo);
            System.out.println("북마크가 추가추가");
            return "북마크가 추가되었습니다.";
        }
    }
	
	
	
	@RequestMapping("/View/UpdateForm")
	public ModelAndView companyViewUpdateForm(CompanyVo companyVo, int nowpage, String user_id, HttpServletRequest request) {

		
		companyMapper.getCompany(companyVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.setViewName("company/company_ViewUpdate");
		return mv;
	}
	@RequestMapping("/View/Update")
	public ModelAndView companyViewUpdate(CompanyVo companyVo,int nowpage, String user_id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("companyLogin"));
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		
		
		companyMapper.updateCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());		
		
		mv.setViewName("redirect:/Company/MyPage?nowpage="+nowpage);
		return mv;
	}
	@RequestMapping("/View/Delete")
	public String companyViewDelete(CompanyVo companyVo,int nowpage, String user_id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("companyLogin"));
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		companyMapper.deleteCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());		
		
		mv.setViewName("redirect:/");
		
		String loc = "";
		if(companyVo.getCom_id()== companyVo.getCom_id()) {
			session.invalidate();
			loc = "/";
		}else {
			
			loc = "/";
		}
		
		
		
		return "redirect:"+loc;
	}
	//=======================================================================
	@RequestMapping("/Posting/WriteForm")
	public ModelAndView writeForm(PostingVo postingVo,int nowpage, String user_id,HttpServletRequest request,CompanyVo companyVo) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("companyLogin"));
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		
		
		PostingVo vo = companyMapper.getPosting(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);		
		mv.addObject("vo",vo);
		mv.setViewName("company/company_PostingWrite");
		return mv;
	}
	@RequestMapping("/Posting/Write")
	public ModelAndView write(PostingVo postingVo, int nowpage, 
			String user_id,CompanyVo companyVo,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("companyLogin"));
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		// 스택 각자 행 삽입
		List<PostingStackVo> postingStackList = new ArrayList<>();
		String []  stackList = postingVo.getPosting_stack().split(",");
		for (String posting_stack : stackList) {
			postingStackList.add(new PostingStackVo(postingVo.getPosting_pno(), posting_stack));
		}

		
		
		
		companyMapper.insertPosting(postingVo);
		companyMapper.insertPostingStack(postingStackList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);

		mv.addObject("com_id",postingVo.getCom_id());		
		
		mv.setViewName("redirect:/Company/List?nowpage"+nowpage);
		return mv;
	}
	@RequestMapping("/PostingView")
	public ModelAndView posting(UserVo userVo, CompanyVo companyVo, PostingVo postingVo, int nowpage, int posting_pno, PostingStackVo postingStackVo, HttpServletRequest request) {

	    HttpSession session = request.getSession();
	    LoginUserVo loginuserVo = (LoginUserVo) session.getAttribute("userLogin");
	    String user_id = (loginuserVo != null) ? loginuserVo.getUser_id() : null;

	    HashMap<String, Object> map = companyMapper.getPostingMap(companyVo, postingVo, posting_pno);
	    List<PostingVo> postingList = companyMapper.getPostingList(postingVo);
	    PostingStackVo vo = companyMapper.getPostingStack(postingStackVo);

	    ModelAndView mv = new ModelAndView();
	    mv.addObject("nowpage", nowpage);
	    mv.addObject("map", map);
	    mv.addObject("vo", vo);
	    mv.addObject("com_id", companyVo.getCom_id());
	    mv.addObject("user_id", user_id);
	    mv.addObject("postingList", postingList);
	    mv.setViewName("company/company_PostingView");
	    return mv;
	}
	
	
	@RequestMapping("/Posting/UpdateForm")
	public ModelAndView postingUpdateForm(PostingVo postingVo,int nowpage, String user_id, String com_id) {
		
		PostingVo vo = companyMapper.getPosting(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);
		mv.addObject("user_id",user_id);
		mv.addObject("vo",vo);
		mv.setViewName("company/company_PostingUpdate");
		return mv;
	}
	
	

	
	
	@RequestMapping("/Posting/Update")
	public ModelAndView postingUpdate(PostingVo postingVo, int nowpage, String user_id, String com_id) {
		PostingVo vo = companyMapper.getPosting(postingVo);
		companyMapper.getUpdate(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);
		mv.addObject("vo",vo);
		mv.addObject("user_id",user_id);		
		mv.setViewName("redirect:/Company/MyPage");
		return mv;
	}
	@RequestMapping("/Posting/Delete")
	public ModelAndView postingDelete(PostingVo postingVo,  int nowpage, String user_id, String com_id) {
		companyMapper.postingDelete(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);
		mv.addObject("user_id",user_id);	
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	@RequestMapping("/MyPosting/Delete")
	public ModelAndView mypostingDelete(PostingVo postingVo,  int nowpage, UserVo userVo, HttpServletRequest request, CompanyVo companyVo) {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("companyLogin"));
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		companyMapper.postingDelete(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);
		mv.addObject("user_id",userVo.getUser_id());	
		mv.setViewName("redirect:/Company/MyPage");
		return mv;
	}
	

	//=======================================================================
	
	@RequestMapping("/Comuser/View")
	public ModelAndView comUserView(CompanyVo companyVo, int nowpage, String user_id) {
		
		CompanyVo vo = companyMapper.getCompany(companyVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.addObject("user_id",user_id);	
		mv.addObject("co",vo);	
		mv.setViewName("company/company_UserView");
		return mv;
		
	}
	
	
	@RequestMapping("/Comuser/WriteForm")
	public ModelAndView comuserForm(CompanyVo companyVo, int nowpage, String user_id) {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.addObject("user_id",user_id);	
		mv.setViewName("company/company_Write");
		return mv;
	}
	@RequestMapping("/Comuser/Write")
	public ModelAndView comuser(CompanyVo companyVo,  int nowpage, String user_id) {
		
		companyMapper.insertComuser(companyVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.addObject("user_id",user_id);		
		
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	@RequestMapping("/Comuser/ViewUpdateForm")
	public ModelAndView comuserView(HttpServletRequest request,CompanyVo companyVo,  int nowpage, String user_id) {
		
		HttpSession session = request.getSession();
		LoginCompanyVo logincompanyVo = (LoginCompanyVo)session.getAttribute("companyLogin");
		String com_id = logincompanyVo.getCom_id();
		companyVo.setCom_id(com_id);
		
		
		
		CompanyVo vo = companyMapper.getCompany(companyVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.addObject("user_id",user_id);			
		mv.addObject("co",vo);			
		mv.setViewName("company/company_ViewUpdate");
		return mv;
	}
	
	
//---------------------------------------------------------------------
	
	@RequestMapping("/ViewPaging")
	public ModelAndView viewList(int nowpage, UserVo userVo, PostingVo postingVo, CompanyVo companyVo ){
		
	
	   
	
	   
	
	   
	  
	   
	 
	  
	  CompanyVo vo = companyMapper.getCompany(companyVo);
	  List<UserVo> userList = companyMapper.getUserList(userVo);
	  List<UserVo> userstackList = companyMapper.getUserStackList(userVo);
	   ModelAndView mv = new ModelAndView();
	
	   mv.addObject("nowpage",nowpage);
	   mv.addObject("com_id",companyVo.getCom_id());
	   mv.addObject("user_id",userVo.getUser_id());
	   mv.addObject("userList",userList);
	   mv.addObject("vo",vo);
	   mv.addObject("userstackList",userstackList);
	   mv.setViewName("company/company_View");
	   
	   return mv;
	}
	


}

