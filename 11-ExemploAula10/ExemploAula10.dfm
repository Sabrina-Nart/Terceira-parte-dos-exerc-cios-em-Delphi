object ExRadioButon: TExRadioButon
  Left = 0
  Top = 0
  Caption = 'ExRadioButon'
  ClientHeight = 379
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rbOpcao1: TRadioButton
    Left = 24
    Top = 16
    Width = 113
    Height = 17
    Caption = 'Op'#231#227'o 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object rbOpcao2: TRadioButton
    Left = 153
    Top = 16
    Width = 113
    Height = 17
    Caption = 'Op'#231#227'o 2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnTeste: TButton
    Left = 8
    Top = 55
    Width = 225
    Height = 25
    Caption = 'Teste'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnTesteClick
  end
  object rgOpcoes: TRadioGroup
    Left = 8
    Top = 206
    Width = 225
    Height = 107
    Caption = ' Op'#231#245'es'
    Color = clSkyBlue
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Op'#231#227'o 0'
      'Op'#231#227'o 1'
      'Op'#231#227'o 2'
      'Op'#231#227'o 3')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    WordWrap = True
  end
  object btnTeste2: TButton
    Left = 8
    Top = 328
    Width = 225
    Height = 25
    Caption = 'Teste 2'
    TabOrder = 4
    OnClick = btnTeste2Click
  end
  object edtNovaOpcao: TEdit
    Left = 8
    Top = 108
    Width = 225
    Height = 21
    TabOrder = 5
  end
  object btnadicionar: TButton
    Left = 8
    Top = 147
    Width = 225
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = btnadicionarClick
  end
  object Panel1: TPanel
    Left = 272
    Top = 16
    Width = 281
    Height = 337
    Caption = 'Panel1'
    Color = clMoneyGreen
    ParentBackground = False
    ShowCaption = False
    TabOrder = 7
    object rgOpcoes2: TRadioGroup
      Left = 24
      Top = 51
      Width = 185
      Height = 105
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Maiusculas'
        'Minusculas'
        'Primeira Maiuscula')
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 24
      Top = 24
      Width = 185
      Height = 21
      TabOrder = 1
    end
    object btnMostrar: TButton
      Left = 24
      Top = 165
      Width = 185
      Height = 25
      Caption = 'Mostrar'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnMostrarClick
    end
  end
end
