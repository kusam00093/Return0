package com.board.boardpaging.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardPagingVo {	
	private String user_id;
	private String board_title;
	private String board_conent;
	private int board_hit;
	private String board_indate;
	private int board_bno;
}




