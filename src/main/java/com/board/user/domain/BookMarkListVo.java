package com.board.user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookMarkListVo {
	private String user_id;
	private String user_name;
	private String user_passwd;
	private String user_email;
	private String user_phone;
	private String user_social_num;
	private String indate;
	private String user_address;
	private String user_zipcode;
	   
	   private int ub_boolean;
	   private String com_name;
	   private String posting_title;
	   private String posting_career;
	   private String posting_startdate;
}
   
