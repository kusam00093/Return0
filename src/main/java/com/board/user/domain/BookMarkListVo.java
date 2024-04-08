package com.board.user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookMarkListVo {
   
   
   private String user_id;
   private int ub_boolean;
   private String com_name;
   private String posting_title;
   private String posting_career;
   private String posting_startdate;
   
}