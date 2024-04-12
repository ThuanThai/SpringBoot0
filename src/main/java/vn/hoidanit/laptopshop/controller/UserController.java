package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;

// @RestController
@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }


    @GetMapping()
    public String getHomePage(Model model) {
        String s = this.userService.handleHello();
        model.addAttribute("hello", s);
        return "hello";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String creatUserPage(@ModelAttribute("newUser") User newUser) {
        this.userService.handleSaveData(newUser);
        return "redirect:http://localhost:8080/admin/user";
    }

    @GetMapping("/admin/user")
    public String getDisplayUserPage(Model model) {
        List<User> usersList = this.userService.findAllUSer();
        model.addAttribute("usersList", usersList);
        return "admin/user/display";
    }

    @GetMapping("/admin/user/{id}")
    public String getDetailPage(Model model, @PathVariable long id) {
        User user = this.userService.findUserById(id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/edit/{id}")
    public String getUpdatePage( Model model, @PathVariable long id) {
        User user = this.userService.findUserById(id);
        model.addAttribute("user", user);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/edit")
    public String postUpdateUser (@ModelAttribute("user") User user) {
        User updatUser = this.userService.findUserById(user.getId());
        if (updatUser != null) {
            updatUser.setFullName(user.getFullName());
            updatUser.setAddress(user.getAddress());
            this.userService.handleSaveData(updatUser);
        }
        return "redirect:/admin/user";
    }
}
