package com.dnk.chinese.service;


import java.util.List;

import com.dnk.chinese.dto.*;



public interface DnkService {
    public ChineseDto getStudentDetail(String	id);
    public List<ClassDto> getClassDetail();
    public List<HomeDto> getHomeWorkTitle(ChineseDto cd);
    public List<HomeDto> getHDetail(HomeDto hd);
    public void modHomeWork(HomeDto hd);
    public void insertHonmeWork(HomeDto hd);
    public void insertClass(ClassDto cd);
}
