package ru.dl.gunter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexPageController {

    @GetMapping("/")
    public String indexPage0(Model model) {
        return "indexPage";
    }

    @GetMapping("/index")
    public String indexPage1(Model model) {
        return "indexPage";
    }
}
