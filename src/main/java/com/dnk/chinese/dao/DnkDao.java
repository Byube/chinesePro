package com.dnk.chinese.dao;

import com.dnk.chinese.dto.ChineseClass;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DnkDao {
    public ChineseClass getStudentDetail(String id);
}
