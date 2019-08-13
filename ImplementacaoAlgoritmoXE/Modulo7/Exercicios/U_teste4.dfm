object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 4 - p'#225'gina 133'
  ClientHeight = 567
  ClientWidth = 281
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
    Left = 24
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Jogador 1:'
  end
  object lbl2: TLabel
    Left = 24
    Top = 64
    Width = 50
    Height = 13
    Caption = 'Jogador 2:'
  end
  object lbl3: TLabel
    Left = 24
    Top = 96
    Width = 50
    Height = 13
    Caption = 'Jogador 3:'
  end
  object edtJogador1: TEdit
    Left = 96
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edtJogador1Exit
  end
  object edtJogador2: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtJogador3: TEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object rgEstado: TRadioGroup
    Left = 24
    Top = 128
    Width = 193
    Height = 105
    Caption = 'Escolha o Estado: '
    Items.Strings = (
      'Estado 1'
      'Estado 2')
    TabOrder = 3
  end
  object btn1: TButton
    Left = 24
    Top = 248
    Width = 193
    Height = 25
    Caption = 'Calcular os Pontos'
    TabOrder = 4
    OnClick = btn1Click
  end
end
