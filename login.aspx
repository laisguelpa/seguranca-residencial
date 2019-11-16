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

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="Default.aspx">SrTec</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                    
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Pessoas
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                              <a class="dropdown-item" href="Cliente.aspx">Cliente</a>
                              <a class="dropdown-item" href="Funcionario.aspx">Funcionário</a>
                            </div>
                          </li>
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Produto
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                              <a class="dropdown-item" href="Fornecedor.aspx">Fornecedor</a>
                              <a class="dropdown-item" href="Produto.aspx">Produto</a>
                              <a class="dropdown-item" href="Estoque.aspx">Estoque</a>
                              <a class="dropdown-item" href="Categoria.aspx">Categoria</a>
                            </div>
                          </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Empresa
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="Operacao.aspx">Instalação / Operação</a>
                      </div>
                    </li>

                    <li class="nav-item active">
                            <a class="nav-link" href="login.aspx">Login<span class="sr-only">(current)</span></a>
                    </li>

                  </ul>
                </div>
     </nav>

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
        <p class="mt-5 mb-3 text-muted">&copy; 2017- 2019</p>
      </form>
</body>

</html>

