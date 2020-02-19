using senai.Filmes.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai.Filmes.WebApi.Interfaces
{
    interface IFilmesRepository
    {
        List<FilmeDomain> Listar();

        void Cadastrar(FilmeDomain filme);

        FilmeDomain BuscarPorId(int id);

        void AtualizarIdCorpo(FilmeDomain filme);

        void Deletar(int id);

        void AtualizarIdUrl(int id, FilmeDomain filme);
    }
}
