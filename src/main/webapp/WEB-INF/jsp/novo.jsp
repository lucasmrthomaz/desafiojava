<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt_br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Desafio Java</title>

    <link href="<c:url value="/static/node_modules/bootstrap/dist/css/bootstrap.min.css"/>"
          rel="stylesheet">

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

<div class="container">
    <h1> Gestão de Projetos </h1>

    <div id="form-project">
        <h3> Novo projeto </h3>
        <form>
            <label for="nome-projeto">Nome Projeto</label>
            <input class="form-control" id="nome-projeto" type="text" placeholder="Nome projeto"/> <br>

            <label for="descricao-projeto">Descrição do projeto</label>
            <input class="form-control" id="descricao-projeto" type="text" placeholder="Descreva o projeto"/> <br>

            <label for="nome-gerente">Gerente responsável</label>
            <input class="form-control" id="nome-gerente" type="text" placeholder="Gerente responsável"/> <br>
            <hr>
            <label for="data-inicio">Data Inicio</label>
            <input class="form-control" id="data-inicio" type="date" /> <br>

            <label for="previsao-termino">Data Prevista de Término</label>
            <input class="form-control" id="previsao-termino" type="date" /> <br>

            <label for="data-real-termino">Data Real de Término</label>
            <input class="form-control" id="data-real-termino" type="date" /> <br>
            <hr>
            <label for="orcamento-projeto">Orçamento do projeto</label>
            <input class="form-control" id="orcamento-projeto" type="text" placeholder="Orçamento"/> <br>

            <label for="status-projeto">Status do projeto</label>
            <select class="form-select" id="status-projeto">
                <option selected disabled>Status do projeto:</option>
                <option value="1">Em análise</option>
                <option value="2">Análise realizada</option>
                <option value="3">Análise aprovada</option>
                <option value="" disabled> ---- </option>
                <option value="3">Iniciado</option>
                <option value="3">Planejado</option>
                <option value="3">Em andamento</option>
                <option value="3">Encerrado</option>
                <option value="3">Cancelado</option>
            </select> <br>

            <label for="risco-projeto">Risco do projeto</label>
            <select class="form-select" id="risco-projeto">
                <option selected disabled>Selecione o Risco:</option>
                <option value="1">Baixo</option>
                <option value="2">Médio</option>
                <option value="3">Alto</option>
            </select> <br>

        </form>
    </div>

</div>

</body>

<script src="<c:url value="/static/node_modules/bootstrap/dist/js/bootstrap.min.js"/>"></script>
</html>