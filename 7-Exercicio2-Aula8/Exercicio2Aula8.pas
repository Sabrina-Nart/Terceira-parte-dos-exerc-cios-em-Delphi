unit Exercicio2Aula8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEx2Aula8CheckBox = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    cbMaiusculas: TCheckBox;
    cbLimparDireita: TCheckBox;
    cbLimparEsquerda: TCheckBox;
    btnMostrar: TButton;

    procedure btnMostrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ex2Aula8CheckBox: TEx2Aula8CheckBox;

implementation

{$R *.dfm}
/////////////////////////////////////////////
procedure TEx2Aula8CheckBox.btnMostrarClick(Sender: TObject);
   //Labeledit1 - EditLabel em vermelho nas propriedades para mudar o nome do label= um label e um edit juntos
Var
  Nome: string;   //Ctrl shift G forma uma v�riavel em cima
           //RadioButton = sele��o - ativa um e desativa o outro
begin      //RodioButton = parente da listboss = itens = cria os bot�es autom�tico
   Nome:=edtNome.Text;

   if cbMaiusculas.Checked then
      Nome:=Uppercase ( Nome )
   else
     if cbLimparEsquerda.Checked then
        Nome:=TrimLeft ( Nome )
     else
        if cbLimparEsquerda.Checked then
           Nome:=TrimRight ( Nome );
    //////////////////////////////////
     ShowMessage ( '[' +nome+ ']' );

end;
//////////////////////////////////////////////////////
end.

