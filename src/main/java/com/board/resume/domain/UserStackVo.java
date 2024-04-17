package com.board.resume.domain;

import com.board.company.domain.PostingVo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserStackVo {
	private int    resume_rno;
	private String user_id;
	private String user_stack_name;
	
}
