namespace Compromisso;

public partial class MainPage : ContentPage
{
	int count = 0;

	public MainPage()
	{
		InitializeComponent();
	}

	private void OnSalvarClicked(object sender, EventArgs e) {
		Models.Compromisso compromisso = new();

		compromisso.Data = DataEntry.Text;
		compromisso.Hora = HoraEntry.Text;
		compromisso.Local = LocalEntry.Text;
		compromisso.Descricao = DescricaoEntry.Text;

		ResultadoLabel.Text = compromisso.ToString();
	}


}


