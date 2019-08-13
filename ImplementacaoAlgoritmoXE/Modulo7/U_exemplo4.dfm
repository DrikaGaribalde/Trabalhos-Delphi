object Form1: TForm1
  Left = 261
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Idade Eleitoral'
  ClientHeight = 178
  ClientWidth = 289
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
    Left = 32
    Top = 24
    Width = 96
    Height = 13
    Caption = 'Informe a sua idade:'
  end
  object edtIdade: TEdit
    Left = 136
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 32
    Top = 64
    Width = 225
    Height = 25
    Caption = 'Veja qual a sua classifica'#231#227'o'
    TabOrder = 1
    OnClick = btn1Click
  end
  object pnlVoto: TPanel
    Left = 32
    Top = 112
    Width = 225
    Height = 33
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
