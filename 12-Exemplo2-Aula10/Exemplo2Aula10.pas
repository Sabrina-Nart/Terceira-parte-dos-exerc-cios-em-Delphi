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
      //TryStrToInt = usar toda essa core��o
   try
      numero1:=StrToInt(Edit1.Text); //Provocar um erro
      numero2:=StrToInt(Edit2.Text);
      resultado:=numero1/numero2;
      showMessage ('N�o deve aparecer'); //Isso s� acontece se der algum erro

      //try - except = erro mais gen�rico
   except //e = verificar que tipo de erro ocorreu
      on e:exception do begin
         ShowMessage ('Erro de conves�o, tente nvamente');
         Resultado:=0;
      end;

      on e:exception do begin //e d� v�rias informa��es = e do tipo exception
         ShowMessage ('Erro :'+e.Message);//Se der erro, continua, se n�o para, mas sempre vai mostar um resultado
         Resultado:=0; //Para n�o aparecer um n�mero aleat�rio

      end;

   end;

   ShowMessage ('Resultado: ' + FloatToStr (resultado));
   //ShowMessage ('Chegou aqui'); //Como est� fora, sempre chega
//////////////////////////////////////////////////////////////////////

end;

procedure TForm1.Button2Click(Sender: TObject);

var
  numero3: double;
begin

   try //ctrl barra de espa�o, fas altom�tico
      numero3:=StrToInt(Edit3.Text);
      ShowMessage ('Sucesso na convers�o'); //Parece s� se essa parte der certo

   except
      ShowMessage ('Erro de convers�o');

   end;



end;

end.
