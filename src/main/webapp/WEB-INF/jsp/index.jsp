<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="label" uri="http://www.springframework.org/tags/form" %>
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
        h1, h2, h3 {
            margin-top: 2rem;
        }

        .containerIndexVisaoGeral {
            padding: 1rem;
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
                    <a class="nav-link" aria-current="page" href="/projeto/novo">Novo projeto</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="containerIndexVisaoGeral" style="margin: 3rem;">
    <h1> Gestão de Projetos </h1>

    <div id="form-project">
        <h3> Visão geral dos projetos </h3>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Descrição</th>
                <th scope="col">Inicio</th>
                <th scope="col">Previsão Fim</th>
                <th scope="col">Data Fim</th>
                <th scope="col">Orçamento</th>
                <th scope="col">Risco</th>
                <th scope="col">Gerente</th>
                <th scope="col">Status</th>
                <th scope="col">Ação</th>
            </tr>
            </thead>
            <tbody id="table-body">

            </tbody>
        </table>
    </div>

</div>

</body>

<script>
    // URL do endpoint da API
    const apiUrl = 'http://localhost:8080/projeto/listar';
    const searchParams = new URLSearchParams(window.location.search);
    let currentId = {};

    function deletar(id) {
        window.location.href = "/projeto/deletar?id=" + currentId;
    }

    function editar(id) {
        window.location.href = "projeto/editar?id=" + currentId;
    }

    document.addEventListener('DOMContentLoaded', function () {


        // Referência ao corpo da tabela
        const tableBody = document.getElementById('table-body');

        // Função para preencher a tabela
        function fillTable(data) {
            data.forEach(projeto => {
                currentId = projeto.id;


                // Cria uma nova linha
                const row = document.createElement('tr');

                // Cria e preenche as células da linha
                const idCell = document.createElement('td');
                idCell.textContent = projeto.id;
                row.appendChild(idCell);

                const nameCell = document.createElement('td');
                nameCell.textContent = projeto.nome;
                row.appendChild(nameCell);

                const descricaoCell = document.createElement('td');
                descricaoCell.textContent = projeto.descricao;
                row.appendChild(descricaoCell);

                const dataInicioCell = document.createElement('td');
                const dataIniFmt = new Date(projeto.dataInicio);
                dataInicioCell.textContent = projeto.dataInicio;
                dataInicioCell.innerHTML = dataIniFmt.toLocaleDateString('pt-BR');
                row.appendChild(dataInicioCell);

                const dataPrevFimCell = document.createElement('td');
                const dataPrevFim = new Date(projeto.dataPrevisaoFim);
                dataPrevFimCell.textContent = projeto.dataPrevisaoFim;
                dataPrevFimCell.innerHTML = dataPrevFim.toLocaleDateString('pt-BR');
                row.appendChild(dataPrevFimCell);

                const dataFimCell = document.createElement('td');
                const dataFim = new Date(projeto.dataFim);
                dataFimCell.textContent = projeto.dataFim;
                dataFimCell.innerHTML = dataFim.toLocaleDateString('pt-BR');
                row.appendChild(dataFimCell);

                const orcamentoCell = document.createElement('td');
                orcamentoCell.textContent = "R$ " + projeto.orcamento;
                row.appendChild(orcamentoCell);

                const riscoCell = document.createElement('td');
                riscoCell.textContent = projeto.risco;
                row.appendChild(riscoCell);

                const gerenteCell = document.createElement('td');
                gerenteCell.textContent = projeto.nomeGerente;
                row.appendChild(gerenteCell);

                const statusCell = document.createElement('td');
                statusCell.textContent = projeto.status;
                row.appendChild(statusCell);

                const acaoCell = document.createElement('td');
                acaoCell.innerHTML = "<p class='fa fa-pen-alt' role='button' onclick='editar(currentId.id)' '></p>  <p class='fa fa-trash' role='button' onclick=deletar(currentId.id)></p>"
                row.appendChild(acaoCell);

                // Adiciona a linha ao corpo da tabela
                tableBody.appendChild(row);
            });
        }

        // Faz a chamada fetch para obter os dados
        fetch(apiUrl)
            .then(response => response.json())
            .then(data => fillTable(data))
            .catch(error => console.error('Erro ao buscar dados:', error));
    });

</script>

<script src="<c:url value="/static/node_modules/bootstrap/dist/js/bootstrap.min.js"/>"></script>
</html>