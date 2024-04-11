package com.board.resume.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResumeGradeVo {
	int resume_rno;
	String resume_grade_universe;
	String resume_grade_state;
	String resume_grade_content;
}
