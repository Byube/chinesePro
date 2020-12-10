package com.dnk.chinese.service;

import com.dnk.chinese.dao.DnkDao;
import com.dnk.chinese.dto.ChineseDto;

import groovy.util.logging.Slf4j;

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

	

	
    
    
}
