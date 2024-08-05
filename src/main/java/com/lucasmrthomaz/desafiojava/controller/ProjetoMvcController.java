package com.lucasmrthomaz.desafiojava.controller;

import com.lucasmrthomaz.desafiojava.repository.ProjetoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/projeto")
public class ProjetoMvcController {

    private final ProjetoRepository projetoRepository;

    public ProjetoMvcController(ProjetoRepository projetoRepository) {
        this.projetoRepository = projetoRepository;
    }

    @GetMapping("")
    public String home(Model model) {
        model.addAttribute("projeto", projetoRepository.findAll());
        return "index";
    }

    @RequestMapping("/novo")
    public String novo() {
        return "novo";
    }

}
