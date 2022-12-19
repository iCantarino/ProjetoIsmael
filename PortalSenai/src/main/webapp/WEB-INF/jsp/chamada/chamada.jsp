
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src=
    "https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
        </script>
    <title>Chamada</title>
</head>

<body  >
  <header class="cabecalho">
    
    <nav class="cabecalho-menu">
      <img class="imagem-logo" img src="imagens/logo1W.png" alt="logo">
      <a href="areadoprofessor.html" cabecalho-menu-item>Home</a>
      <a cabecalho-menu-item>Cursos</a>
      <a cabecalho-menu-item>Unidades</a>
      <a cabecalho-menu-item>Informações</a>
      <a href="index.html" cabecalho-menu-item>Login</a>
      <img class="imagem-logo" img src="imagens/facebookW.png" alt="fb">
    <img class="imagem-logo" img src="imagens/instagramW.png" alt = "insta">
    </nav>
    </header>

    <main>

      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Primeiro</th>
            <th scope="col">Último</th>
            <th scope="col">Nickname</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
        
    </main>

</body>
</html>
