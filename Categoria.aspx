<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Categoria.aspx.cs" Inherits="Categoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <title></title>

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
                
                <h3 align="center">CATEGORIA</h3>
            
                <!-- CATEGORIA --> 

                <tr>
                     <td><asp:Label ID="lbl_categoria" runat="server" Text="ID Categoria"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_Nome" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_descricao" runat="server" Text="Descrição"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_DtNasc" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>                    
                    <td class="auto-style2"><asp:Label ID="msg_lb" runat="server" Text="Mensagem"></asp:Label></td>
                    <td class="auto-style5"><asp:Label ID="lbl_msg" runat="server" Text="lbl_msg"></asp:Label></td>
                </tr>   

                    <td>
                        <asp:gridview id="gridviewsrtec" runat="server" datasourceid="srtec"  autogeneratecolumns="false"  allowpaging="true" datakeynames="id_categoria">
                            <columns>
                                <asp:commandfield showselectbutton="true" />
                                <asp:boundfield datafield="id_categoria" headertext="id_categoria" insertvisible="false" readonly="true" sortexpression="id_categoria" />
                                <asp:boundfield datafield="cat_descricao" headertext="cat_descricao" sortexpression="cat_descricao" />
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
