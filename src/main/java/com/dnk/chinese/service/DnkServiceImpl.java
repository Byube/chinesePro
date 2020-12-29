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
	public List<ClassDto> getClassDetail(ChineseDto cd) {
		List<ClassDto> list = new ArrayList<ClassDto>();
		
		return null;
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
	
    
    

	

	
    
    
}
