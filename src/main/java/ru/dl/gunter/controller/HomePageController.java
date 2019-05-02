package ru.dl.gunter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.dl.gunter.domain.Message;
import ru.dl.gunter.domain.User;
import ru.dl.gunter.service.MessageService;

import java.util.Map;

@Controller
public class HomePageController {

    @Autowired
    private MessageService messageService;


    @GetMapping("/homepage")
    public String homePage(@RequestParam(name = "filter", required = true, defaultValue = "") String filter,
                           Map<String, Object> model) {
        Iterable<Message> messages;

        if (filter != null && !filter.isEmpty()) {
            messages = messageService.findByTag(filter);
        } else {
            messages = messageService.findAll();
        }

        model.put("messages", messages);

        return "homePagePage";
    }

    @PostMapping("/homepage")
    public String addMessage(@AuthenticationPrincipal User authUser,
                             @RequestParam(name = "tag", required = true) String tag,
                             @RequestParam(name = "head", required = true) String head,
                             @RequestParam(name = "body", required = true) String body,
                             Map<String, Object> model) {

        messageService.save(new Message(tag, head, body, authUser));

        return "redirect:/homepage";
    }



}
