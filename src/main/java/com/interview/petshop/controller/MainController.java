package com.interview.petshop.controller;

import com.interview.petshop.model.Product;
import com.interview.petshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/petshop")
public class MainController {

    @Autowired
    ProductService productService;

    @GetMapping("/greeting")
    public String greeting() {

        return "greeting";
    }


    @GetMapping("/list")
    public String list(Model model) {
        Iterable<Product> productList = productService.getAllProducts();
        model.addAttribute("productList", productList);
        return "product_list";
    }

    @GetMapping("/addProduct")
    public String addProduct(Model model) {

        Product product = new Product();
        model.addAttribute("command", product);
        return "product_form";

    }

    @GetMapping("/updateProduct/{id}")
    public String editProduct(@PathVariable long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("command", product);
        return "product_form";
    }

    @PostMapping("/saveProduct")
    public String save(@ModelAttribute("command") Product product) {
        productService.saveOrUpdate(product);
        return "redirect:/petshop/list";
    }

    @GetMapping("/deleteProduct/{id}")
    public String delete(@PathVariable long id) {
        productService.deleteProduct(id);
        return "redirect:/petshop/list";
    }
}
