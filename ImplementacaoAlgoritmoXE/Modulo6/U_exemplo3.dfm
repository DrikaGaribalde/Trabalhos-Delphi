object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo da Idade'
  ClientHeight = 278
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 23
    Top = 24
    Width = 96
    Height = 13
    Caption = 'Ano de &Nascimento:'
  end
  object lbl2: TLabel
    Left = 13
    Top = 60
    Width = 106
    Height = 13
    Caption = 'Ano '#218'ltimo &Anivers'#225'rio'
  end
  object lbl3: TLabel
    Left = 47
    Top = 141
    Width = 72
    Height = 13
    Caption = 'Anos de Idade:'
  end
  object edtNascimento: TEdit
    Left = 132
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNiver: TEdit
    Left = 132
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtIdade: TEdit
    Left = 132
    Top = 141
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object btnCalcular: TButton
    Left = 130
    Top = 96
    Width = 122
    Height = 25
    Caption = 'Calcular Idade'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
