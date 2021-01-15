package com.dnk.chinese.controller;

import com.dnk.chinese.dto.ChineseDto;
import com.dnk.chinese.dto.ClassDto;
import com.dnk.chinese.dto.HomeDto;
import com.dnk.chinese.service.DnkService;
import groovy.util.logging.Slf4j;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	public String hello() {
		log.info("hello >>> ");
		String address = "dnk/hello";
		return address;
	}

	@RequestMapping(value = "/start")
	public String start() {
		log.info("start >>> ");
		String address = "dnk/login";
		return address;
	}
	

	@RequestMapping(value = "/startlean")
	public String startlean(@RequestParam(value = "id", defaultValue = "-") String id
							,Model model
							,HttpSession session) {
		log.info("startlean >>> ");
		log.info("Student : " + id);
		String address = "dnk/lean";
		ChineseDto cnc = new ChineseDto();
		try {
			model.addAttribute("name", id);
			cnc = dnkService.getStudentDetail(id);
			String student_brith = cnc.getStudent_brith();
			model.addAttribute("student_brith", student_brith);
			model.addAttribute("student_seq", cnc.getStudent_seq());
			model.addAttribute("id", id);
			List<HomeDto> homelist = dnkService.getHomeWorkTitle(cnc);
			model.addAttribute("homelist", homelist);
			List<ClassDto> classlist = dnkService.getClassDetail();
			model.addAttribute("classlist",classlist);
		} catch (Exception e) {
			log.info("error"+e);
			address = "dnk/login";
		}
		return address;
	}

	@RequestMapping(value = "/goNewClass")
	public String getNewClass(@RequestParam(value = "hsq", defaultValue = "0") int hsq
							,@RequestParam(value = "id", defaultValue = "-") String id,Model model
							,@RequestParam(value = "student_seq", defaultValue = "0") int student_seq) {
		log.info("getNewClass >>> ");
		log.info("Student : " + id);
		log.info("getNewClass Homework SEQ : " + hsq);
		model.addAttribute("id",id);
		String address = "dnk/classlist";
		List<HomeDto> hl = new ArrayList<HomeDto>();
		model.addAttribute("student_seq",student_seq);
		if (hsq != 0) {			
			HomeDto hd = new HomeDto();
			hd.setHomework_seq(hsq);
			hl = dnkService.getHDetail(hd);
			model.addAttribute("hList", hl);
		} else {
			hl = null;
			model.addAttribute("h_title", "新的课程");
			model.addAttribute("hList", hl);
		}
		return address;
	}

	@RequestMapping(value = "/modhw")
	public String modHomeWork(@RequestParam(value = "mdiary", defaultValue = "-") List<String> mdiary
							,@RequestParam(value = "mhw", defaultValue = "-") List<String> mhw
							,@RequestParam(value = "hsq", defaultValue = "0") int hsq
							,@RequestParam(value = "id", defaultValue = "-") String id
							,Model model) {
		log.info("modHomeWork >>> ");
//		log.info("Student : " + id);
//		log.info("ModHomeWork Test" + hsq);
		model.addAttribute("id",id);
		String md = "";
		String hw = "";
		HomeDto hd = new HomeDto();
		String encodingId = "";
		hd.setHomework_seq(hsq);
		for (int i = 0; i < mdiary.size(); i++) {
			if (i == mdiary.size() - 1) {
				md += mdiary.get(i);
			} else {
				md += mdiary.get(i) + "#";
			}
		}
		hd.setHomework_diary_or(md);
		for (int i = 0; i < mhw.size(); i++) {
			if (i == mhw.size() - 1) {
				hw += mhw.get(i);
			} else {
				hw += mhw.get(i) + "#";
			}
		}
		hd.setHomework_detail_or(hw);
		dnkService.modHomeWork(hd);
		try {
			encodingId = URLEncoder.encode(id, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			log.info(e.getMessage());
		}
		return "redirect:/goNewClass?hsq=" + hsq + "&id=" + encodingId;
	}
	@RequestMapping(value = "/insertHw")
	public String insertHonmeWork(Model model
								,@RequestParam(value = "id", defaultValue = "-") String id
								,@RequestParam(value = "diary", defaultValue = "没有日记") String diary
								,@RequestParam(value = "hw", defaultValue = "-") String hw
								,@RequestParam(value = "student_seq", defaultValue = "0") int student_seq) {
		log.info("insertHonmeWork >>> ");
		log.info("Student : " + id);
		log.info("student_seq : " + student_seq);
		HomeDto hd = new HomeDto();
		String[] diarys = diary.split("\n");
		String[] hws = hw.split("\n");
		String ndiary = "";
		String nhw = "";
		String encodingId = "";
		for (int i = 0; i < diarys.length; i++) {
			if(i == diarys.length - 1) {
				ndiary += diarys[i];
			} else {
				ndiary += diarys[i] + "#";
			}
		}
		for (int i = 0; i < hws.length; i++) {
			if(i == hws.length - 1) {
				nhw += hws[i];
			} else {
				nhw += hws[i] + "#";
			}
		}
		hd.setHomework_detail_or(nhw);
		hd.setHomework_diary_or(ndiary);
		hd.setStudent_num(student_seq);
		dnkService.insertHonmeWork(hd);
		try {
			encodingId = URLEncoder.encode(id, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			log.info(e.getMessage());
		}
		String address = "redirect:/startlean?id=" + encodingId;
		return address;
	}
	
	@RequestMapping(value = "/goClass2")
	public String goClass2() {
		String address = "dnk/classlist2";
		return address;
	}
	@RequestMapping(value = "/insertClass")
	public String insertClass(Model model
								,@RequestParam(value = "id", defaultValue = "-") String id
								,@RequestParam(value = "class_title", defaultValue = "-") String class_title
								,@RequestParam(value = "class_title_sub", defaultValue = "-") String class_title_sub
								,@RequestParam(value = "classdetail", defaultValue = "-") String classdetail
								,@RequestParam(value = "check", defaultValue = "-") String check
								) {
		model.addAttribute("id", id);
		ClassDto cd = new ClassDto();
		ChineseDto cnc = new ChineseDto();
		String address = "dnk/insertClass";
		String encodingId = "";
		cnc.setStudent_seq(99);
		if (check.equals("ok")) {
			if (id.equals("-")) {
				address = "dnk/login";
			} else {
				try {
					encodingId = URLEncoder.encode(id, "UTF-8");
				} catch (UnsupportedEncodingException e) {
					log.info(e.getMessage());
				}
				address = "redirect:/startlean?id=" + encodingId;
			}
			cd.setStudent_num(cnc.getStudent_seq());
			cd.setClass_detail_or(classdetail);
			cd.setClass_title(class_title);
			cd.setClass_title_sub(class_title_sub);
			cd.setClass_detail_af("没有资料");
			dnkService.insertClass(cd);
			log.info("添加课文非常顺利的成功了！！");
		}			
		return address;
	}
	
}
