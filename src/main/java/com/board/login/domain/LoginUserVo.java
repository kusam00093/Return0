package com.board.login.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor	
public class LoginUserVo {
	private String user_id;   
	private String user_name;
	private String user_passwd;
	private String user_email;
	private String user_address;
	private String user_zipcode;
	private String user_phone;
	private String user_social_num;
	private  String   indate;


	
}
