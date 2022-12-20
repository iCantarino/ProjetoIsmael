<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        #materia{
            margin-top: 3%;
            margin-left: 28%;
            padding: 2%;
        }
        .tabela-aluno{
            height: 30%;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: azure;
        }
        .tabela-notas{
            margin-bottom: 5%;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: azure;
        }
    </style>
    <title>Boletim - Igor</title>
</head>

<body>
    <header class="cabecalho">

        <nav class="cabecalho-menu">
          <img class="imagem-logo" img src="imagens/logo1W.png" alt="logo">
          <a href="<c:url value="area"/>" cabecalho-menu-item>Home</a>
          <a cabecalho-menu-item>Cursos</a>
          <a cabecalho-menu-item>Unidades</a>
          <a cabecalho-menu-item>InformaÃ§Ãµes</a>
          <a href="<c:url value="index"/>" cabecalho-menu-item>Login</a>
          <img class="imagem-logo" img src="imagens/facebookW.png" alt="fb">
          <img class="imagem-logo" img src="imagens/instagramW.png" alt="insta">
        </nav>
      </header>

      <h2 id="materia">Boletim do(a) aluno(a) Igor na matÃ©ria de POO</h2>

      <table class="tabela-aluno">
        <thead>
          <tr>
            <th scope="col">Igor Cantarino - turma M1P</th>
            <th colspan="2">Primeiro semestre</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <td>ObservaÃ§Ãµes do professor: <br> Sem observaÃ§Ãµes</td>
            <td>Email: igor@gmail.com</td>
            <td>RA: 789789789</td>
          </tr>
        </tbody>
      </table>
<br><br>
      <table class="tabela-notas">
        <tr>
          <th>#</th>
          <th>1Âº Semestre</th>
          <th>2Âº Semestre</th>
          <th>3Âº Semestre</th>
        </tr>

        <tbody id="txtBusca">
          <tr>
            <td><strong>CrÃ­tico</strong></td>
            <td>50/50</td>
            <td>Em Aberto</td>
            <td>Em Aberto</td>
          </tr>
          <tr>
            <td><strong>DesejÃ¡vel</strong></td>
            <td>50/50</td>
            <td>Em Aberto</td>
            <td>Em Aberto</td>
          </tr>
          <tr>
            <td><strong>SoftSkils</strong></td>
            <td>Bem desenvolvidas</td>
            <td>Em Aberto</td>
            <td>Em Aberto</td>
          </tr>
          
        </tbody>
      </table>
</body>
</html>