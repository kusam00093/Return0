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
public class ResumeCareerVo {
	int resume_rno;
	String resume_career_company;
	String resume_career_startdate;
	String resume_career_enddate;
	String resume_career_department;
}
