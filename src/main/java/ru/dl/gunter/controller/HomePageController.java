package ru.dl.gunter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.dl.gunter.domain.Message;
import ru.dl.gunter.domain.User;
import ru.dl.gunter.service.MessageService;

import java.io.IOException;

@Controller
@RequestMapping("/homepage")
public class HomePageController {

    @Autowired
    private MessageService messageService;


    @GetMapping
    public String homePage(@RequestParam(name = "filter", required = false, defaultValue = "") String filter,
                           Model model) {
        Iterable<Message> messages;

        if (filter != null && !filter.isEmpty()) {
            messages = messageService.findByTag(filter);
        } else {
            messages = messageService.findAll();
        }

        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);

        return "homePagePage";
    }

    @PostMapping
    public String addMessage(@AuthenticationPrincipal User authUser,
                             @RequestParam(name = "tag", required = true) String tag,
                             @RequestParam(name = "head", required = true) String head,
                             @RequestParam(name = "body", required = true) String body,
                             @RequestParam(name = "file", required = false) MultipartFile file) throws IOException {

        messageService.saveNew(new Message(tag, head, body, authUser), file);

        return "redirect:/homepage";
    }



}
