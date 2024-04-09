package com.board.company.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.company.domain.CompanyVo;

import com.board.company.domain.PostingVo;

import com.board.company.domain.UserVo;
import com.board.company.mapper.CompanyMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Company")
public class CompanyController {
	
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@RequestMapping("/List")
	public ModelAndView List(int nowpage, PostingVo postingVo,String com_id, String user_id) {
	
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
	@RequestMapping("/MyPage")
	public ModelAndView companyView(int nowpage,CompanyVo companyVo, UserVo userVo) {
      
		CompanyVo vo = companyMapper.getCompany(companyVo);
		List<UserVo> userList = companyMapper.getUserList(userVo);
		List<UserVo> userstackList = companyMapper.getUserStackList(userVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.addObject("nowpage", nowpage);
		mv.addObject("userList",userList);
		mv.addObject("userstackList",userstackList);
		mv.addObject("user_id",userVo.getUser_id());
		mv.addObject("com_id",companyVo.getCom_id());
		mv.setViewName("company/company_myPage");
		return mv;
	}
	@RequestMapping("/View/UpdateForm")
	public ModelAndView companyViewUpdateForm(CompanyVo companyVo, int nowpage, String user_id) {
		
		companyMapper.getCompany(companyVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.setViewName("company/company_ViewUpdate");
		return mv;
	}
	@RequestMapping("/View/Update")
	public ModelAndView companyViewUpdate(CompanyVo companyVo,int nowpage, String user_id) {
		System.out.println(companyVo);
		companyMapper.updateCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());		
		
		mv.setViewName("redirect:/Company/MyPage?nowpage="+nowpage);
		return mv;
	}
	@RequestMapping("/View/Delete")
	public ModelAndView companyViewDelete(CompanyVo companyVo,int nowpage, String user_id) {
		companyMapper.deleteCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());		
		
		mv.setViewName("redirect:/?nowpage="+nowpage);
		return mv;
	}
	//=======================================================================
	@RequestMapping("/Posting/WriteForm")
	public ModelAndView writeForm(PostingVo postingVo,int nowpage, String user_id, String com_id) {
	
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);		
		
		mv.setViewName("company/company_PostingWrite");
		return mv;
	}
	@RequestMapping("/Posting/Write")
	public ModelAndView write(PostingVo postingVo, int nowpage, String user_id, String com_id) {
		
		companyMapper.insertPosting(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user_id",user_id);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);		
		
		mv.setViewName("redirect:/Company/List?nowpage"+nowpage);
		return mv;
	}
	@RequestMapping("/PostingView")
	public ModelAndView posting( CompanyVo companyVo, PostingVo postingVo, int nowpage, String user_id) {
		HashMap<String, Object> map = companyMapper.getPostingMap(companyVo,postingVo);
		List<PostingVo> postingList = companyMapper.getPostingList(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("map",map);
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",companyVo.getCom_id());
		mv.addObject("user_id",user_id);
		mv.addObject("postingList",postingList);
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
		companyMapper.getUpdate(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nowpage",nowpage);
		mv.addObject("com_id",com_id);
		mv.addObject("user_id",user_id);		
		mv.setViewName("redirect:/Company/List");
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
	public ModelAndView comuserView(CompanyVo companyVo,  int nowpage, String user_id) {
		
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

