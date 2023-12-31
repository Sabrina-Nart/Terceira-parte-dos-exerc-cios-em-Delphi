unit ExemploAula10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TExRadioButon = class(TForm)
    rbOpcao1: TRadioButton;
    rbOpcao2: TRadioButton;
    btnTeste: TButton;
    rgOpcoes: TRadioGroup;
    btnTeste2: TButton;
    edtNovaOpcao: TEdit;
    btnadicionar: TButton;
    Panel1: TPanel;
    btnMostrar: TButton;
    rgOpcoes2: TRadioGroup;
    edtNome: TEdit;

    procedure btnTesteClick(Sender: TObject);
    procedure btnTeste2Click(Sender: TObject);
    procedure btnadicionarClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  ExRadioButon: TExRadioButon;

implementation

{$R *.dfm} //Radio Group come�a do ZERO
////////////////////////////////////////////////
procedure TExRadioButon.btnadicionarClick(Sender: TObject);//Adicionar itens

begin //saber se um Item j� est� dentro = vai dentro da lista ver se o item j� existe
    if rgOpcoes.Items.IndexOf (edtNovaOpcao.Text )=-1 then
      Begin
         rgopcoes.Items.Add( edtNovaOpcao.Text );
         edtNovaOpcao.Text:= ' '; //Limpar a linha depois de escrito

      end
   else
      ShowMessage ('J� existe');

end;
///////////////////////////////////////////////////////////////
procedure TExRadioButon.btnMostrarClick(Sender: TObject);

var
   nome: string; //showhint desativa a parte escrita do Radio Button

begin
   nome:=(edtNome.Text);

    If rgOpcoes2.itemIndex=0 then
       begin
          Nome := Uppercase ( nome );
          ShowMessage (nome);
       end
    else
       If rgOpcoes2.itemIndex=1 then
          begin
             Nome := Uppercase ( nome );
             ShowMessage (nome);
          end
    else
       If rgOpcoes2.itemIndex=2 then
          begin
              Nome[1] := Upcase ( nome[1] );
              ShowMessage (nome);
          end;

end;
///////////////////////////////////////////////////////////////////
procedure TExRadioButon.btnTeste2Click(Sender: TObject);

begin
    case rgOpcoes.ItemIndex of //Pode ser If ou Case
        -1 : ShowMessage ('Nenhum seleconado');
         0 : ShowMessage ('Op��o 1 selecionado');
         2 : ShowMessage ('Op��o 2 selecionado');
         3 : ShowMessage ('Op��o 3 selecionado');
         4 : ShowMessage ('Op��o 4 selecionado')
    else //Come�a do zero, por isso coloca + 1
        ShowMessage ('Op��o ' + IntToStr(rgOpcoes.ItemIndex + 1) + ' selecioado');
        //rgOpcoes.ItemIndex = tem que converter para string, porque � inteiro
    end;

end;
/////////////////////////////////////////////////////////////
procedure TExRadioButon.btnTesteClick(Sender: TObject); //Testar os Radio button

begin
    if rbOpcao1.Checked then //Testa cada u para ver se est� selecionado
       ShowMessage ('Bot�o 1 selecionado')
    else
       if rbOpcao2.Checked then
          ShowMessage ('Bot�o 2 selecionado');

end;
//////////////////////////////////////////////////////////
end.
