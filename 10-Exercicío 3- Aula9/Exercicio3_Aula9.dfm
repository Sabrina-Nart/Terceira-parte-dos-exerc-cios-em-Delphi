object Ex3_Aula9: TEx3_Aula9
  Left = 0
  Top = 0
  Caption = 'Ex3_Aula9'
  ClientHeight = 214
  ClientWidth = 233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtNumero1: TLabeledEdit
    Left = 32
    Top = 48
    Width = 121
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero 1'
    TabOrder = 0
  end
  object btnFatorial: TButton
    Left = 32
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Fatorial'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnFatorialClick
  end
end
