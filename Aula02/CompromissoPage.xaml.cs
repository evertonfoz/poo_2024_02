namespace Aula02;

public partial class CompromissoPage : ContentPage
{
    public CompromissoPage()
    {
        InitializeComponent();
    }

    // Evento acionado ao clicar no botão "Salvar Compromisso"
    private void OnSaveButtonClicked(object sender, EventArgs e)
    {
        // Cria um novo compromisso com os dados preenchidos pelo usuário
        var compromisso = new Compromisso
        {
            Data = DataEntry.Text,
            Hora = HoraEntry.Text,
            Local = LocalEntry.Text,
            Descricao = DescricaoEntry.Text
        };

        // Exibe o resultado na Label
        ResultadoLabel.Text = compromisso.ToString();
    }
}

// Definição da classe Compromisso
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