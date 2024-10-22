namespace Aula02;

public partial class MainPage : ContentPage
{
	int count = 0;

	public MainPage()
	{
		InitializeComponent();
	}

	private void OnCounterClicked(object sender, EventArgs e)
	{
		count++;

		if (count == 1)
			CounterBtn.Text = $"Clicked {count} time";
		else
			CounterBtn.Text = $"Clicked {count} times";

		SemanticScreenReader.Announce(CounterBtn.Text);
	}

	void OnEntryTextChanged(object sender, TextChangedEventArgs e)
	{
		string oldText = e.OldTextValue;
		string newText = e.NewTextValue;
		string myText = Entry.Text;
	}

	void OnEntryCompleted(object sender, EventArgs e)
	{
		string text = ((Entry)sender).Text;
	}

	private async void OnNovoCompromissoClicked(object sender, EventArgs e)
	{
		// Navega para a página de compromisso (MainPage)
		await Navigation.PushAsync(new CompromissoPage());
	}
}

