package ru.dl.gunter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class IndexPageController {

    @GetMapping("/")
    public String indexPage0(Map<String, Object> model) {
        return "indexPage";
    }

    @GetMapping("/index")
    public String indexPage1(Map<String, Object> model) {
        return "indexPage";
    }
}
