using System;

namespace Aula01.Console.OO.IU;

public class Menu
{
    public static string Exibir() {
        System.Console.WriteLine("MENU PRINCIPAL");
        System.Console.WriteLine("==============");
        System.Console.WriteLine();

        System.Console.WriteLine("1. Cadastrar Compromisso");
        System.Console.WriteLine("2. Exibir Compromissos");
        System.Console.WriteLine("0. Sair");

        System.Console.WriteLine();
        System.Console.Write("Qual sua opção: ");

        return System.Console.ReadLine();
    }
}
