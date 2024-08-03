package com.lucasmrthomaz.desafiojava.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/novo")
    public String novo() {
        return "novo";
    }

}
