using senai.Peoples.WebApi.Domains;
using senai.Peoples.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace senai.Peoples.WebApi.Repositories
{
    public class Tipo_UsuarioRepository : ITipo_Usuario

    {
        private string stringConexao = "Data Source=DEV1301\\SQLEXPRESS; initial catalog=Peoples_MANHA; user Id=sa; pwd=sa@132";

        public List<Tipo_UsuarioDomain> Listar()
        {
            // Cria uma lista funcionarios onde serão armazenados os dados
            List<Tipo_UsuarioDomain> tipousuario = new List<Tipo_UsuarioDomain>();

            // Declara a SqlConnection passando a string de conexão
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                // Declara a instrução a ser executada
                string querySelectAll = "SELECT IDTipo_Usuario,Titulo FROM Tipo_Usuario";

                // Abre a conexão com o banco de dados
                con.Open();

                // Declara o SqlDataReader para receber os dados do banco de dados
                SqlDataReader rdr;

                // Declara o SqlCommand passando o comando a ser executado e a conexão
                using (SqlCommand cmd = new SqlCommand(querySelectAll, con))
                {
                    // Executa a query e armazena os dados no rdr
                    rdr = cmd.ExecuteReader();

                    // Enquanto houver registros para serem lidos no rdr, o laço se repete
                    while (rdr.Read())
                    {
                        // Instancia um objeto funcionario 
                        Tipo_UsuarioDomain tipousuarios = new Tipo_UsuarioDomain
                        {
                            // Atribui à propriedade IdFuncionario o valor da coluna "IdFuncionario" da tabela do banco
                            IDTipo_Usuario = Convert.ToInt32(rdr["IDTipo_Usuario"]),

                            // Atribui à propriedade Nome o valor da coluna "Nome" da tabela do banco

                            Titulo = Convert.ToInt32(rdr["Titulo"])

                        };

                        // Adiciona o funcionario criado à lista funcionarios
                        tipousuario.Add(tipousuarios);
                    }
                }
            }

            // Retorna a lista de funcionarios
            return tipousuario;
        }

    }
}
