package vn.hoidanit.laptopshop.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProductPageController {
    @GetMapping("/product/{id}")
    public String getProductDetailPage(@PathVariable long id) {
        return "client/product/show";
    }

}
