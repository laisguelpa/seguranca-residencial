<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fornecedor.aspx.cs" Inherits="Fornecedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table align="center" width="0" border="1" cellspacing="10" cellpadding="0">
                
                <h3 align="center">FORNECEDOR</h3>
            
                <tr>
                     <td><asp:Label ID="lbl_fornecedor" runat="server" Text="ID Fornecedor"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_Nome" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_forn_nome" runat="server" Text="Nome"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_DtNasc" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_forn_endereco" runat="server" Text="Endereço"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_CPF" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_forn_cidade" runat="server" Text="Cidade"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_email" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_forn_cep" runat="server" Text="CEP"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_tel" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_forn_tel" runat="server" Text="Telefone"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_cel" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_forn_cnpj" runat="server" Text="CNPJ"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_CEP" runat="server" Width="385px"></asp:TextBox></td>
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
                                <asp:boundfield datafield="id_fornecedor" headertext="id_fornecedor" insertvisible="false" readonly="true" sortexpression="id_fornecedor" />
                                <asp:boundfield datafield="forn_nome" headertext="forn_nome" sortexpression="forn_nome" />
                                <asp:boundfield datafield="forn_endereco" headertext="forn_endereco" sortexpression="forn_endereco" />
                                <asp:boundfield datafield="forn_cidade" headertext="forn_cidade" sortexpression="forn_cidade" />
                                <asp:boundfield datafield="forn_cep" headertext="forn_cep" sortexpression="forn_cep" />
                                <asp:boundfield datafield="forn_tel" headertext="forn_tel" sortexpression="forn_tel" />
                                <asp:boundfield datafield="forn_cnpj" headertext="forn_cnpj" sortexpression="forn_cnpj" />
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
