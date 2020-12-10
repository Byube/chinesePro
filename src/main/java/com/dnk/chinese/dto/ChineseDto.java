package com.dnk.chinese.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChineseDto {
    private int student_seq;
    private String student_name;
    private String student_brith;
    private String student_status;
    
    //class
    private int class_seq;
    private int student_num;
    private int class_num;
    private String class_title;
    private String class_detail_or;
    private String class_detail_af;
    
    //home
    private int homework_seq;
    private String homework_title;
    private String homework_detail_or;
    private String homework_detail_af;
}
