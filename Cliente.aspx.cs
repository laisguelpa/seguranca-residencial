using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cliente : System.Web.UI.Page
{

    String ConStr = ConfigurationManager.ConnectionStrings["SrTecConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Bt_Buscar_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml("http://cep.republicavirtual.com.br/web_cep.php?cep=" + txt_cep.Text);
        if (ds != null)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                txt_Estado.Text = ds.Tables[0].Rows[0]["uf"].ToString().Trim();
                txt_Cidade.Text = ds.Tables[0].Rows[0]["cidade"].ToString().Trim();
                txt_Bairro.Text = ds.Tables[0].Rows[0]["bairro"].ToString().Trim();
                lbl_resultado.Text = ds.Tables[0].Rows[0]["resultado_txt"].ToString().Trim();


            }
        }
    }

    protected void Bt_Gravar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConStr);
        con.Open();
        try
        {
            //string Sql = "insert into Pessoa(CPF, Nome) Values (@CPF, @Nome)";
            string Sql = "insert into DadosGerais(Nome, CPF) Values (@Nome, @CPF)";
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.Parameters.AddWithValue("@Nome", txt_Nome);
            cmd.Parameters.AddWithValue("@CPF", txt_CPF.Text);
            cmd.ExecuteNonQuery();

            txt_CPF.Text = "";
            txt_Nome.Text = "";
            //txt_sexo.Text = "";

            lbl_msg.Text = "Dados Gravados com Sucesso!";

            gridviewsrtec.DataBind();

        }
        catch (Exception erro)
        {
            lbl_msg.Text = erro.Message;
        }
        finally
        {
            con.Close();
        }
    }
}