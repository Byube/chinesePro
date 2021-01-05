package com.dnk.chinese.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HomeDto {
    private int homework_seq;
    private int student_num;
    private String homework_title;
    private String homework_detail_or;
    private String homework_diary_or;
}
