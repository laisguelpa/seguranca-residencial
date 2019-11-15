<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Estoque.aspx.cs" Inherits="Estoque" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css.css">

</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table align="center" width="0" border="1" cellspacing="10" cellpadding="0">
                
                <h3 align="center">ESTOQUE</h3>
            
                <!-- ESTOQUE --> 

                <tr>
                     <td><asp:Label ID="lbl_estoque" runat="server" Text="ID Estoque"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_Nome" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_produto" runat="server" Text="ID Produto"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_DtNasc" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_prod_qtd" runat="server" Text="Quantidade do Produto"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>                    
                    <td class="auto-style2"><asp:Label ID="msg_lb" runat="server" Text="Mensagem"></asp:Label></td>
                    <td class="auto-style5"><asp:Label ID="lbl_msg" runat="server" Text="lbl_msg"></asp:Label></td>
                </tr>   

                    <td>
                        <asp:gridview id="gridviewsrtec" runat="server" datasourceid="srtec"  autogeneratecolumns="false"  allowpaging="true" datakeynames="id_dados">
                            <columns>
                                <asp:commandfield showselectbutton="true" />
                                <asp:boundfield datafield="id_estoque" headertext="id_estoque" insertvisible="false" readonly="true" sortexpression="id_estoque" />
                                <asp:boundfield datafield="id_produto" headertext="id_produto" sortexpression="id_produto" />
                                <asp:boundfield datafield="prod_qtd" headertext="prod_qtd" sortexpression="prod_qtd" />
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
