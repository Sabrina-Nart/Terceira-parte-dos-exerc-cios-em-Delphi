program Exemplo2aula10Project1;

uses
  Vcl.Forms,
  Exemplo2Aula10 in 'Exemplo2Aula10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
