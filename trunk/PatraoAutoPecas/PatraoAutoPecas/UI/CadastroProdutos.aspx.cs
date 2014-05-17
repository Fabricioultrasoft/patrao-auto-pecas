using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MODELO;
using System.Data;

namespace PatraoAutoPecas.UI
{
    public partial class CadastroProdutos1 : System.Web.UI.Page
    {

        #region"Declarações"
        DescrProduto descrProduto = new DescrProduto();
        Cor cor = new Cor();
        Estoque estoque = new Estoque();
        Fabricante fabricante = new Fabricante();
        Modelos modelos = new Modelos();
        ProdutoBLL prodBLL = new ProdutoBLL();

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarEstoque();
                ListarDescProduto();
                ListarCor();
                ListarFabricante();
                ListarModelo(23);//NAO ESQUECER DE TROCAR PRA 1
                ListarProdutos();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                Salvar();
                LimparCampos();
                ListarProdutos();
            }
            catch (Exception)
            {
                throw;
            }
        }

        //protected void btnSalvarContinuar_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        Salvar();
        //        LimparCampos();
        //        ListarProdutos();
        //    }
        //    catch (Exception)
        //    {
        //        throw;
        //    }
        //}

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtPesquisar.Text))
                {
                    ViewState["pesquisar"] = txtPesquisar.Text.ToUpper();
                    ListarProdutos();
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "AlertScript", "alert('CAMPO VAZIO! POR FAVOR DIGITE O PRODUTO DESEJADO.');", true);
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void chbNovoProduto_CheckedChanged(object sender, EventArgs e)
        {
            Produto produto = new Produto(descrProduto, cor, estoque, fabricante, modelos);
            try
            {
                if (!String.IsNullOrEmpty(txtNovoProduto.Text))
                {
                    produto.DescricaoProduto.Descricao = txtNovoProduto.Text.ToUpper();
                    if (prodBLL.ExistsDescProduto(produto.DescricaoProduto.Descricao) < 1)
                    {
                        if (ddlDescricao.SelectedItem.ToString().ToUpper() == "NOVO PRODUTO")
                        {
                            prodBLL.IncluirProduto(produto.DescricaoProduto.Descricao);
                        }
                        else
                        {
                            prodBLL.AlterarDescProduto(int.Parse(ddlDescricao.SelectedValue), produto.DescricaoProduto.Descricao);
                        }
                        txtNovoProduto.Text = "";
                        ListarDescProduto();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "AlertScript", "alert('PRODUTO JÁ CADASTRADO!');", true);
                    }


                }
                chbNovoProduto.Checked = false;
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void chbCor_CheckedChanged(object sender, EventArgs e)
        {
            Produto produto = new Produto(descrProduto, cor, estoque, fabricante, modelos);
            try
            {
                if (!String.IsNullOrEmpty(txtNovaCor.Text))
                {
                    produto.Cores.Descricao = txtNovaCor.Text.ToUpper();
                    if (prodBLL.ExistsCor(produto.Cores.Descricao) < 1)
                    {
                        if (ddlCorPeca.SelectedItem.ToString().ToUpper() == "NOVA COR")
                        {
                            prodBLL.IncluirCor(produto.Cores.Descricao);
                        }
                        else
                        {
                            prodBLL.AlterarCor(int.Parse(ddlCorPeca.SelectedValue), produto.Cores.Descricao);
                        }
                        txtNovaCor.Text = "";
                        ListarCor();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "AlertScript", "alert('COR JÁ CADASTRADO!');", true);
                    }
                }


                chbCor.Checked = false;

            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void chbModelo_CheckedChanged(object sender, EventArgs e)
        {
            Produto produto = new Produto(descrProduto, cor, estoque, fabricante, modelos);
            try
            {
                if (!String.IsNullOrEmpty(txtNovoModelo.Text))
                {
                    produto.Modelo.Descricao = txtNovoModelo.Text.ToUpper();
                    produto.Modelo.ID = int.Parse(ddlModelo.SelectedValue);
                    produto.Fabricantes.ID = int.Parse(ddlFabricante.SelectedValue);
                    if (prodBLL.ExistsModelo(produto) < 1)
                    {
                        if (ddlModelo.SelectedItem.ToString().ToUpper() == "NOVO MODELO")
                        {
                            prodBLL.IncluirModelo(produto);
                        }
                        else
                        {
                            prodBLL.AlterarModelo(produto);
                        }
                        txtNovoModelo.Text = "";
                        ListarModelo(produto.Modelo.ID);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "AlertScript", "alert('MODELO JÁ CADASTRADO!');", true);
                    }
                }


                chbModelo.Checked = false;

            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void ddlProduto_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(ddlDescricao.SelectedValue))
            {
                if (ddlDescricao.SelectedItem.ToString() != "NOVO PRODUTO")
                {
                    txtNovoProduto.Text = ddlDescricao.SelectedItem.ToString();
                }
                else
                {
                    txtNovoProduto.Text = "";
                }
            }
        }

        protected void ddlCorPeca_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(ddlCorPeca.SelectedValue))
            {
                if (ddlCorPeca.SelectedItem.ToString() != "NOVA COR")
                {
                    txtNovaCor.Text = ddlCorPeca.SelectedItem.ToString();
                }
                else
                {
                    txtNovaCor.Text = "";
                }
            }
        }

        protected void ddlFabricante_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(ddlFabricante.SelectedValue))
            {
                ListarModelo(int.Parse(ddlFabricante.SelectedValue));
            }
        }

        protected void ddlModelo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(ddlModelo.SelectedValue))
            {
                if (ddlModelo.SelectedItem.ToString() != "NOVO MODELO")
                {
                    txtNovoModelo.Text = ddlModelo.SelectedItem.ToString();
                }
                else
                {
                    txtNovoModelo.Text = "";
                }
            }
        }

        protected void dgvResultado_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                dgvResultado.PageIndex = e.NewPageIndex;
                DataBind();
            }
            catch (Exception)
            {
                throw;
            }

        }

        protected void dgvResultado_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                Produto produto = new Produto(descrProduto, cor, estoque, fabricante, modelos);
                int index = e.RowIndex;
                int IdProduto = int.Parse(dgvResultado.Rows[index].Cells[0].Text);

                prodBLL.Excluir(IdProduto);
                ClientScript.RegisterStartupScript(GetType(), "AlertScript", "alert('Produto excluído com sucesso!');", true);
                ListarProdutos();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        protected void dgvResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                ListarModelo(23);//NAO ESQUECER DE TROCAR PRA 1

                if (e.CommandName.Equals("Editar"))
                {
                    Produto produto = new Produto(descrProduto, cor, estoque, fabricante, modelos);

                    int index = int.Parse((string)e.CommandArgument);
                    produto.ID = int.Parse(dgvResultado.Rows[index].Cells[0].Text);
                    ViewState["ID_PRODUTO"] = produto.ID;
                    ddlLocalEstoque.SelectedItem.Text  = (dgvResultado.Rows[index].Cells[1].Text);
                    ddlDescricao.SelectedItem.Text = (dgvResultado.Rows[index].Cells[2].Text);
                    ddlEstado.SelectedItem.Text = (dgvResultado.Rows[index].Cells[3].Text);
                    ddlQuantidade.SelectedItem.Text = (dgvResultado.Rows[index].Cells[4].Text);
                    ddlFabricante.SelectedItem.Text = (dgvResultado.Rows[index].Cells[5].Text);
                    ddlModelo.SelectedItem.Text = (dgvResultado.Rows[index].Cells[6].Text);
                    ddPosicaoPeca.SelectedItem.Text = (dgvResultado.Rows[index].Cells[7].Text);
                    ddlCorPeca.SelectedItem.Text = (dgvResultado.Rows[index].Cells[8].Text);
                    ddlAno.SelectedItem.Text = (dgvResultado.Rows[index].Cells[9].Text);
                    txtValor.Text = (dgvResultado.Rows[index].Cells[10].Text); 
                    txtObservacao.Text = (dgvResultado.Rows[index].Cells[11].Text);


                    Windons();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void imgBtnPesquisar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
               
                if (!string.IsNullOrEmpty(txtPesquisar.Text))
                {
                    ViewState["pesquisar"] = txtPesquisar.Text.ToUpper();
                    ListarProdutos();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        #region "Métodos"

        private void Salvar()
        {
            if (!string.IsNullOrEmpty(txtValor.Text))
            {
                Produto produto = new Produto(descrProduto, cor, estoque, fabricante, modelos);

                produto.ID = ViewState["ID_PRODUTO"] != null ? Convert.ToInt32(ViewState["ID_PRODUTO"]) : 0;
                produto.Observacao = txtObservacao.Text.ToUpper();
                produto.PosicaoPeca = ddPosicaoPeca.SelectedItem.ToString();
                produto.Quantidade = int.Parse(ddlQuantidade.SelectedItem.ToString());
                produto.Valor = Convert.ToDecimal(txtValor.Text);
                produto.EstadoPeca = ddlEstado.SelectedItem.ToString();
                produto.Ano = int.Parse(ddlAno.SelectedItem.ToString());

                produto.Estoque.ID = int.Parse(ddlLocalEstoque.SelectedItem.Value);
                produto.Fabricantes.ID = int.Parse(ddlFabricante.SelectedItem.Value);
                produto.Modelo.ID = int.Parse(ddlModelo.SelectedItem.Value);
                produto.DescricaoProduto.ID = int.Parse(ddlDescricao.SelectedItem.Value);
                produto.Cores.ID = int.Parse(ddlCorPeca.SelectedItem.Value);


                prodBLL.Salvar(produto);
                ClientScript.RegisterStartupScript(GetType(), "AlertScript", "alert('PRODUTO CADASTRADO COM SUCESSO!');", true);
            }
            else
            {
                txtValor.BackColor = System.Drawing.Color.Red;
                Windons();
            }
        }

        private void ListarEstoque()
        {
            ddlLocalEstoque.DataSource = prodBLL.ListarEstoque().Tables[0];
            ddlLocalEstoque.DataTextField = "DESCRICAO";
            ddlLocalEstoque.DataValueField = "ID";
            ddlLocalEstoque.DataBind();
        }

        private void ListarDescProduto()
        {
            ddlDescricao.DataSource = prodBLL.ListarDescProduto().Tables[0];
            ddlDescricao.DataTextField = "DESCRICAO";
            ddlDescricao.DataValueField = "ID";
            ddlDescricao.DataBind();
        }

        private void ListarCor()
        {
            ddlCorPeca.DataSource = prodBLL.ListarCor().Tables[0];
            ddlCorPeca.DataTextField = "DESCRICAO";
            ddlCorPeca.DataValueField = "ID";
            ddlCorPeca.DataBind();
        }

        private void ListarFabricante()
        {
            ddlFabricante.DataSource = prodBLL.ListarFabricante().Tables[0];
            ddlFabricante.DataTextField = "DESCRICAO";
            ddlFabricante.DataValueField = "ID";
            ddlFabricante.DataBind();
        }

        private void ListarModelo(int pIdFabricante)
        {
            ddlModelo.DataSource = prodBLL.ListarModelo(pIdFabricante).Tables[0];
            ddlModelo.DataTextField = "DESCRICAO";
            ddlModelo.DataValueField = "ID";
            ddlModelo.DataBind();
        }

        private void IncluirProduto(String pProduto)
        {
            prodBLL.IncluirProduto(pProduto);
        }

        private void IncluirCor(String pCor)
        {
            prodBLL.IncluirCor(pCor);
        }

        private void LimparCampos()
        {
            txtNovoModelo.Text = "";
            txtNovaCor.Text = "";
            txtNovoProduto.Text = "";
            //txtObservacao.Text = "";
            //txtValor.Text = "";
            ListarEstoque();
            ListarDescProduto();
            ListarCor();
            ListarFabricante();
            ListarModelo(1);
        }

        private void ListarProdutos()
        {
            DataSet ds = null;
            if (ViewState["pesquisar"] != null )
            {
                ds = prodBLL.Pesquisar(ViewState["pesquisar"].ToString());
                ViewState["pesquisar"] = null;
            }
            else
            {
                ds = prodBLL.Listar();
            }
            dgvResultado.Visible = true;
            dgvResultado.AutoGenerateColumns = false;
            lblQuantidade.Text = ds.Tables[0].Rows.Count.ToString();
            dgvResultado.DataSource = ds;
            dgvResultado.DataBind();
            //dgvResultado.Columns[0].Visible = false;
        }

        private void Windons()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script type='text/javascript'>");
            sb.Append(@"$(document).ready(function () {");
            sb.Append(@"            var id = $('a[rel=modal]').attr('href');");

            sb.Append(@"            var alturaTela = $(document).height();");
            sb.Append(@"            var larguraTela = $(window).width();");

            sb.Append(@"            $('#mascara').css({ 'width': larguraTela, 'height': alturaTela });");
            sb.Append(@"            $('#mascara').fadeIn(1000);");
            sb.Append(@"            $('#mascara').fadeTo('slow', 0.8);");

            sb.Append(@"            var left = ($(window).width() / 2) - ($(id).width() / 2);");
            sb.Append(@"            var top = ($(window).height() / 2) - ($(id).height() / 2);");

            sb.Append(@"            $(id).css({ 'top': top, 'left': left });");
            sb.Append(@"            $(id).show();");
            sb.Append(@"       });");
            sb.Append(@"</script>");

            if (!ClientScript.IsStartupScriptRegistered("JSScript"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "JSScript", sb.ToString());
            }
        }
        #endregion
    }
}