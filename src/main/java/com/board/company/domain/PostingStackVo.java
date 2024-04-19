package com.board.company.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostingStackVo {
    
    private String com_id;
    private int posting_pno;
    private int row_number;
    private String posting_stack;

    public PostingStackVo(int posting_pno, String stack) {
        this.posting_pno = posting_pno;
        this.posting_stack = stack;
    }
}
