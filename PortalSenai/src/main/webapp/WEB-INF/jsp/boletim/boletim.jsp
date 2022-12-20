
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
    <title>Boletim</title>
</head>

<body  >
  <header class="cabecalho">
    
    <nav class="cabecalho-menu">
      <img class="imagem-logo" img src="imagens/logo1W.png" alt="logo">
      <a href="<c:url value="area"/>" cabecalho-menu-item>Home</a>
      <a cabecalho-menu-item>Cursos</a>
      <a cabecalho-menu-item>Unidades</a>
      <a cabecalho-menu-item>Informações</a>
      <a href="<c:url value="index"/>"cabecalho-menu-item>Login</a>
      <img class="imagem-logo" img src="imagens/facebookW.png" alt="fb">
    <img class="imagem-logo" img src="imagens/instagramW.png" alt = "insta">
    </nav>
    </header>
    <center>
      <h1>Boletim</h1>
      <h3>Digite o nome,email ou RA do aluno:
          <br>
          <input id="gfg" type="text" 
               placeholder="Pesquise">
        
      </h3>
      
      <br>
      <br>
      <table>
          <tr>
              <th>Nome</th>
              <th>Email</th>
              <th>RA</th>
          </tr>
          <tbody id="txtBusca">
              <tr>
                  <td><a href="<c:url value="boletimAlisson"/>" >Alisson</a></td>
                  <td>alisson@gmail.com</td>
                  <td>123123123</td>
              </tr>

              <tr>
                  <td><a href="<c:url value="boletimIgor"/>">Igor</a></td>
                  <td>igor@gmail.com</td>
                  <td>789789789</td>
              </tr>
              <tr>
                  <td><a href="<c:url value="boletimJuliana"/>">Juliana</a></td>
                  <td>juliana@gmail.com</td>
                  <td>147147147</td>
              </tr>
              <tr>
                  <td><a href="<c:url value="boletimJuan"/>">Juan</a></td>
                  <td>juan@gmail.com</td>
                  <td>258258258</td>
              </tr>
          </tbody>
      </table>

      <script>
          $(document).ready(function() {
              $("#gfg").on("keyup", function() {
                  var value = $(this).val().toLowerCase();
                  $("#txtBusca tr").filter(function() {
                      $(this).toggle($(this).text()
                      .toLowerCase().indexOf(value) > -1)
                  });
              });
          });
      </script>
</center>

</body>
</html>
