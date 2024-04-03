package com.board.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView companyView() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_View");
		return mv;
	}
	@RequestMapping("/View/Update")
	public ModelAndView companyViewUpdate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_ViewUpdate");
		return mv;
	}
	@RequestMapping("/PostingView")
	public ModelAndView posting() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_PostingView");
		return mv;
	}
	@RequestMapping("/Posting/UpdateForm")
	public ModelAndView postingUpdateForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("company/Company_PostingUpdate");
		return mv;
	}
	@RequestMapping("/Posting/Update")
	public ModelAndView postingUpdate(PostingVo postingVo) {
		int pno = postingVo.getPosting_pno();
		companyMapper.getUpdate(postingVo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Company/List?pno="+pno);
		return mv;
	}

}

