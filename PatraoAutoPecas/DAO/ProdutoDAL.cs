using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Conexao;
using MODELO;

namespace DAL
{
    public class ProdutoDAL
    {
        public DataSet ListarEstoque()
        {
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                DataSet lstDataSet = new DataSet();

                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_LISTAR_ESTOQUE", cn);
                        cmd.Parameters.Clear();

                        cmd.CommandType = CommandType.StoredProcedure;
                        cn.Open();
                        sqlDataAdapter.SelectCommand = cmd;
                        sqlDataAdapter.Fill(lstDataSet);

                        return lstDataSet;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataSet ListarFabricante()
        {
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                DataSet lstDataSet = new DataSet();

                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_LISTAR_FABRICANTE", cn);
                        cmd.Parameters.Clear();

                        cmd.CommandType = CommandType.StoredProcedure;
                        cn.Open();
                        sqlDataAdapter.SelectCommand = cmd;
                        sqlDataAdapter.Fill(lstDataSet);

                        return lstDataSet;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataSet ListarModelo(int pIdFabricante)
        {
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                DataSet lstDataSet = new DataSet();

                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_LISTAR_MODELO", cn);
                        cmd.Parameters.Clear();

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("ID",SqlDbType.Int).Value = pIdFabricante;
                        cn.Open();
                        sqlDataAdapter.SelectCommand = cmd;
                        sqlDataAdapter.Fill(lstDataSet);

                        return lstDataSet;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataSet ListarDescProduto()
        {
            try
            {
                 SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                 DataSet lstDataSet = new DataSet();

                 using (SqlConnection cn = ConexaoBd.getConexao())
                 {
                     try
                     {
                         SqlCommand cmd = new SqlCommand("SP_LISTAR_DESC_PRODUTO", cn);
                         cmd.Parameters.Clear();

                         cmd.CommandType = CommandType.StoredProcedure;
                         cn.Open();
                         sqlDataAdapter.SelectCommand = cmd;
                         sqlDataAdapter.Fill(lstDataSet);

                         return lstDataSet;
                     }
                     catch (SqlException ex)
                     {
                         //log.Error(ex);
                         throw new Exception("ERRO:" + ex.Message);
                     }
                     finally
                     {
                         cn.Close();
                     }
                 }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataSet ListarCor()
        {
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                DataSet lstDataSet = new DataSet();

                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_LISTAR_COR", cn);
                        cmd.Parameters.Clear();

                        cmd.CommandType = CommandType.StoredProcedure;
                        cn.Open();
                        sqlDataAdapter.SelectCommand = cmd;
                        sqlDataAdapter.Fill(lstDataSet);

                        return lstDataSet;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }

        }

        public void IncluirProduto(String pProduto)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_INCLUIR_DESC_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pProduto;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void AlterarDescProduto(int pId, String pDescricao)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_UPDATE_DESC_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID", SqlDbType.Int).Value = pId;
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pDescricao;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void IncluirCor(String pCor)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_INSERIR_COR", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pCor;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void AlterarCor(int pId, String pCor)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_UPDATE_COR", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID", SqlDbType.Int).Value = pId;
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pCor;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public Int64 ExistsDescProduto(String pDescricao)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            int Count = 0;
            int retorno = 0;
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_EXISTS_DESC_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pDescricao;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        Count = (int)cmd.ExecuteScalar();
                        if (Count > 0)
                        {
                            retorno = 1;
                        }

                        return retorno;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public Int64 ExistsCor(String pDescricao)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            int Count = 0;
            int retorno = 0;
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_EXISTS_COR", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pDescricao;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        Count = (int)cmd.ExecuteScalar();
                        if (Count > 0)
                        {
                            retorno = 1;
                        }

                        return retorno;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public Int64 ExistsModelo(Produto pProduto)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            int Count = 0;
            int retorno = 0;
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_EXISTS_MODELO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID", SqlDbType.Int).Value = pProduto.Fabricantes.ID ;
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pProduto.Modelo.Descricao ;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        Count = (int)cmd.ExecuteScalar();
                        if (Count > 0)
                        {
                            retorno = 1;
                        }

                        return retorno;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void IncluirModelo(Produto pProduto)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_INSERIR_MODELO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID_FABRICANTE", SqlDbType.Int).Value = pProduto.Fabricantes.ID;
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pProduto.Modelo.Descricao;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void AlterarModelo(Produto pProduto)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_UPDATE_MODELO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID_FABRICANTE", SqlDbType.Int).Value = pProduto.Fabricantes.ID;
                        cmd.Parameters.Add("ID", SqlDbType.Int).Value = pProduto.Modelo.ID;
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pProduto.Modelo.Descricao;
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void Salvar(Produto pProduto)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_SALVAR_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ANO", SqlDbType.Int).Value = pProduto.Ano;
                        cmd.Parameters.Add("ID_COR", SqlDbType.Int).Value = pProduto.Cores.ID;
                        cmd.Parameters.Add("ESTADO_PECA", SqlDbType.VarChar).Value = pProduto.EstadoPeca ;
                        cmd.Parameters.Add("QUANTIDADE", SqlDbType.Int).Value = pProduto.Quantidade;
                        cmd.Parameters.Add("VALOR_UNITARIO", SqlDbType.Decimal).Value = pProduto.Valor;
                        cmd.Parameters.Add("ID_ESTOQUE", SqlDbType.Int).Value = pProduto.Estoque.ID;
                        cmd.Parameters.Add("ID_FABRICANTE", SqlDbType.Int).Value = pProduto.Fabricantes.ID;
                        cmd.Parameters.Add("ID_DESC_PROD", SqlDbType.Int).Value = pProduto.DescricaoProduto.ID;
                        cmd.Parameters.Add("OBSERVACAO", SqlDbType.VarChar).Value = pProduto.Observacao;
                        cmd.Parameters.Add("ID_MODELO", SqlDbType.Int).Value = pProduto.Modelo.ID;
                        cmd.Parameters.Add("POSICAO_PECA", SqlDbType.VarChar).Value = pProduto.PosicaoPeca;
    
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void Excluir(int pID)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_DELETE_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID", SqlDbType.Int).Value = pID;
                       
                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void Alterar(Produto pProduto)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            try
            {
                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_UPDATE_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("ID", SqlDbType.Int).Value = pProduto.ID;
                        cmd.Parameters.Add("ANO", SqlDbType.Int).Value = pProduto.Ano;
                        cmd.Parameters.Add("ID_COR", SqlDbType.Int).Value = pProduto.Cores.ID;
                        cmd.Parameters.Add("ESTADO_PECA", SqlDbType.VarChar).Value = pProduto.EstadoPeca;
                        cmd.Parameters.Add("QUANTIDADE", SqlDbType.Int).Value = pProduto.Quantidade;
                        cmd.Parameters.Add("VALOR_UNITARIO", SqlDbType.Decimal).Value = pProduto.Valor;
                        cmd.Parameters.Add("ID_ESTOQUE", SqlDbType.Int).Value = pProduto.Estoque.ID;
                        cmd.Parameters.Add("ID_FABRICANTE", SqlDbType.Int).Value = pProduto.Fabricantes.ID;
                        cmd.Parameters.Add("ID_DESC_PROD", SqlDbType.Int).Value = pProduto.DescricaoProduto.ID;
                        cmd.Parameters.Add("OBSERVACAO", SqlDbType.VarChar).Value = pProduto.Observacao;
                        cmd.Parameters.Add("ID_MODELO", SqlDbType.Int).Value = pProduto.Modelo.ID;
                        cmd.Parameters.Add("POSICAO_PECA", SqlDbType.VarChar).Value = pProduto.PosicaoPeca;

                        cmd.CommandType = CommandType.StoredProcedure;

                        cn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataSet Listar()
        {
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                DataSet lstDataSet = new DataSet();

                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_LISTAR_PRODUTOS", cn);
                        cmd.Parameters.Clear();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cn.Open();
                        sqlDataAdapter.SelectCommand = cmd;
                        sqlDataAdapter.Fill(lstDataSet);

                        return lstDataSet;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }

        }

        public DataSet Pesquisar(String pPesquisar)
        {
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                DataSet lstDataSet = new DataSet();

                using (SqlConnection cn = ConexaoBd.getConexao())
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SP_PESQUISAR_PRODUTO", cn);
                        cmd.Parameters.Clear();
                        cmd.Parameters.Add("DESCRICAO", SqlDbType.VarChar).Value = pPesquisar;

                        cmd.CommandType = CommandType.StoredProcedure;
                        cn.Open();
                        sqlDataAdapter.SelectCommand = cmd;
                        sqlDataAdapter.Fill(lstDataSet);

                        return lstDataSet;
                    }
                    catch (SqlException ex)
                    {
                        //log.Error(ex);
                        throw new Exception("ERRO:" + ex.Message);
                    }
                    finally
                    {
                        cn.Close();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }

        }

    }
}
