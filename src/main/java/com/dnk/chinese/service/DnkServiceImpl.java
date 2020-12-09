package com.dnk.chinese.service;

import com.dnk.chinese.DnkController;
import com.dnk.chinese.dao.DnkDao;
import com.dnk.chinese.dto.ChineseClass;
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
    public ChineseClass getStudentDetail(String id) {
        log.info("DnkServiceImpl : " + id);
        log.info(dao.getStudentDetail(id).getStudent_brith());
        return dao.getStudentDetail(id);
    }
}
