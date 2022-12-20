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
    <script src="login.js"></script>
    <title>Área de Login</title>
</head>

<body  >
  <header class="cabecalho">
    
    <nav class="cabecalho-menu">
      <img class="imagem-logo" img src="imagens/logo1W.png" alt="logo">

      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Cursos</a></li>
        <li><a href="#">Unidades</a></li>
        <li><a href="#">Informações</a></li>
        <li><a href="#">Login</a></li>
      </ul>

      <img class="imagem-logo" img src="imagens/facebookW.png" alt="fb">
      <img class="imagem-logo" img src="imagens/instagramW.png" alt = "insta">
    </nav>

  </header>

  <div class="caixa-login">
        <h1>LOGIN</h1>
        
        <c:if test="${not empty errors}">
					
			<div class="alert alert-danger" role="alert">
					
				<c:forEach var="error" items="${errors}">
    				${error.message}<br />
			  	</c:forEach>
					
			</div>
					
		</c:if>  
     <form method="post" action="index/logando">

          
          <input name="professor.nome" value="${professor.nome}" type="text" placeholder="Login" id="login">
          <input name="professor.senha" value="${professor.senha}" type="password" placeholder="Senha" id="senha">
          <input type="submit">
  
      </form>
    <h5><a href="#">Esqueceu sua senha?</a></h5>
    <h5><a href="<c:url value="registro"/>" >Criar conta</a></h5>
    </div>
  </div>



</body>

</html>
