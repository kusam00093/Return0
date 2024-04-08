package com.board.login.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.login.domain.CompanyVo;
import com.board.login.mapper.CompanyMapper;

public class ComWriteController {
	@RequestMapping("/Write")
	public ModelAndView write(CompanyVo companyVo) {
		// 저장
		CompanyMapper.insertCom(companyVo);

		// 데이터를 가지고 이동한다
		ModelAndView mv = new ModelAndView();

		mv.setViewName("redirect:/");
		return mv;

	}
}
