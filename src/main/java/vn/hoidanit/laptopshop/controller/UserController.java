package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

// @RestController
@Controller
public class UserController {
    private UserService userService;
    

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping()
    public String getHomePage(Model model) {
        String s = this.userService.handleHello();
        model.addAttribute("hello", s);
        return "hello";
    }

    @GetMapping("/admin/user")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user", method = RequestMethod.POST)
    public String creatUserPage(Model model, @ModelAttribute("newUser") User newUser) {
        System.out.println(newUser);
        model.addAttribute("newUser", newUser);
        return "hello";
    }
}
