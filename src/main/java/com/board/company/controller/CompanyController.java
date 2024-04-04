package com.board.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.company.domain.CompanyVo;
import com.board.company.domain.PostingVo;
import com.board.company.mapper.CompanyMapper;

@Controller
@RequestMapping("/Company")
public class CompanyController {
	
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@RequestMapping("/List")
	public ModelAndView List() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/List");
		return mv;
	}
	
	@RequestMapping("/MyPage")
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_myPage");
		return mv;
	}
	
	@RequestMapping("/MyPage/People")
	public ModelAndView people() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_myPagePeople");
		return mv;
	}
	
	@RequestMapping("/MyPage/Recommand")
	public ModelAndView recommand() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_myPageRecommand");
		return mv;
	}
	
	@RequestMapping("/MyPage/Book")
	public ModelAndView com_book() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_myPageBook");
		return mv;
	}
	@RequestMapping("/View")
	public ModelAndView companyView(CompanyVo companyVo) {
		
		CompanyVo vo = companyMapper.getCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("company/Company_View");
		return mv;
	}
	@RequestMapping("/View/UpdateForm")
	public ModelAndView companyViewUpdateForm(CompanyVo companyVo) {
		
		companyMapper.getCompany(companyVo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/Company_ViewUpdate");
		return mv;
	}
	@RequestMapping("/View/Update")
	public ModelAndView companyViewUpdate(CompanyVo companyVo) {
		companyMapper.updateCompany(companyVo);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/Company_ViewUpdate");
		return mv;
	}
	@RequestMapping("/Posting/WriteForm")
	public ModelAndView writeForm(PostingVo postingVo) {
	
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/Company_PostingWrite");
		return mv;
	}
	@RequestMapping("/Posting/Write")
	public ModelAndView write(PostingVo postingVo) {
		
		companyMapper.insertPosting(postingVo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	
	
	
	@RequestMapping("/Comuser/WriteForm")
	public ModelAndView comuserForm(CompanyVo companyVo) {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("company/Company_Write");
		return mv;
	}
	@RequestMapping("/Comuser/Write")
	public ModelAndView comuser(CompanyVo companyVo) {
		
		companyMapper.insertComuser(companyVo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("redirect:/Company/List");
		return mv;
	}
	
	
	
	
	@RequestMapping("/PostingView")
	public ModelAndView posting() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_PostingView");
		return mv;
	}
	@RequestMapping("/Posting/UpdateForm")
	public ModelAndView postingUpdateForm(PostingVo postingVo) {
		PostingVo vo = companyMapper.getPosting(postingVo);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("vo",vo);
		mv.setViewName("company/Company_PostingUpdate");
		return mv;
	}
	
	

	
	
	@RequestMapping("/Posting/Update")
	public ModelAndView postingUpdate(PostingVo postingVo) {
		companyMapper.getUpdate(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Company/List");
		return mv;
	}


}

