package com.lucasmrthomaz.desafiojava.entity.dto;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * DTO for {@link com.lucasmrthomaz.desafiojava.entity.Pessoa}
 */
public class PessoaDto implements Serializable {
    private final long id;
    @Size(max = 100)
    private final String nome;
    @Size(max = 14)
    private final String cpf;
    private final Date dataNascimento;
    private final boolean funcionario;
    private final boolean gerente;

    public PessoaDto(long id, String nome, String cpf, Date dataNascimento, boolean funcionario, boolean gerente) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.funcionario = funcionario;
        this.gerente = gerente;
    }

    public long getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getCpf() {
        return cpf;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public boolean getFuncionario() {
        return funcionario;
    }

    public boolean getGerente() {
        return gerente;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PessoaDto entity = (PessoaDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.nome, entity.nome) &&
                Objects.equals(this.cpf, entity.cpf) &&
                Objects.equals(this.dataNascimento, entity.dataNascimento) &&
                Objects.equals(this.funcionario, entity.funcionario) &&
                Objects.equals(this.gerente, entity.gerente);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nome, cpf, dataNascimento, funcionario, gerente);
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "nome = " + nome + ", " +
                "cpf = " + cpf + ", " +
                "dataNascimento = " + dataNascimento + ", " +
                "funcionario = " + funcionario + ", " +
                "gerente = " + gerente + ")";
    }
}