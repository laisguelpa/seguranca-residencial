<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <title></title>

    <style type="text/css">
        #Select1 {
            width: 119px;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            width: 381px;
        }
        .auto-style4 {
            height: 38px;
            width: 381px;
        }
        .auto-style5 {
            height: 31px;
            width: 381px;
        }
    </style>

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

    <form id="form1" runat="server">
    <div>

        <table align="center" width="0" border="1" cellspacing="10" cellpadding="0">
                
                <h3 align="center">CLIENTE</h3>
            

                <tr>
                     <td><asp:Label ID="lbl_cliente" runat="server" Text="ID Cliente"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                <tr>
                     <td><asp:Label ID="lbl_nome" runat="server" Text="Nome"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_Nome" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                <tr>
                     <td><asp:Label ID="lbl_RG" runat="server" Text="RG"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="TextBox2" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                <tr>
                     <td><asp:Label ID="lbl_CPF" runat="server" Text="CPF"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_CPF" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                <tr>
                     <td><asp:Label ID="lbl_DtNasc" runat="server" Text="Data de Nascimento"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_DtNasc" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                <!-- ENDEREÇO -->
                
                <tr>
                     <td>CEP</td>
                     <td class="auto-style3"><asp:TextBox ID="txt_cep" runat="server" Width="247px"></asp:TextBox>
                        <asp:Button ID="Bt_Buscar" runat="server" Text="Buscar" Width="115px" Height="32px" OnClick="Bt_Buscar_Click"/>
                     </td>
                </tr>
                <tr>
                    <td>Cidade</td>
                    <td class="auto-style3"><asp:TextBox ID="txt_Cidade" runat="server" Width="385px"></asp:TextBox></td>
                <tr>
                    <td>Bairro</td>
                    <td class="auto-style3"><asp:TextBox ID="txt_Bairro" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                    
                <tr>
                    <td class="auto-style1">Estado</td>
                    <td class="auto-style3"><asp:TextBox ID="txt_Estado" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                    

                <!-- CONTATO -->
                
                <tr>
                     <td><asp:Label ID="lbl_tel" runat="server" Text="Telefone"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_tel" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_cel" runat="server" Text="Celular"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_cel" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                <tr>
                     <td><asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_email" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                
                
                     
                    
                <tr>
                    <td class="auto-style1"><asp:Label ID="sexo_lb" runat="server" Text="Sexo"></asp:Label></td>
                    <td class="auto-style3">
                        <select id="Select1" name="D1">
                            <option>Feminino</option>
                            <option>Masculino</option>
                            <option>Não-binário</option>
                            <option>Agênero</option>
                            <option>Gênero fluido</option>
                            <option>Prefiro não informar</option>
                        </select></td>
                </tr>

                    
                    <td class="auto-style2"><asp:Label ID="msg_lb" runat="server" Text="Mensagem"></asp:Label></td>
                    <td class="auto-style5"><asp:Label ID="lbl_msg" runat="server" Text="lbl_msg"></asp:Label></td>
                    <td class="auto-style5"><asp:Label ID="lbl_resultado" runat="server" Text="lbl_msg"></asp:Label></td>
                
            
                <tr>
                    <td>
                        <asp:gridview id="gridviewsrtec" runat="server" datasourceid="srtec"  autogeneratecolumns="false"  allowpaging="true" datakeynames="id_dados">
                            <columns>
                                <asp:commandfield showselectbutton="true" />
                                <asp:boundfield datafield="id_cliente" headertext="id_cliente" insertvisible="false" readonly="true" sortexpression="id_cliente" />
                                <asp:boundfield datafield="dados_nome" headertext="dados_nome" sortexpression="dados_nome" />
                                <asp:boundfield datafield="dados_RG" headertext="dados_RG" sortexpression="dados_RG" />
                                <asp:boundfield datafield="dados_CPF" headertext="dados_CPF" sortexpression="dados_CPF" />
                                <asp:boundfield datafield="dados_DtNasc" headertext="dados_DtNasc" sortexpression="dados_DtNasc" />
                                <asp:boundfield datafield="dados_cep" headertext="dados_cep" sortexpression="dados_cep" />
                                <asp:boundfield datafield="cli_tel" headertext="cli_tel" sortexpression="cli_tel" />
                                <asp:boundfield datafield="cli_cel" headertext="cli_cel" sortexpression="cli_cel" />
                                <asp:boundfield datafield="cli_email" headertext="cli_email" sortexpression="cli_email" />
                            </columns>
                        </asp:gridview>
                        <asp:sqldatasource id="srtec" runat="server" connectionstring="<%$ connectionstrings:srtecconnectionstring %>" selectcommand="select [id_dados], [dados_nome], [dados_cpf] from [tab_dadosgerais]"></asp:sqldatasource>
                    </td>
                    <td class="auto-style4"><asp:Button ID="Bt_Gravar" runat="server" Text="Gravar" OnClick="Bt_Gravar_Click" Width="126px" Height="32px" />
                      <asp:Button ID="Bt_Deletar" runat="server" Text="Deletar" Width="126px" Height="32px" OnClick="Bt_Deletar_Click" />
                      <asp:Button ID="Bt_Alterar" runat="server" Text="Alterar" Width="126px" Height="32px" OnClick="Bt_Alterar_Click" />
                  </td>

                    
                </table>
    
    </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!--
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    -->

</body>
</html>






<!--
<img src="img_girl.jpg" style="max-width:100%;height:auto;">


<h1 style="font-size:10vw">Hello World</h1>



<style>
.left, .right {
  float: left;
  width: 20%; /* The width is 20%, by default */
}

.main {
  float: left;
  width: 60%; /* The width is 60%, by default */
}

/* Use a media query to add a breakpoint at 800px: */
@media screen and (max-width: 800px) {
  .left, .main, .right {
    width: 100%; /* The width is 100%, when the viewport is 800px or smaller */
  }
}
</style>




<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container w3-green">
  <h1>W3Schools Demo</h1>
  <p>Resize this responsive page!</p>
</div>

<div class="w3-row-padding">
  <div class="w3-third">
    <h2>London</h2>
    <p>London is the capital city of England.</p>
    <p>It is the most populous city in the United Kingdom,
    with a metropolitan area of over 13 million inhabitants.</p>
  </div>

  <div class="w3-third">
    <h2>Paris</h2>
    <p>Paris is the capital of France.</p>
    <p>The Paris area is one of the largest population centers in Europe,
    with more than 12 million inhabitants.</p>
  </div>

  <div class="w3-third">
    <h2>Tokyo</h2>
    <p>Tokyo is the capital of Japan.</p>
    <p>It is the center of the Greater Tokyo Area,
    and the most populous metropolitan area in the world.</p>
  </div>
</div>

</body>
</html>
-->