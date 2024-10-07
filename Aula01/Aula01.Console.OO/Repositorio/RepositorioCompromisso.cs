using System;
using Aula01.Console.OO.Modelo;

namespace Aula01.Console.OO.Repositorio;

public class RepositorioCompromisso
{
    private List<Compromisso> compromissos = [];

    public void Cadastrar(Compromisso compromisso) {
        compromissos.Add(compromisso);
    }

    public List<Compromisso> Compromissos() {
        return compromissos;
    }
}
