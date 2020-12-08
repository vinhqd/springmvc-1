package com.example.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "categoryControllerOfAdmin")
public class CategoryController {

    @RequestMapping(value = "/admin/category", method = RequestMethod.GET)
    public String categoryPage() {
        return "admin/categories/category";
    }

}
