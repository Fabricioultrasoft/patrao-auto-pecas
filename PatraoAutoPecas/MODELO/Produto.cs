using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELO
{
    public class Produto
    {
        public int ID { get;set;}
        public String EstadoPeca { get; set; }
        public String PosicaoPeca { get; set; }
        public Int64 Quantidade { get; set; }
        public int Ano { get; set; }
        public Decimal Valor { get; set; }
        public String Observacao { get; set; }
        public DescrProduto DescricaoProduto { get; set; }
        public Cor Cores { get; set; }
        public Estoque Estoque { get; set; }
        public Fabricante Fabricantes { get; set; }
        public Modelos Modelo { get; set; }

        public Produto(DescrProduto pDescricaoProduto, Cor pCores, Estoque pEstoque, Fabricante pFabricantes, Modelos pModelo)
        {
            DescricaoProduto = pDescricaoProduto;
            Cores = pCores;
            Estoque = pEstoque;
            Fabricantes = pFabricantes;
            Modelo = pModelo;
        }
    }
}
