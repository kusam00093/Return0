package com.board.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyVo {
	private String com_id;
	private String com_passwd;
	private String com_type;
	private String com_num;
	private String com_name;
	private String com_address;
	private String com_ceo;
	private String com_phone;
	private String com_email;
}
