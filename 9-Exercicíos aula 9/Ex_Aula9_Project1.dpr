program Ex_Aula9_Project1;

uses
  Vcl.Forms,
  Exercicios_Aula9 in 'Exercicios_Aula9.pas' {Ex_Aula9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEx_Aula9, Ex_Aula9);
  Application.Run;
end.
