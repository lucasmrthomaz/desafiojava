package com.lucasmrthomaz.desafiojava.controller;

import com.lucasmrthomaz.desafiojava.entity.Projeto;
import com.lucasmrthomaz.desafiojava.repository.ProjetoRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/editar-frm")
    public ResponseEntity<Projeto> editar(@RequestParam(value = "id") int id) {
        return ResponseEntity.ok(projetoRepository.findById((long) id).orElse(null));
    }

    @PutMapping("/editar-frm")
    public ResponseEntity<Projeto> editarSalvar(@RequestParam(value = "id") int id, @RequestBody Projeto projeto) {
        var projetoExistente = projetoRepository.findById((long) id).orElse(null);

        if (projetoExistente == null) {
            return ResponseEntity.notFound().build();
        }
        projeto.setId(projetoExistente.getId());
        projetoRepository.save(projeto);
        return ResponseEntity.ok(projeto);
    }

    @GetMapping("/editar")
    public String editar() {
        return "editar";
    }

    @RequestMapping("/deletar")
    public String deletarProjeto(@RequestParam int id) {
        projetoRepository.deleteById((long) id);
        return "index";
    }

}
