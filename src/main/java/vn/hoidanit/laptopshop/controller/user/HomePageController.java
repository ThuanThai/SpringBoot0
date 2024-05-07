package vn.hoidanit.laptopshop.controller.user;

import java.util.List;

import org.apache.catalina.mapper.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.validation.Valid;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.RegisterDTO;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class HomePageController {
    private final ProductService productService;
    private final UserService userService;

    public HomePageController(ProductService productService, UserService userService) {
        this.productService = productService;
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.findAllProducts();
        model.addAttribute("products", products);
        return "client/homepage/show";
    }

    // Register Controller

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(@Valid @ModelAttribute("registerUser") RegisterDTO registerUser,
            BindingResult registerBindingResult) {
        User user = userService.RegisterDTOToUser(registerUser);
        if (registerBindingResult.hasErrors()) {
            return "/client/auth/register";
        }
        user.setRole(this.userService.findRoleByName("USER"));
        this.userService.handleSaveData(user);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String getLoginPage() {
        return "client/auth/login";
    }

    @GetMapping("/error-page")
    public String getErrorPage() {
        return "client/auth/error";
    }
}
