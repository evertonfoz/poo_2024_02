namespace Aula01.Console.OO.Modelo;

public class Compromisso
{
    public string Data { get; set; }
    public string Hora { get; set; }
    public string Local { get; set; }
    public string Descricao { get; set; }

    public override string ToString()
    {
        return $"[{Data}, {Hora}, {Local}, {Descricao}]";
    }
}
