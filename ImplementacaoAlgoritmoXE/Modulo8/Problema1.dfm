object Form1: TForm1
  Left = 224
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Fatorial'
  ClientHeight = 350
  ClientWidth = 331
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
    Left = 16
    Top = 24
    Width = 90
    Height = 13
    Caption = 'N'#250'mero a Calcular:'
  end
  object edtFatorial: TEdit
    Left = 112
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalcular: TButton
    Left = 240
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object pnlFatorial: TPanel
    Left = 0
    Top = 292
    Width = 331
    Height = 58
    Align = alBottom
    TabOrder = 2
  end
  object mmo1: TMemo
    Left = 0
    Top = 64
    Width = 329
    Height = 225
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
