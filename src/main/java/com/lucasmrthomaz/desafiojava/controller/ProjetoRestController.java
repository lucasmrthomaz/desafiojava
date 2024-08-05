package com.lucasmrthomaz.desafiojava.controller;

import com.lucasmrthomaz.desafiojava.entity.Projeto;
import com.lucasmrthomaz.desafiojava.repository.ProjetoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.logging.Logger;

/**
 * ! Important
 * - O sistema deve permitir o cadastro (inserção, exclusão, alteração e consulta) de
 * projetos. Para cada projeto devem ser informados: nome, data de início, gerente
 * responsável, previsão de término, data real de término, orçamento total, descrição e status.
 * - Os projetos devem ser classificados em: baixo risco, médio risco e alto risco. A
 * classificação de risco não é cadastrada no sistema, deve ser disponibilizada num
 * componente select.
 * - A cada instante, o projeto deve estar em um status específico e único. Os status
 * possíveis não são cadastrados no sistema e são: em análise, análise realizada,
 * análise aprovada, iniciado, planejado, em andamento, encerrado, cancelado.
 * - Se um projeto foi mudado o status para iniciado, em andamento ou encerrado
 * não pode mais ser excluído.
 */
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

    @DeleteMapping("/deletar")
    public void deletarProjeto(@RequestParam int id) {
        projetoRepository.deleteById((long) id);
        logger.info("[INFO] Projeto deletado com sucesso!");
    }

}
