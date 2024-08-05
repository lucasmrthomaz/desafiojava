package com.lucasmrthomaz.desafiojava.controller;

import com.lucasmrthomaz.desafiojava.entity.Projeto;
import com.lucasmrthomaz.desafiojava.repository.ProjetoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.logging.Logger;

@RestController
@RequestMapping("/projeto")
public class ProjetoRestController {

    @Autowired
    ProjetoRepository projetoRepository;
    Logger logger = Logger.getLogger(getClass().getName());

    @PostMapping("/add")
    public Projeto novoProjeto(@RequestBody Projeto projeto) {
        logger.info("[INFO] Criando novo projeto...");
        return projetoRepository.save(projeto);
    }

    @GetMapping("/listar")
    public Iterable<Projeto> getAll() {
        logger.info("[INFO] Listando todos os projetos...");
        return projetoRepository.findAll();
    }

}
