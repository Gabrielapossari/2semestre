using senai.Peoples.WebApi.Domains;
using senai.Peoples.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace senai.Peoples.WebApi.Repositories
{
    public class UsuarioRepository : IUsuario
    {
        private string stringConexao = "Data Source=DEV1301\\SQLEXPRESS; initial catalog=Peoples_MANHA; user Id=sa; pwd=sa@132";

        public List<UsuarioDomain> Listar()
        {
            // Cria uma lista funcionarios onde serão armazenados os dados
            List<UsuarioDomain> usuario = new List<UsuarioDomain>();

            // Declara a SqlConnection passando a string de conexão
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                // Declara a instrução a ser executada
                string querySelectAll = "SELECT Email,Senha,IDTipo_Usuario FROM Usuario";

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
                        UsuarioDomain usuarios = new UsuarioDomain
                        {

                            Email = rdr["Email"].ToString(),
                            
                            Senha = rdr["Senha"].ToString(),

                            IDTipo_Usuario = Convert.ToInt32((rdr["IDTipo_Usuario"]))
                    

                        };

                        // Adiciona o funcionario criado à lista funcionarios
                        usuario.Add(usuarios);

                    }
                }

                // Retorna a lista de funcionarios
                return usuarios;
            }
        }
    }
}