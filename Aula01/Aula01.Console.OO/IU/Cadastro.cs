using Aula01.Console.OO.Modelo;

namespace Aula01.Console.OO.IU;

public class Cadastro
{
    public Compromisso CadastrarCompromisso()
    {
        Compromisso compromisso = new();

        System.Console.Write("Data: ");
        compromisso.Data = System.Console.ReadLine();

        System.Console.Write("Hora: ");
        compromisso.Hora = System.Console.ReadLine();

        System.Console.Write("Local: ");
        compromisso.Local = System.Console.ReadLine();

        System.Console.Write("Descrição: ");
        compromisso.Descricao = System.Console.ReadLine();

        return compromisso;
    }
}
