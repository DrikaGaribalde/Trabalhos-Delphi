object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'M'#233'dia Aritm'#233'tica'
  ClientHeight = 227
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 0
    Top = 16
    Width = 321
    Height = 25
    Caption = 'Informar N'#250'mero'
    TabOrder = 0
    OnClick = btn1Click
  end
  object mmoNumero: TMemo
    Left = 0
    Top = 56
    Width = 323
    Height = 121
    Align = alCustom
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object pnlResultado: TPanel
    Left = 0
    Top = 186
    Width = 323
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
end
