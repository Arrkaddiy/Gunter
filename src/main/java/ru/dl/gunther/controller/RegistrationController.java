package ru.dl.gunther.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.dl.gunther.domain.User;
import ru.dl.gunther.service.UserService;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String registration() {

        return "registrationPage";
    }

    @PostMapping
    public String addUser(User user, Model model) {

        if (!userService.addUser(user)) {
            model.addAttribute("message", "Пользователь с таким \"Login\" уже существует");
            return "registrationPage";
        }

        return "redirect:/login";
    }
}
