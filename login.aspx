<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="SrTec_login" %>

<!DOCTYPE html>

<html>

<head>
  
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  
  
  <title></title>
  <link href="css/signin.css" rel="stylesheet">

</head>
<body>

    <form class="form-signin">
        <h1 class="h3 mb-3 font-weight-normal">Conecte-se</h1>
        <label for="inputEmail" class="sr-only">Endereço de Email</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Endereço de Email" required autofocus>
        <label for="inputPassword" class="sr-only">Senha</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Senha" required>
        <div class="checkbox mb-3">
          <label>
            <input type="checkbox" value="remember-me"> Salvar Dados
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
        <button class="btn btn-lg btn-primary btn-block"><a href="Default.aspx" style="color: white">Voltar</a></button> 
        <p class="mt-5 mb-3 text-muted">&copy; 2017- 2019</p>
      </form>
</body>

</html>

