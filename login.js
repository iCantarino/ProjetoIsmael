function logar(){

    var login = document.getElementById('login').value;
    var senha = document.getElementById('senha').value;

    if(login == "Alisson" && senha == "123"){
        alert('Usuario Autenticado');
        location.href = "areadoprofessor.html";
    }else{
        alert('Usuario ou senha incorretos');
    }

}