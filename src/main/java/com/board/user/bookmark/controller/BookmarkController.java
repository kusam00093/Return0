package com.board.user.bookmark.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.board.user.bookmark.domain.BookmarkVo;
import com.board.user.bookmark.mapper.BookmarkMapper;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class BookmarkController {
	//자 여기서 해할거 북마크 조회 삭제 생성
	
	// 둘다 같은 형식의 vo로 받아
	
	@Autowired
    private BookmarkMapper bookmarkMapper;
	
	

    @PostMapping("/add")
    public ResponseEntity<String> addBookmark(@RequestBody BookmarkVo request) {
        // 클라이언트에서 전달된 요청 본문의 데이터를 자동으로 BookmarkRequest 객체로 변환하여 받음
        // 이후 해당 데이터를 서비스로 전달하여 북마크 추가 작업을 수행
    	
    	bookmarkMapper.addBookmark(request);

        // 북마크 추가가 성공했음을 클라이언트에게 응답
        return ResponseEntity.ok("북마크가 추가되었습니다.");
    }
    @RequestMapping("/bookmarks/")
    public String bookmarks() {
    	
    	return " ";
    }
    
    @RequestMapping("/bookmarks/{userId}")
    public ResponseEntity<List<BookmarkVo>> getUserBookmarks(@PathVariable String userId) {
        List<BookmarkVo> bookmarks = bookmarkMapper.getUserBookmarks(userId);
        
     // 북마크 조회가 성공했음을 클라이언트에게 응답
        return ResponseEntity.ok(bookmarks);
    }
				
}



















