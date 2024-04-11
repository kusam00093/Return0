package com.board.boardpaging.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.boardpaging.domain.BoardPagingVo;



@Mapper
public interface BoardPagingMapper {

	List<BoardPagingVo> getBoardPagingList();

	void incHit(BoardPagingVo boardPagingVo);

	BoardPagingVo getBoardPaging(BoardPagingVo boardPagingVo);

	void updateBoardpaging(BoardPagingVo boardpagingVo);

	void insertBoardPaging(BoardPagingVo boardPagingVo);

	void deleteBoardPaging(BoardPagingVo boardpagingvo);
	


}
