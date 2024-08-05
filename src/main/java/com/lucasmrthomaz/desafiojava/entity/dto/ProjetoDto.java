package com.lucasmrthomaz.desafiojava.entity.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * DTO for {@link com.lucasmrthomaz.desafiojava.entity.Projeto}
 */
public class ProjetoDto implements Serializable {
    private final long id;
    private final String nome;
    private final String descricao;
    private final Date dataInicio;
    private final Date dataFim;
    private final Date dataPrevisaoFim;
    private final String status;
    private final float orcamento;
    private final String risco;
    private final String nomeGerente;

    public ProjetoDto(long id, String nome, String descricao, Date dataInicio, Date dataFim, Date dataPrevisaoFim, String status, float orcamento, String risco, String nomeGerente) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.dataPrevisaoFim = dataPrevisaoFim;
        this.status = status;
        this.orcamento = orcamento;
        this.risco = risco;
        this.nomeGerente = nomeGerente;
    }

    public long getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public Date getDataFim() {
        return dataFim;
    }

    public Date getDataPrevisaoFim() {
        return dataPrevisaoFim;
    }

    public String getStatus() {
        return status;
    }

    public float getOrcamento() {
        return orcamento;
    }

    public String getRisco() {
        return risco;
    }

    public String getNomeGerente() {
        return nomeGerente;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProjetoDto entity = (ProjetoDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.nome, entity.nome) &&
                Objects.equals(this.descricao, entity.descricao) &&
                Objects.equals(this.dataInicio, entity.dataInicio) &&
                Objects.equals(this.dataFim, entity.dataFim) &&
                Objects.equals(this.dataPrevisaoFim, entity.dataPrevisaoFim) &&
                Objects.equals(this.status, entity.status) &&
                Objects.equals(this.orcamento, entity.orcamento) &&
                Objects.equals(this.risco, entity.risco) &&
                Objects.equals(this.nomeGerente, entity.nomeGerente);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nome, descricao, dataInicio, dataFim, dataPrevisaoFim, status, orcamento, risco, nomeGerente);
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "nome = " + nome + ", " +
                "descricao = " + descricao + ", " +
                "dataInicio = " + dataInicio + ", " +
                "dataFim = " + dataFim + ", " +
                "dataPrevisaoFim = " + dataPrevisaoFim + ", " +
                "status = " + status + ", " +
                "orcamento = " + orcamento + ", " +
                "risco = " + risco + ", " +
                "nomeGerente = " + nomeGerente + ")";
    }
}