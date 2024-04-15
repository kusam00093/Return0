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
	private int row_number;
	private int applicant_recode_result;
	private int applicant_recode_id;
	private String user_name;
	private String user_email;
	private String user_phone;
	private String user_address;
	private int    posting_pno;
	private String posting_title;
	private String posting_stack;
	private String user_stack_name;
	private String com_id;
	private String cb_cbno;
	private int    cb_boolean;
	
 }
