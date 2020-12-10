package com.dnk.chinese.dao;

import com.dnk.chinese.dto.ChineseDto;


import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DnkDao {
    public ChineseDto getStudentDetail(String	id);
   
}
