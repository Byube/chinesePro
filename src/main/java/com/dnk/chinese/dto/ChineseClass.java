package com.dnk.chinese.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChineseClass {
    private int student_seq;
    private String student_name;
    private String student_brith;
    private String student_status;
}
