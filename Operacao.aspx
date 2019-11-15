<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Operacao.aspx.cs" Inherits="Operacao" %>

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
                

        <!-- 
            [id_operacao] [int] IDENTITY(1,1) NOT NULL,
	[ope_data] [date] NOT NULL,
	[ope_descricao] [varchar](50) NOT NULL,
	[id_funcionario] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[ope_valor] [numeric](4, 2) NOT NULL,
 CONSTRAINT [PK_TAB_Operacao] PRIMARY KEY CLUSTERED 
(
	[id_operacao] ASC
            -->


                <h3 align="center">OPERAÇÃO</h3>
            
                <tr>
                     <td><asp:Label ID="lbl_operacao" runat="server" Text="ID Operação"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_Nome" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_ope_data" runat="server" Text="Data da Operação"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_DtNasc" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_ope_descricao" runat="server" Text="Descrição da Operação"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_CPF" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_funcionario" runat="server" Text="ID Funcionário"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_email" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_cliente" runat="server" Text="ID Cliente"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="txt_tel" runat="server" Width="385px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="lbl_ope_valor" runat="server" Text="Valor"></asp:Label></td>
                     <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" Width="385px"></asp:TextBox></td>
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
                                <asp:boundfield datafield="id_operacao" headertext="id_operacao" insertvisible="false" readonly="true" sortexpression="id_operacao" />
                                <asp:boundfield datafield="ope_data" headertext="ope_data" sortexpression="ope_data" />
                                <asp:boundfield datafield="ope_descricao" headertext="ope_descricao" sortexpression="ope_descricao" />
                                <asp:boundfield datafield="id_funcionario" headertext="id_funcionario" sortexpression="id_funcionario" />
                                <asp:boundfield datafield="id_cliente" headertext="id_cliente" sortexpression="id_cliente" />
                                <asp:boundfield datafield="ope_valor" headertext="ope_valor" sortexpression="ope_valor" />
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
