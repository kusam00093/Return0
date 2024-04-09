package com.board.user.bookmark.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.user.bookmark.domain.BookmarkVo;

@Mapper
public interface BookmarkMapper {

	void addBookmark(BookmarkVo request);

	List<BookmarkVo> getUserBookmarks(String userId);

	Integer CheckUBNO(BookmarkVo request);

	void CreateBookMark(BookmarkVo request);

	

	void AddBoolean(BookmarkVo request);

	void minusBoolean(BookmarkVo request);


	

}
