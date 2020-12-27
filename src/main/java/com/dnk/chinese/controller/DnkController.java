package com.dnk.chinese.controller;

import com.dnk.chinese.dto.ChineseDto;
import com.dnk.chinese.dto.HomeDto;
import com.dnk.chinese.service.DnkService;
import groovy.util.logging.Slf4j;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
@PropertySource("classpath:/url.properties")
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
    public String startlean(@RequestParam(value = "id", defaultValue = "-")String id, Model model){
        log.info("Student : " + id);
        String address = "dnk/lean";
        ChineseDto cnc = new ChineseDto();
        try {
        	 cnc = dnkService.getStudentDetail(id);
        	 String student_brith = cnc.getStudent_brith();
             model.addAttribute("student_brith", student_brith);
             model.addAttribute("student_seq", cnc.getStudent_seq());
             model.addAttribute("name", id);
             List<HomeDto> homelist = dnkService.getHomeWorkTitle(cnc);
             model.addAttribute("homelist", homelist);
		} catch (Exception e) {
			address = "dnk/omg";
		}        
       
        return address;
    }
    @RequestMapping(value = "/goNewClass")
    public String getNewClass(@RequestParam(value = "sq", defaultValue = "0")int sq
    							,@RequestParam(value = "ht", defaultValue = "-")String ht
    							,Model model) {
    	log.info("getNewClass StudenSq : "+sq);
    	String address = "dnk/classlist";
    	if(!ht.equals("-")) {
    		HomeDto hd = new HomeDto();
        	hd.setHomework_title(ht);
        	hd.setStudent_num(sq);
        	List<HomeDto> hl = dnkService.getHDetail(hd);
        	model.addAttribute("h_title", ht);
        	model.addAttribute("hList", hl);
    	} else {
    		model.addAttribute("h_title", "NewClass");
        	model.addAttribute("hList", null);
    	}
    	
    	model.addAttribute("sq", sq);
    	return address;
    }
}
