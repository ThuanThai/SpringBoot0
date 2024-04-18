package vn.hoidanit.laptopshop.controller.admin;

import java.util.List;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UploadService;
import vn.hoidanit.laptopshop.service.UserService;

// @RestController
@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String creatUser(@ModelAttribute("newUser") User newUser, @RequestParam("hoidanitFile") MultipartFile file) {
        String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
        // String hashPassword = new
        // BCryptPasswordEncoder().encode(newUser.getPassword());
        String hashPassword = passwordEncoder.encode(newUser.getPassword());

        newUser.setAvatar(avatar);
        newUser.setPassword(hashPassword);
        newUser.setRole(this.userService.findRoleByName(newUser.getRole().getName()));
        this.userService.handleSaveData(newUser);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user")
    public String getDisplayUserPage(Model model) {
        List<User> usersList = this.userService.findAllUSer();
        model.addAttribute("usersList", usersList);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/{id}")
    public String getDetailPage(Model model, @PathVariable long id) {
        User user = this.userService.findUserById(id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/edit/{id}")
    public String getUpdatePage(Model model, @PathVariable long id) {
        User user = this.userService.findUserById(id);
        model.addAttribute("user", user);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/edit")
    public String postUpdateUser(@ModelAttribute("user") User user, @RequestParam("hoidanitFile") MultipartFile file) {
        User updateUser = this.userService.findUserById(user.getId());
        if (updateUser != null) {
            updateUser.setFullName(user.getFullName());
            updateUser.setAddress(user.getAddress());
            updateUser.setPhone(user.getPhone());
            updateUser.setPassword(user.getPassword());
            updateUser.setRole(this.userService.findRoleByName(user.getRole().getName()));

            if (file != null) {
                if (updateUser.getAvatar() != null) {
                    String dir = this.uploadService.hanldeFindDirFile("avatar", updateUser.getAvatar());
                    this.uploadService.handleDeleteFile(dir);
                }
                String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
                updateUser.setAvatar(avatar);
            }

            this.userService.handleSaveData(updateUser);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeletePage(Model model, @PathVariable long id) {
        User user = this.userService.findUserById(id);
        model.addAttribute("user", user);
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete/{id}")
    public String postDeleteUser(@PathVariable long id) {
        this.userService.deleteUser(id);
        return "redirect:/admin/user";
    }
}