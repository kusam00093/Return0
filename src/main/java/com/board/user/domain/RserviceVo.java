package com.board.user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RserviceVo {
	
	
	private int posting_pno;
    private int matching_stack_count;
    private String posting_title;
    private String posting_hope_department;
    private String posting_startdate;
    private String com_name;
    private int  ub_ubno;
	private int ub_boolean;
}
