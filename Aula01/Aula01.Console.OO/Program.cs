using Aula01.Console.OO.IU;
using Aula01.Console.OO.Modelo;
using Aula01.Console.OO.Repositorio;

RepositorioCompromisso repositorioCompromisso = new();

while (true)
{
    string opcaoDoUsuario = Menu.Exibir();

    if (opcaoDoUsuario == "1")
    {
        Cadastro cadastro = new();
        Compromisso compromisso = cadastro.CadastrarCompromisso();
        repositorioCompromisso.Cadastrar(compromisso);
    }
    else if (opcaoDoUsuario == "2")
    {
        for (int i = 0; i < repositorioCompromisso.Compromissos().Count; i++)
        {
            Compromisso compromisso = repositorioCompromisso.Compromissos()[i];
            Console.WriteLine(compromisso);
        }
    }
    else if (opcaoDoUsuario == "0") {
        break;
    }
}
