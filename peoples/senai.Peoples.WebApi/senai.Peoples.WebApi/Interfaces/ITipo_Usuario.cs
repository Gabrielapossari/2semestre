using senai.Peoples.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai.Peoples.WebApi.Interfaces
{
    interface ITipo_Usuario
    {
        List<Tipo_UsuarioDomain> Listar();


        //void Atualizar(int id, FuncionarioDomain funcionarioAtualizado);

        //void Deletar(int id);

        //UsuarioDomain BuscarPorId(int id);
    }
}
