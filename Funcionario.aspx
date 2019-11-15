<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Funcionario.aspx.cs" Inherits="Funcionario" %>

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
                
                <h3 align="center">FUNCIONARIO</h3>
            
                <tr>
                     <td><asp:Label ID="lbl_funcionario" runat="server" Text="ID Funcionário"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_Nome" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_func_tel" runat="server" Text="Telefone"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_DtNasc" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_func_cel" runat="server" Text="Celular"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_CPF" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_func_funcao" runat="server" Text="Função do Cargo"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_email" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_func_email" runat="server" Text="Email"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_id_dados" runat="server" Text="Dados Gerais"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_tel" runat="server" Width="385px"></asp:TextBox></td>
                </tr>

                 <tr>   
                    <td class="auto-style2"><asp:Label ID="msg_lb" runat="server" Text="Mensagem"></asp:Label></td>
                    <td class="auto-style5"><asp:Label ID="lbl_msg" runat="server" Text="lbl_msg"></asp:Label></td>
                </tr>
            
                <tr>
                    <td>
                        <asp:gridview id="gridviewsrtec" runat="server" datasourceid="srtec"  autogeneratecolumns="false"  allowpaging="true" datakeynames="id_dados">
                            <columns>
                                <asp:commandfield showselectbutton="true" />
                                <asp:boundfield datafield="id_funcionario" headertext="id_funcionario" insertvisible="false" readonly="true" sortexpression="id_funcionario" />
                                <asp:boundfield datafield="func_tel" headertext="func_tel" sortexpression="func_tel" />
                                <asp:boundfield datafield="func_cel" headertext="func_cel" sortexpression="func_cel" />
                                <asp:boundfield datafield="func_funcao" headertext="func_funcao" sortexpression="func_funcao" />
                                <asp:boundfield datafield="func_email" headertext="func_email" sortexpression="func_email" />
                                <asp:boundfield datafield="id_dados" headertext="id_dados" sortexpression="id_dados" />
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
