package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.domain.HomeSearchLikeVo;
import com.board.domain.HomeSearchVo;

@Mapper
public interface HomeMapper {

	List<HomeSearchVo> getAllList();

	List<HomeSearchVo> getLikeList(HomeSearchLikeVo request);

	int getCount();

	int getLikeCount(HomeSearchLikeVo request);

}
