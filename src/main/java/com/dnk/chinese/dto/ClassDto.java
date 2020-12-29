package com.dnk.chinese.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ClassDto {
    private int class_seq;
    private int student_num;
    private int class_num;
    private String class_title;
    private String class_detail_or;
    private String class_detail_af;
}
