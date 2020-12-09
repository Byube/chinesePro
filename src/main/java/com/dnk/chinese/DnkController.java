package com.dnk.chinese;

import com.dnk.chinese.dto.ChineseClass;
import com.dnk.chinese.service.DnkService;
import groovy.util.logging.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
public class DnkController {

    @Autowired
    DnkService dnkService;

    private static final Logger log = LoggerFactory.getLogger(DnkController.class);

    @RequestMapping(value = "/hello")
    public String hello(){
        log.info("hello : ");
        String address = "dnk/hello";
        return address;
    }
    @RequestMapping(value = "/start")
    public String start(){
        log.info("start : ");
        String address = "dnk/login";
        return address;
    }
    @RequestMapping(value = "/startlean")
    public String startlean(@RequestParam(value = "id", defaultValue = "-")String id){
        log.info("Student : " + id);
        String address = "dnk/lean";

        ChineseClass cnc = dnkService.getStudentDetail(id);
        log.info(cnc.getStudent_brith());

        return address;
    }
}
