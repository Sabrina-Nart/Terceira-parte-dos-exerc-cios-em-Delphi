unit Exercicio3_Aula9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEx3_Aula9 = class(TForm)
    edtNumero1: TLabeledEdit;
    btnFatorial: TButton;

    procedure btnFatorialClick(Sender: TObject);

  private
    { Private declarations }
    Function Fatorial (numero: integer): integer;

  public
    { Public declarations }
  end;

var
  Ex3_Aula9: TEx3_Aula9;

implementation

{$R *.dfm}

procedure TEx3_Aula9.btnFatorialClick(Sender: TObject); // FATORIAL

Var
  Numero1, receber: integer;

begin
    Numero1:=StrToInt(edtNumero1.Text);

    receber := Fatorial (Numero1);

    Showmessage  (IntToStr (receber));

end;

function TEx3_Aula9.Fatorial(numero: integer): integer;

Var
  I, Fat: integer;

begin
   Fat:=1;

   For I := 1 to numero do
      Fat := Fat * I;

   Result := Fat;

end;

end.
