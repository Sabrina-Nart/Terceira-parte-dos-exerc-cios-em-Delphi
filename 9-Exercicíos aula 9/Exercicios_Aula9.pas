unit Exercicios_Aula9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEx_Aula9 = class(TForm)
    edtNumero1: TLabeledEdit;
    edtNumero2: TLabeledEdit;
    edtNumero5: TLabeledEdit;
    edtNumero3: TLabeledEdit;
    edtNumero4: TLabeledEdit;
    btnMedia: TButton;
    btnMaior: TButton;
    edtNumero8: TLabeledEdit;
    edtNumero7: TLabeledEdit;
    edtNumero6: TLabeledEdit;
    edtNumero9: TLabeledEdit;
    edtNumero10: TLabeledEdit;
    btnMenor: TButton;

    procedure btnMediaClick(Sender: TObject);
    procedure btnMaiorClick(Sender: TObject);
    procedure btnMenorClick(Sender: TObject);


  private //Só para um = fonte privada
    { Private declarations }

    Function Media (Nota1, Nota2: Double): Double; //Depois devolve o número double
             //Double = mesmo que real - também aceita inteiro
    Function CalcMaior (Num1, Num2, Num3: integer): integer;
    Function CalcMenor (Num6, Num7, Num8, Num9, Num10: integer): integer;


  public //Outros programadores podem mexer
    { Public declarations }
  end;

var
  Ex_Aula9: TEx_Aula9;

implementation

{$R *.dfm}

///////////////////////////////////////////////////////////////
procedure TEx_Aula9.btnMenorClick(Sender: TObject); // MENOR DE CINCO

Var
  num6, num7, num8, num9, num10, menor: integer;

begin
   Num6:=StrToInt(edtNumero6.Text);
   Num7:=StrToInt(edtNumero7.Text);
   Num8:=StrToInt(edtNumero8.Text);
   Num9:=10; //pega os três e compara com os dois
   Num10:=8;

   Menor := CalcMenor (num6, num7, num8, num9, num10);

   ShowMessage ( IntToStr(menor));

end;

function TEx_Aula9.CalcMenor(Num6, Num7, Num8, Num9, Num10: integer): integer;

Var
  Menor: integer;

begin
   Menor:=Num6;

   if (menor>num7) then
       menor:=num7
   else
      if (menor>num8) then
          menor:=num8
      else
         if (menor>num9) then
             menor:=num9
         else
            if (menor>num10) then
                menor:=num10;

   Result := Menor;

end;
/////////////////////////////////////////////////////////////

procedure TEx_Aula9.btnMaiorClick(Sender: TObject); //MAIOR DE 3 NÚMEROS

Var
  Num1, Num2, Num3, maior: integer;
begin
   Num1:=StrToInt(edtNumero3.Text);
   Num2:=StrToInt(edtNumero4.Text);
   Num3:=StrToInt(edtNumero5.Text);

   maior := CalcMaior (num1, num2, num3);

   ShowMessage ( IntToStr(maior));

end;

function TEx_Aula9.CalcMaior(Num1, Num2, Num3: integer): integer;

Var
  maior: integer;

begin
   Maior:=Num1;

   if (maior<num2) then
      maior:=num2
   else
      if (maior<num3) then
         maior:=num3;

   Result := (maior);

end;

//////////////////////////////////////////////////////////////
procedure TEx_Aula9.btnMediaClick(Sender: TObject); //CÁUCULO DA MÉDIA DE DOIS NÚMEROS

Var
  n1, n2, m: double; //Já declarou aqui em cima

begin  //Fez a conversão
   n1 := StrToFloat (edtnumero1.Text); //Mesmo que StrToInt, mas esse converte para inteiro
   n2 := StrToFloat (edtNumero2.Text); //StrToFloat = para trocar para real = não devolve inteiro

   m := Media (n1, n2); //A posição altera
   ShowMessage ( FloatToStr (m) ); //Fazer o caminho inverso

   m := Media(7, 8);
   ShowMessage ( FloatToStr (m) );

end;

// As duas são independentes
function TEx_Aula9.Media(Nota1, Nota2: double): double;
    //O que o Delphi cria, ele deleta = procedure não se apaga
Var //Nasce e morre aqui
  Calculo: Double; //Variável só para explicação

begin
   Calculo := (Nota1 + Nota2) / 2;

   Result := Calculo;

end;
//////////////////////////////////////////////////////////////
end.
