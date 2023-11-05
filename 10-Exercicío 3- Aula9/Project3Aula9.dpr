program Project3Aula9;

uses
  Vcl.Forms,
  Exercicio3_Aula9 in 'Exercicio3_Aula9.pas' {Ex3_Aula9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEx3_Aula9, Ex3_Aula9);
  Application.Run;
end.
