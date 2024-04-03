package com.board.company.domain;

import com.board.domain.BoardVo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostingVo {

		private String com_id;
		private int    posting_pno;
		private String posting_career;
		private String posting_grade;
		private String posting_hope_department;
		private String posting_content;
		private String posting_title;
		private String posting_startdate;
		private String posting_enddate;
		private String posting_com_profile;
	
}
