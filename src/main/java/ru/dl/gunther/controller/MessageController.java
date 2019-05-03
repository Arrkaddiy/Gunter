package ru.dl.gunther.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.dl.gunther.domain.Message;
import ru.dl.gunther.domain.User;
import ru.dl.gunther.service.MessageService;

import java.io.IOException;

@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageService messageService;

    @GetMapping("/addmessage")
    public String addMessageG() {

        return "addMessagePage";
    }

    @PostMapping("/addmessage")
    public String addMessageP(@AuthenticationPrincipal User authUser,
                              @RequestParam(name = "tag", required = true) String tag,
                              @RequestParam(name = "body", required = true) String body,
                              @RequestParam(name = "file", required = false) MultipartFile file) throws IOException {

        messageService.saveNew(new Message(tag, body, authUser), file);

        return "redirect:/homepage";
    }

}
