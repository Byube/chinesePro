package com.dnk.chinese;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DnkController {

    @RequestMapping(value = "/hello")
    public String hello(){
        String address = "dnk/hello";
        return address;
    }
    @RequestMapping(value = "/start")
    public String start(){
        String address = "dnk/login";
        return address;
    }
    @RequestMapping(value = "/startlean")
    public String startlean(@RequestParam(value = "id", defaultValue = "-")String id){
        String address = "dnk/lean";

        return address;
    }
}
