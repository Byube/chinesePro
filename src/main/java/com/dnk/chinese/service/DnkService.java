package com.dnk.chinese.service;

import com.dnk.chinese.dto.ChineseClass;
import org.springframework.stereotype.Service;

public interface DnkService {
    public ChineseClass getStudentDetail(String id);
}
