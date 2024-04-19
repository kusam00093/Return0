package com.board.company.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVo {

		private String user_id;
		private int    row_number;
		private String user_passwd;
		private String user_name;
		private String user_email;
		private String user_address;
		private String user_phone;
		private String user_social_num;
		private String indate;
		private String user_stack_name;
		
	
}
