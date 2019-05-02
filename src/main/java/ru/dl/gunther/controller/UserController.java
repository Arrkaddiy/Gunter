package ru.dl.gunther.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.dl.gunther.domain.Role;
import ru.dl.gunther.domain.User;
import ru.dl.gunther.service.UserService;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/users")
@PreAuthorize("hasAuthority('ADMIN')")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String userList(Model model) {

        model.addAttribute("users", userService.findAll());

        return "userListPage";
    }

    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());

        return "userEditPage";
    }

    @PostMapping("{user}")
    public String userSave(@RequestParam("userId") User user,
                           @RequestParam(name = "username") String username,
                           @RequestParam Map<String, String> form,
                           Model model) {

        user.getRoles().clear();
        user.setUsername(username);

        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());
        for (String key : form.keySet())
            if (roles.contains(key)) user.getRoles().add(Role.valueOf(key));

        userService.save(user);

        return "redirect:/users/{user}";
    }

}
