package com.lucasmrthomaz.desafiojava.controller;

import com.lucasmrthomaz.desafiojava.entity.Pessoa;
import com.lucasmrthomaz.desafiojava.entity.dto.PessoaDto;
import com.lucasmrthomaz.desafiojava.repository.PessoaRepository;
import org.springframework.web.bind.annotation.*;

import java.util.logging.Logger;

/**
 * O sistema não deve permitir o cadastro de um novo membro diretamente. Deve
 * ser disponibilizado um end-point (JSON) que permita o recebimento de
 * requisições externas, contendo nome e atribuição (cargo).
 */
@RestController
@RequestMapping(path = "/v1/pessoa")
@CrossOrigin
public class PessoaController {

    private final PessoaRepository pessoaRepository;
    Logger logger = Logger.getLogger(getClass().getName());

    public PessoaController(PessoaRepository pessoaRepository) {
        this.pessoaRepository = pessoaRepository;
    }

    @GetMapping("/list")
    public Iterable<Pessoa> listarTodos() {
        logger.info("[INFO] Listando todos os pessoas");
        return pessoaRepository.findAll();
    }

    @PostMapping("/add")
    Pessoa novaPessoa(@RequestBody PessoaDto pessoa) {
        Pessoa pessoaSalva = new Pessoa();
        logger.info("[INFO] Salvando pessoa " + pessoa.getNome());
        return pessoaRepository.save(pessoaSalva);
    }

    @DeleteMapping("/delete")
    public void deletarPessoaId(@RequestBody PessoaDto pessoa) {
        Pessoa pessoaDelete = new Pessoa();
        pessoaRepository.delete(pessoaDelete);
        logger.info("[INFO] Pessoa deletada com sucesso " + pessoa.getNome());
    }

}
