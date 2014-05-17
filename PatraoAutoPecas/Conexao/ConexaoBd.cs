using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Conexao
{
    public class ConexaoBd
    {
        public static SqlConnection getConexao()
        {
            var strConexao = ConfigurationManager.ConnectionStrings["BD_PATRAO"].ConnectionString;
            var conn = new SqlConnection(strConexao);
            try
            {
                conn.Open();
                return conn;
            }

            catch (SqlException ex)
            {
                throw new Exception("Falha de Conexão com o Banco de Dados." + ex.Message);
            }

            finally
            {
                conn.Close();
            }
        }
    }
}
