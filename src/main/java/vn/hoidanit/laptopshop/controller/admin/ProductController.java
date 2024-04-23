package vn.hoidanit.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.UploadService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

@Controller
public class ProductController {

    private final ProductService productService;
    private final UploadService uploadService;

    public ProductController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }

    // Get All Products Page
    @GetMapping("admin/product")
    public String getProductPage(Model model) {
        List<Product> pList = this.productService.findAllProducts();
        model.addAttribute("productList", pList);
        return "/admin/product/show";
    }

    // Create New Product
    @GetMapping("admin/product/create")
    public String getProductCreatePage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "/admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String createUser(@ModelAttribute("newProduct") @Valid Product newProduct,
            BindingResult newProductBindingResult,
            @RequestParam("hoidanitFile") MultipartFile file) {

        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            return "/admin/product/create";
        }

        String image = this.uploadService.handleSaveUploadFile(file, "product");

        newProduct.setImage(image);

        this.productService.handleSaveData(newProduct);

        return "redirect:/admin/product";
    }

    // Detail Controller for product
    @GetMapping("/admin/product/{id}")
    public String getDetailPage(Model model, @PathVariable long id) {
        Product product = this.productService.findProductById(id);
        model.addAttribute("product", product);
        return "admin/product/detail";
    }

    // Update Controller for product
    @GetMapping("/admin/product/edit/{id}")
    public String getProductUpdatePage(Model model, @PathVariable long id) {
        Product pr = this.productService.findProductById(id);
        model.addAttribute("newProduct", pr);
        return "admin/product/update";
    }

    @PostMapping("/admin/product/edit")
    public String postMethodName(@Valid @ModelAttribute("newProduct") Product pr, BindingResult productBindingResult,
            @RequestParam("hoidanitFile") MultipartFile file) {
        Product updatePr = this.productService.findProductById(pr.getId());

        List<FieldError> errors = productBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }

        if (productBindingResult.hasErrors()) {
            return "/admin/product/edit/" + pr.getId();
        }

        if (!file.isEmpty()) {
            if (updatePr.getImage() != null) {
                String dir = this.uploadService.handleFindDirFile("product", updatePr.getImage());
                this.uploadService.handleDeleteFile(dir);
            }
            String image = this.uploadService.handleSaveUploadFile(file, "product");
            updatePr.setImage(image);
        }

        updatePr.setName(pr.getName());
        updatePr.setName(pr.getName());
        updatePr.setDetailDesc(pr.getDetailDesc());
        updatePr.setShortDesc(pr.getShortDesc());
        updatePr.setSold(pr.getSold());
        updatePr.setQuantity(pr.getQuantity());
        updatePr.setFactory(pr.getFactory());
        updatePr.setTarget(pr.getTarget());

        this.productService.handleSaveData(updatePr);
        return "redirect:/admin/product";
    }

    // Delete Controller for product
    @GetMapping("/admin/product/delete/{id}")
    public String getDeletePage(Model model, @PathVariable long id) {
        Product pr = this.productService.findProductById(id);
        model.addAttribute("product", pr);
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete/{id}")
    public String postDeleteProduct(@PathVariable long id) {
        this.productService.deleteProductId(id);
        return "redirect:/admin/product";
    }
}
