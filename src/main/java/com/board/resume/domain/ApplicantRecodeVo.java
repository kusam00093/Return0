package com.board.resume.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplicantRecodeVo {
	private int posting_pno;
	private int applicant_recode_result;
	private int applicant_recode_id;
	private int resume_rno;
}
