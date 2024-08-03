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
    <h3> Visão geral dos projetos </h3>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Descricao</th>
                <th scope="col">Data Inicio</th>
                <th scope="col">Data Prev. Fim</th>
                <th scope="col">Data Fim</th>
                <th scope="col">Orcamento</th>
                <th scope="col">Risco</th>
                <th scope="col">Gerente</th>
                <th scope="col">Status</th>
                <th scope="col">Ação</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>NomeProj</td>
                <td>Descr</td>
                <td>DtIni</td>
                <td>DtPrev</td>
                <td>DtFim</td>
                <td>Orc</td>
                <td>Risco</td>
                <td>Ger</td>
                <td>Sts</td>
                <td>Editar/Excluir</td>
            </tr>
            </tbody>
        </table>
    </div>

</div>

</body>

<script src="<c:url value="/static/node_modules/bootstrap/dist/js/bootstrap.min.js"/>"></script>
</html>