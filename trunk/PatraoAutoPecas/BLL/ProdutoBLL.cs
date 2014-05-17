using DAL;
using MODELO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class ProdutoBLL
    {
        ProdutoDAL prodDAL = new ProdutoDAL();

        public DataSet ListarEstoque()
        {
            return prodDAL.ListarEstoque();
        }

        public DataSet ListarFabricante()
        {
            return prodDAL.ListarFabricante();
        }

        public DataSet ListarModelo(int pIdFabricante)
        {
            return prodDAL.ListarModelo(pIdFabricante);
        }

        public DataSet ListarDescProduto()
        {
            return prodDAL.ListarDescProduto(); 
        }

        public DataSet ListarCor()
        {
            return prodDAL.ListarCor(); 
        }

        public void IncluirProduto(String pProduto)
        {
            prodDAL.IncluirProduto(pProduto);
        }

        public void AlterarDescProduto(int pId, String pDescricao)
        {
            prodDAL.AlterarDescProduto(pId, pDescricao);
        }

        public void IncluirCor(String pCor)
        {
            prodDAL.IncluirCor(pCor);
        }

        public void AlterarCor(int pId, String pDescricao)
        {
            prodDAL.AlterarCor(pId, pDescricao);
        }

        public Int64 ExistsDescProduto(String pDescricao)
        {
           return prodDAL.ExistsDescProduto(pDescricao);
        }

        public Int64 ExistsCor(String pDescricao)
        {
            return prodDAL.ExistsCor(pDescricao);
        }

        public Int64 ExistsModelo(Produto pProduto)
        {
            return prodDAL.ExistsModelo(pProduto);
        }

        public void AlterarModelo(Produto pProduto)
        {
            prodDAL.AlterarModelo(pProduto);
        }

        public void IncluirModelo(Produto pProduto)
        {
            prodDAL.IncluirModelo(pProduto);
        }

        public void Salvar(Produto pProduto)
        {
            if (pProduto.ID == 0)
            {
                prodDAL.Salvar(pProduto);
            }
            else
            {
                prodDAL.Alterar(pProduto); 
            }
        }

        public DataSet Listar()
        {
            return prodDAL.Listar();
        }

        public DataSet Pesquisar(String pPesquisar)
        {
            return prodDAL.Pesquisar(pPesquisar);
        }

        public void Excluir(int pId)
        {
            prodDAL.Excluir(pId);
        }
    }
}
