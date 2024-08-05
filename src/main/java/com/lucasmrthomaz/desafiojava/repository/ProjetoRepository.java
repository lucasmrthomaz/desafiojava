package com.lucasmrthomaz.desafiojava.repository;

import com.lucasmrthomaz.desafiojava.entity.Projeto;
import org.springframework.data.repository.CrudRepository;

public interface ProjetoRepository extends CrudRepository<Projeto, Long> {
}