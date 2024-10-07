const int MaximoDeCompromissos = 100;
int QuantidadeDeCompromissosRegistrados = 0;

string[] datas = new string[MaximoDeCompromissos];
// var horas = new string[MaximoDeCompromissos];

string opcao;
do
{
    Console.WriteLine("1. Adicionar Compromisso");
    Console.WriteLine("2. Listar Compromissos");
    Console.WriteLine("0. sair");

    opcao = Console.ReadLine();

    if (opcao == "1")
    {
        Console.Write("Data: ");
        var dataInformada = Console.ReadLine();
        if (dataInformada != "")
        {
            datas[QuantidadeDeCompromissosRegistrados++] = dataInformada;
            Console.WriteLine("Data " + dataInformada + " registrada com sucesso");
        }
        else
        {
            Console.WriteLine("Data inválida");
        }
        Console.WriteLine("Pressione qualquer tecla para continuar");
        Console.ReadKey();
    }
    else if (opcao == "2")
    {
        Console.WriteLine("Compromissos Registrados");
        Console.WriteLine("========================");

        for(int i = 0; i<=QuantidadeDeCompromissosRegistrados; i++) {
            Console.WriteLine(datas[i]);
        }
    }
} while (opcao != "0");

