<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>

    <link rel="stylesheet" href="css.css">

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
                     <td><asp:Label ID="lbl_CEP" runat="server" Text="CEP"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_CEP" runat="server" Width="385px"></asp:TextBox></td>
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