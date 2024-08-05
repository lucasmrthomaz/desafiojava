<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pt_br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Desafio Java</title>

    <link href="<c:url value="/static/node_modules/bootstrap/dist/css/bootstrap.min.css"/>"
          rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <style>
        h1,h2,h3{
            margin-top: 2rem;
        }
    </style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Desafio Java</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
                aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li>
                    <a class="nav-link" aria-current="page" href="/novo">Novo projeto</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container" style="width: 50%;">
    <h1> Gestão de Projetos </h1>
    <button class="fa fa-left-long btn btn-primary" onclick="window.history.back()"> Voltar</button>

    <div>
        <h3> Novo projeto </h3>
        <form id="project-form">
            <label for="nome-projeto">Nome Projeto</label>
            <input class="form-control" id="nome-projeto" type="text" placeholder="Nome projeto" required/> <br>

            <label for="descricao-projeto">Descrição do projeto</label>
            <input class="form-control" id="descricao-projeto" type="text" placeholder="Descreva o projeto" required/>
            <br>

            <label for="nome-gerente">Gerente responsável</label>
            <input class="form-control" id="nome-gerente" type="text" placeholder="Gerente responsável" required/> <br>
            <hr>
            <label for="data-inicio">Data Inicio</label>
            <input class="form-control" id="data-inicio" type="date"/> <br>

            <label for="previsao-termino">Data Prevista de Término</label>
            <input class="form-control" id="previsao-termino" type="date"/> <br>

            <label for="data-real-termino">Data Real de Término</label>
            <input class="form-control" id="data-real-termino" type="date"/> <br>
            <hr>
            <label for="orcamento-projeto">Orçamento do projeto</label>
            <input class="form-control" id="orcamento-projeto" type="text" placeholder="Orçamento" required/> <br>

            <label for="status-projeto">Status do projeto</label>
            <select class="form-select" id="status-projeto" required>
                <option selected disabled>Status do projeto:</option>
                <option value="Em análise">Em análise</option>
                <option value="Análise realizada">Análise realizada</option>
                <option value="Análise aprovad">Análise aprovada</option>
                <option value="" disabled> ---- </option>
                <option value="Iniciado">Iniciado</option>
                <option value="Planejado">Planejado</option>
                <option value="Em andamento">Em andamento</option>
                <option value="Encerrado">Encerrado</option>
                <option value="Cancelado">Cancelado</option>
            </select> <br>

            <label for="risco-projeto">Risco do projeto</label>
            <select class="form-select" id="risco-projeto" required>
                <option selected disabled>Selecione o Risco:</option>
                <option value="Baixo">Baixo</option>
                <option value="Médio">Médio</option>
                <option value="Alto">Alto</option>
            </select> <br>
            <button type="submit" class="btn btn-primary btn-lg" style="width: 100%; margin-top: 15px;">Cadastrar
            </button>
        </form>
    </div>

</div>

</body>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('project-form');

        form.addEventListener('submit', function (event) {
            event.preventDefault(); // Evita o envio padrão do formulário

            const projectData = {
                nome: document.getElementById('nome-projeto').value,
                descricao: document.getElementById('descricao-projeto').value,
                nomeGerente: document.getElementById('nome-gerente').value,
                dataInicio: document.getElementById('data-inicio').value,
                dataPrevisaoFim: document.getElementById('previsao-termino').value,
                dataFim: document.getElementById('data-real-termino').value,
                orcamento: document.getElementById('orcamento-projeto').value,
                status: document.getElementById('status-projeto').value,
                risco: document.getElementById('risco-projeto').value
            };

            fetch('http://localhost:8080/projeto/add', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(projectData)
            })
                .then(response => response.json())
                .then(data => {
                    console.log('Success:', data);
                    form.reset();
                    window.history.back();
                })
                .catch((error) => {
                    console.error('Error:', error);
                    //alert('Erro ao salvar o projeto.');
                });
        });


    });

</script>

<script src="<c:url value="/static/node_modules/bootstrap/dist/js/bootstrap.min.js"/>"></script>
</html>