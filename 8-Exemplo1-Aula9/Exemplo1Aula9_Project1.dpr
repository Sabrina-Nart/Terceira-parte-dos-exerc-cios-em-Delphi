program Exemplo1Aula9_Project1;

uses
  Vcl.Forms,
  Exemplo1Aula9 in 'Exemplo1Aula9.pas' {flmMedia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TflmMedia, flmMedia);
  Application.Run;
end.
