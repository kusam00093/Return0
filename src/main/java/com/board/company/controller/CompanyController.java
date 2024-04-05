package com.board.company.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingVo;
import com.board.company.mapper.CompanyMapper;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/Company")
public class CompanyController {
	
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@RequestMapping("/List")
	public ModelAndView List(PostingVo postingVo) {
	
		List<PostingVo> postingList = companyMapper.getPostingList(postingVo);
		
		System.out.println(postingList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("postingList", postingList);
		mv.setViewName("company/list");
		return mv;
	}
	

	
	
	@RequestMapping("/MyPage")
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/company_myPage");
		return mv;
	}
	
	@RequestMapping("/MyPage/People")
	public ModelAndView people() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/company_myPagePeople");
		return mv;
	}
	
	@RequestMapping("/MyPage/Recommand")
	public ModelAndView recommand() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/company_myPageRecommand");
		return mv;
	}
	
	@RequestMapping("/MyPage/Book")
	public ModelAndView com_book() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/company_myPageBook");
		return mv;
	}
	//========================================================
	@RequestMapping("/View")
	public ModelAndView companyView(CompanyVo companyVo) {
		
		CompanyVo vo = companyMapper.getCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("company/company_View");
		return mv;
	}
	@RequestMapping("/View/UpdateForm")
	public ModelAndView companyViewUpdateForm(CompanyVo companyVo) {
		
		companyMapper.getCompany(companyVo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/company_ViewUpdate");
		return mv;
	}
	@RequestMapping("/View/Update")
	public ModelAndView companyViewUpdate(CompanyVo companyVo) {
		companyMapper.updateCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/company_myPage");
		return mv;
	}
	@RequestMapping("/View/Delete")
	public ModelAndView companyViewDelete(CompanyVo companyVo) {
		companyMapper.deleteCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/company_myPage");
		return mv;
	}
	//=======================================================================
	@RequestMapping("/Posting/WriteForm")
	public ModelAndView writeForm(PostingVo postingVo) {
	
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/company_PostingWrite");
		return mv;
	}
	@RequestMapping("/Posting/Write")
	public ModelAndView write(PostingVo postingVo) {
		
		companyMapper.insertPosting(postingVo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	@RequestMapping("/PostingView")
	public ModelAndView posting(CompanyVo companyVo, PostingVo postingVo) {
		HashMap<String, Object> map = companyMapper.getPostingMap(companyVo,postingVo);
		List<PostingVo> postingList = companyMapper.getPostingList(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("map",map);
		mv.addObject("postingList",postingList);
		mv.setViewName("company/company_PostingView");
		return mv;
	}
	
	/*
	@RequestMapping("/View")
	public ModelAndView view(BoardVo boardVo) {
		HashMap<String, Object> map = boardMapper.getBoard(boardVo);
		//String menu_id = boardVo.getMenu_id();
		ModelAndView mv = new ModelAndView(); 
		//mv.addObject("bo",menu_id);
		mv.addObject("bo",map);
		mv.setViewName("/board/view");
		return mv;
	}*/
	
	
	
	@RequestMapping("/Posting/UpdateForm")
	public ModelAndView postingUpdateForm(PostingVo postingVo) {
		PostingVo vo = companyMapper.getPosting(postingVo);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("vo",vo);
		mv.setViewName("company/company_PostingUpdate");
		return mv;
	}
	
	

	
	
	@RequestMapping("/Posting/Update")
	public ModelAndView postingUpdate(PostingVo postingVo) {
		companyMapper.getUpdate(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	@RequestMapping("/Posting/Delete")
	public ModelAndView postingDelete(PostingVo postingVo) {
		companyMapper.postingDelete(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	
	//=======================================================================
	
	@RequestMapping("/Comuser/WriteForm")
	public ModelAndView comuserForm(CompanyVo companyVo) {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/company_Write");
		return mv;
	}
	@RequestMapping("/Comuser/Write")
	public ModelAndView comuser(CompanyVo companyVo) {
		
		companyMapper.insertComuser(companyVo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	@RequestMapping("/Comuser/ViewUpdateForm")
	public ModelAndView comuserView(CompanyVo companyVo) {
		
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/company_ViewUpdate");
		return mv;
	}
	
	
	
	


}

