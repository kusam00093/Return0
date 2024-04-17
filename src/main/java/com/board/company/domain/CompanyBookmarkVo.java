package com.board.company.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyBookmarkVo {

		private String com_id;
		private int    posting_pno;
		private int    row_number;
		private int    cb_cbno;
		private int    cb_boolean;
		private int    resume_rno;
	
}
