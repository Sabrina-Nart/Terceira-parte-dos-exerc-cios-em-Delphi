program ExemploAula10Project1;

uses
  Vcl.Forms,
  ExemploAula10 in 'ExemploAula10.pas' {ExRadioButon};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TExRadioButon, ExRadioButon);
  Application.Run;
end.
