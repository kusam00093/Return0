package com.board.company.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.board.company.domain.PostingVo;

@Mapper
public interface CompanyMapper {
	void getUpdate(PostingVo postingVo);
}
