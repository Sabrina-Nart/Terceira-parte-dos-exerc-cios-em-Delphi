program Exercicio2Aula8Project;

uses
  Vcl.Forms,
  Exercicio2Aula8 in 'Exercicio2Aula8.pas' {Ex2Aula8CheckBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEx2Aula8CheckBox, Ex2Aula8CheckBox);
  Application.Run;
end.
