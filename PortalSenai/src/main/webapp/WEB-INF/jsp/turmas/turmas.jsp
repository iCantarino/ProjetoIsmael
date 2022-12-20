
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
    <title>Minhas Turmas</title>
    
 	<style>
      .turmas{
        display: flex;
        flex-direction: row;
        margin-top: 5%;
      }

      .turma1{
        background-color: aquamarine;
        color: black;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        width: 300px;
        height: 200px;
        text-align: center;
      }

      .topo1{
        background-color: rgb(71, 180, 144);
      }
      .conteudo1{
        margin-top: 15%;
        font-size: 130%;
      }
      h4{
        padding: 5%;
      }
      .turma2{
        background-color: rgb(216, 92, 210);
        color: black;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        width: 300px;
        height: 200px;
        text-align: center;
      }

      .topo2{
        background-color: rgb(245, 160, 241);
      }
      .conteudo2{
        margin-top: 15%;
        font-size: 130%;
      }
      .turma3{
        background-color: rgb(230, 180, 43);
        color: black;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        width: 300px;
        height: 200px;
        text-align: center;
      }

      .topo3{
        background-color: rgb(245, 205, 95);
      }
      .conteudo3{
        margin-top: 15%;
        font-size: 130%;
      }
    </style>   
    
</head>

<body  >
  <header class="cabecalho">
    
    <nav class="cabecalho-menu">
      <img class="imagem-logo" img src="imagens/logo1W.png" alt="logo">
      <a href="<c:url value="area"/>" cabecalho-menu-item>Home</a>
      <a cabecalho-menu-item>Cursos</a>
      <a cabecalho-menu-item>Unidades</a>
      <a cabecalho-menu-item>Informações</a>
      <a href="<c:url value="index"/>" cabecalho-menu-item>Login</a>
      <img class="imagem-logo" img src="imagens/facebookW.png" alt="fb">
    <img class="imagem-logo" img src="imagens/instagramW.png" alt = "insta">
    </nav>
    </header>

    <main>
	
		<div class="turmas">

	        <div class="turma1">
    	      <div class="topo1"><h4>Turma M1P - POO</h4></div>
        	  <div class="conteudo1"><a href="<c:url value="chamada"/>">Ir para a turma</a></div>
	        </div>

	        <div class="turma2">
    	      <div class="topo2"><h4>Turma M2P - Banco de Dados</h4></div>
        	  <div class="conteudo2"><a href="<c:url value="chamada"/>">Ir para a turma</a></div>
	        </div>

    	    <div class="turma3">
        	  <div class="topo3"><h4>Turma M2E - Elétrica</h4></div>
	          <div class="conteudo3"><a href="#">Ir para a turma</a></div>
    	    </div>

	      </div>
        
    </main>

</body>
</html>
