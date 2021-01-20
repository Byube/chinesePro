package com.dnk.chinese.service;


import java.util.List;

import com.dnk.chinese.dto.*;



public interface DnkService {
    public ChineseDto getStudentDetail(String	id);
    public List<ClassDto> getClassDetail(ClassDto cd);
    public List<HomeDto> getHomeWorkTitle(ChineseDto cd);
    public List<HomeDto> getHDetail(HomeDto hd);
    public void modHomeWork(HomeDto hd);
    public void insertHonmeWork(HomeDto hd);
    public void insertClass(ClassDto cd);
    public List<ClassDto> getmemberdetailclass(ClassDto cd);
    public void modClassGoinsert(ClassDto cd);
    public void modClassGoupdate(ClassDto cd);
}
