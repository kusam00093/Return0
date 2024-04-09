package com.board.resume.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResumeLicenseVo {
	private int resume_rno;
	private String resume_license_content;	
}
