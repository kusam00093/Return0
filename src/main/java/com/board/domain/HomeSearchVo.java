package com.board.domain;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HomeSearchVo {
 private String com_name;
 private String com_address;
 private int posting_pno;
 private String posting_title;
 private String posting_career;
 private String posting_grade;
 private String posting_hope_department;
 private String posting_startdate;
 private String posting_enddate;
 private String posting_com_profile;
 private String posting_stack;
 

}
