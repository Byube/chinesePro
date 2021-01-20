package com.dnk.chinese.service;

import com.dnk.chinese.dao.DnkDao;
import com.dnk.chinese.dto.*;

import groovy.util.logging.Slf4j;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class DnkServiceImpl implements DnkService {

    @Autowired
    DnkDao dao;

    private static final Logger log = LoggerFactory.getLogger(DnkServiceImpl.class);

    @Override
    public ChineseDto getStudentDetail(String id) {
        log.info("getStudentDetail >> name : " + id);             
        return dao.getStudentDetail(id);
    }

	@Override
	public List<ClassDto> getClassDetail(ClassDto cd) {
		return dao.getClassDetail(cd);
	}

	@Override
	public List<HomeDto> getHomeWorkTitle(ChineseDto cd) {
		List<HomeDto> list = new ArrayList<HomeDto>();
		list = dao.getHomeWorkTitle(cd);
		return list;
	}

	@Override
	public List<HomeDto> getHDetail(HomeDto hd) {
		return dao.getHDetail(hd);
	}

	@Override
	public void modHomeWork(HomeDto hd) {
		dao.modHomeWork(hd);		
	}

	@Override
	public void insertHonmeWork(HomeDto hd) {
		dao.insertHonmeWork(hd);	
	}

	@Override
	public void insertClass(ClassDto cd) {
		dao.insertClass(cd);
	}

	@Override
	public List<ClassDto> getmemberdetailclass(ClassDto cd) {
		return dao.getmemberdetailclass(cd);
	}

	@Override
	public void modClassGoinsert(ClassDto cd) {
		dao.insertClass(cd);
	}

	@Override
	public void modClassGoupdate(ClassDto cd) {
		dao.modClassGoupdate(cd);		
	}
	
	
	
	
	
	
    
    

	

	
    
    
}
