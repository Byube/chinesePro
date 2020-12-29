package com.dnk.chinese.controller;

import com.dnk.chinese.dto.ChineseDto;
import com.dnk.chinese.dto.HomeDto;
import com.dnk.chinese.service.DnkService;
import groovy.util.logging.Slf4j;

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
		log.info("hello : ");
		String address = "dnk/hello";
		return address;
	}

	@RequestMapping(value = "/start")
	public String start() {
		log.info("start : ");
		String address = "dnk/login";
		return address;
	}

	@RequestMapping(value = "/startlean")
	public String startlean(@RequestParam(value = "id", defaultValue = "-") String id, Model model,HttpSession session) {
		log.info("Student : " + id);
		String address = "dnk/lean";
		ChineseDto cnc = new ChineseDto();
		try {
			cnc = dnkService.getStudentDetail(id);
			String student_brith = cnc.getStudent_brith();
			model.addAttribute("student_brith", student_brith);
			model.addAttribute("student_seq", cnc.getStudent_seq());
			session.setAttribute("id", id);
			List<HomeDto> homelist = dnkService.getHomeWorkTitle(cnc);
			model.addAttribute("homelist", homelist);
		} catch (Exception e) {
			address = "dnk/omg";
		}
		return address;
	}

	@RequestMapping(value = "/goNewClass")
	public String getNewClass(@RequestParam(value = "hsq", defaultValue = "0") int hsq, Model model) {
		log.info("getNewClass Homework SEQ : " + hsq);
		String address = "dnk/classlist";
		List<HomeDto> hl = new ArrayList<HomeDto>();
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
							,@RequestParam(value = "hsq", defaultValue = "0") int hsq) {
		log.info("ModHomeWork Test" + hsq);
		String md = "";
		String hw = "";
		HomeDto hd = new HomeDto();
		hd.setHomework_seq(hsq);
		for (int i = 0; i < mdiary.size(); i++) {
			if (i == mdiary.size() - 1) {
				md += mdiary.get(i);
			} else {
				md += mdiary.get(i) + "#";
			}
		}
		hd.setHomework_diary_or(md);
		log.info(md);
		for (int i = 0; i < mhw.size(); i++) {
			if (i == mhw.size() - 1) {
				hw += mhw.get(i);
			} else {
				hw += mhw.get(i) + "#";
			}
		}
		hd.setHomework_detail_or(hw);
		dnkService.modHomeWork(hd);
		return "redirect:/goNewClass?hsq=" + hsq;
	}
	@RequestMapping(value = "/insertHw")
	public void insertHonmeWork() {
		String address = "dnk/classlist";
//		return address;
	}
}
