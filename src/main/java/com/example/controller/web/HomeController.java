package com.example.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public String homePage() {
        return "/web/home";
    }

    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public String loginPage() {
        return "/auth/login";
    }

    @RequestMapping(value = "/access-denied", method = RequestMethod.GET)
    public String accessDenied() {
        return "redirect:/dang-nhap?accessDenied";
    }

}
