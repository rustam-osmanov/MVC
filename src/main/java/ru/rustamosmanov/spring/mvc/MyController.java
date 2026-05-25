package ru.rustamosmanov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping(value = "/test", produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String test() {
        return "Spring работает!";
    }

    @RequestMapping(value = "/my", produces = "text/plain;charset=windows-1251")
    public String showMyView(){
        return "myView";
    }

}