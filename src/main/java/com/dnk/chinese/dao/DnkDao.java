package com.dnk.chinese.dao;

import com.dnk.chinese.dto.*;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DnkDao {
    public ChineseDto getStudentDetail(String id);   
    public List<ClassDto> getClassDetail(ClassDto cd);
    public List<HomeDto> getHomeWorkTitle(ChineseDto cd);
    public List<HomeDto> getHDetail(HomeDto hd);
    public void modHomeWork(HomeDto hd);
    public void insertHonmeWork(HomeDto hd);
    public void insertClass(ClassDto cd);
    public List<ClassDto> getmemberdetailclass(ClassDto cd);
    public void modClassGoupdate(ClassDto cd);
}
