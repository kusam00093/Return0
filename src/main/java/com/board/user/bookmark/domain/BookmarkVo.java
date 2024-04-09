package com.board.user.bookmark.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookmarkVo {
	
	 private int ub_ubno;
	 private String user_id;
     private int posting_pno;
     private int ub_boolean;
     
}
