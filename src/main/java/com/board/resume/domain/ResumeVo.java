package com.board.resume.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResumeVo {
	private String user_id;
	private int resume_rno;
	private String resume_profile;
	private String resume_content_self;
	private String resume_content_motivation;
	private int rownum;
 }
