package com.board.boardpaging.controller;

import java.text.MessageFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import com.board.boardpaging.domain.BoardPagingVo;
import com.board.boardpaging.mapper.BoardPagingMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/BoardPaging")
public class BoardPagingController {

	@Autowired
	private BoardPagingMapper boardPagingMapper;
	
	@RequestMapping("/List")
	public ModelAndView list () {
		List<BoardPagingVo> boardPagingList = boardPagingMapper.getBoardPagingList();
		
		ModelAndView mv = new ModelAndView() ;
		mv.addObject("boardPagingList", boardPagingList);
		mv.setViewName("boardpaging/list");
		
		return mv;
	}
	
	@RequestMapping("/WriteForm")
	public  ModelAndView   writeForm(String user_id ) {
		
		ModelAndView  mv  = new ModelAndView();
		mv.addObject( "user_id", user_id  );
		//mv.addObject( "nowpage", nowpage  );
		mv.setViewName("boardpaging/write");
		return mv;	
		
	}
	@RequestMapping("/Write")
	public  ModelAndView   write(
			 BoardPagingVo boardPagingVo) {
		
		boardPagingMapper.insertBoardPaging( boardPagingVo );
		
		ModelAndView  mv  = new ModelAndView();	
		//String fmt = "redirect:/BoardPaging/List?user_id={0}&nowpage={1}";
		//String loc = MessageFormat.format(
		//		fmt, boardPagingVo.getUser_id());
		mv.setViewName("redirect:/BoardPaging/List");
		return mv;	
	}
	
	
	
	@RequestMapping("View")
	public ModelAndView view(BoardPagingVo boardPagingVo ) {
		boardPagingMapper.incHit( boardPagingVo );
		BoardPagingVo  vo  = boardPagingMapper.getBoardPaging ( boardPagingVo);
		
		String board_content = vo.getBoard_conent();
		
		
		  if(board_content != null) { board_content = board_content.replace("\n",
		  "<br>"); vo.setBoard_conent(board_content);
		  
		  }
		 
		
		ModelAndView mv = new ModelAndView();
		//mv.addObject("nowpage", nowpage ); 
		mv.addObject("vo", vo );
		mv.setViewName("boardpaging/view");
		return mv;
	}
	@RequestMapping("/Delete")
	public ModelAndView delete(BoardPagingVo boardpagingvo ) {
		
		boardPagingMapper.deleteBoardPaging( boardpagingvo );
		
		String user_id = boardpagingvo.getUser_id();
		
		ModelAndView mv = new ModelAndView();
		 
			mv.setViewName("redirect:/BoardPaging/List?user_id");
		return mv; 
	}
	@RequestMapping("/UpdateForm")
	public  ModelAndView  updateForm(  BoardPagingVo boardPagingVo ) {
		
		List<BoardPagingVo> boardPagingList = boardPagingMapper.getBoardPagingList();
	
		BoardPagingVo vo = boardPagingMapper.getBoardPaging(boardPagingVo);
		ModelAndView  mv  = new ModelAndView();	
		mv.addObject("vo",vo );
		mv.addObject("boardPagingList", boardPagingList);
		mv.setViewName("/boardpaging/update");
	    return mv;
}
	@RequestMapping("/Update")
	public  ModelAndView  update( BoardPagingVo boardPagingVo ) {
		
		// 수정
		boardPagingMapper.updateBoardpaging( boardPagingVo   );
		
		ModelAndView mv = new ModelAndView()	;
		mv.addObject("",boardPagingVo.getUser_id());
		mv.addObject("",boardPagingVo.getBoard_bno());
		mv.setViewName("redirect:/BoardPaging/List");
		return mv;
	}
}
