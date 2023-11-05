unit Exemplo1Aula9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TflmMedia = class(TForm)
    edtNota1: TLabeledEdit;
    edtNota2: TLabeledEdit;
    btnMedia: TButton;
    Label1: TLabel;

    procedure btnMediaClick(Sender: TObject);

  private //s� para um = fonte privada
    { Private declarations }

    function Media ( nota1, nota2: double ): double;
    //Depois devolve o n�mero double
    //Double = mesmo que real, tamb�m aceita inteiros = aceita os dois - ponto flutuante

/////////////////////////////////
  public //qualquer programador pode usar
    { Public declarations }
  end;

var
  flmMedia: TflmMedia;

implementation

{$R *.dfm}

{ TForm1 }
//crtl shift C = faz autom�tico
//////////////////////////////////////////////////
procedure TflmMedia.btnMediaClick(Sender: TObject);

Var
  n1, n2, m: double; //J� declarou aqui em cima

begin  //Fez a convrs�o
   n1:=StrToFloat ( edtNota1.Text ); //Mesmo que StrToInt,mas esse converte para inteiro
      //StrToFloat = para trocar para real = n�o devolve inteiro
   n2:=StrToFloat ( edtNota2.Text );

   m:=Media(n1, n2); //a posi��o altera
   ShowMessage ( FloatToStr (m) ); //Fazer o caminho inverso

    m:=Media(7, 8);
   ShowMessage ( FloatToStr (m) );

end;
//as duas s�o independentes = n�o se relacionam
/////////////////////////////////////////////////

function TflmMedia.Media(nota1, nota2: double): double; //Delphi criou, ele muda autom�tico
//O que o delphi cria ele deleta = procedure n�o se apaga
     //Nasce e morre aqui
Var
  calculo: double; //vari�vel s� para explica��o

begin
   calculo:= (nota1 + nota2) / 2;
   result:= calculo;

end;
////////////////////////////////////////////////////////
end.
