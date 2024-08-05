package com.lucasmrthomaz.desafiojava.repository;

import com.lucasmrthomaz.desafiojava.entity.Pessoa;
import org.springframework.data.repository.CrudRepository;

public interface PessoaRepository extends CrudRepository<Pessoa, Long> {
}
