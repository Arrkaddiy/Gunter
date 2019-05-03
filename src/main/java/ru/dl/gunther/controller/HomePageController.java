package ru.dl.gunther.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.dl.gunther.domain.Message;
import ru.dl.gunther.service.MessageService;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/homepage")
public class HomePageController {

    @Autowired
    private MessageService messageService;


    @GetMapping
    public String homePage(@RequestParam(name = "filter", required = false, defaultValue = "") String filter,
                           @RequestParam(name = "filterType", required = false, defaultValue = "") String filterType,
                           Model model) {
        Iterable<Message> messages = null;

        if (filter != null && !filter.isEmpty()) {
            switch (filterType) {
                case ("tag") :
                    messages = messageService.findByTag(filter);
                    break;
                case ("author") :
                    messages = messageService.findByAuthor(filter);
                    break;
                default :
                    messages = messageService.findAllOrderByDesc();
                    break;
            }
        } else {
            messages = messageService.findAllOrderByDesc();
        }

        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);

        return "homePagePage";
    }

}
