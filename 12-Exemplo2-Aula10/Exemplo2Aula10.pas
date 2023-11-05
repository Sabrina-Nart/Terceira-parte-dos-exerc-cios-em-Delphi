unit Exemplo2Aula10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  numero1, numero2,resultado: Double;

begin //Ctrl I = arruma
      //TryStrToInt = usar toda essa coreção
   try
      numero1:=StrToInt(Edit1.Text); //Provocar um erro
      numero2:=StrToInt(Edit2.Text);
      resultado:=numero1/numero2;
      showMessage ('Não deve aparecer'); //Isso só acontece se der algum erro

      //try - except = erro mais genérico
   except //e = verificar que tipo de erro ocorreu
      on e:exception do begin
         ShowMessage ('Erro de convesão, tente nvamente');
         Resultado:=0;
      end;

      on e:exception do begin //e dá várias informações = e do tipo exception
         ShowMessage ('Erro :'+e.Message);//Se der erro, continua, se não para, mas sempre vai mostar um resultado
         Resultado:=0; //Para não aparecer um número aleatório

      end;

   end;

   ShowMessage ('Resultado: ' + FloatToStr (resultado));
   //ShowMessage ('Chegou aqui'); //Como está fora, sempre chega
//////////////////////////////////////////////////////////////////////

end;

procedure TForm1.Button2Click(Sender: TObject);

var
  numero3: double;
begin

   try //ctrl barra de espaço, fas altomático
      numero3:=StrToInt(Edit3.Text);
      ShowMessage ('Sucesso na conversão'); //Parece só se essa parte der certo

   except
      ShowMessage ('Erro de conversão');

   end;



end;

end.
