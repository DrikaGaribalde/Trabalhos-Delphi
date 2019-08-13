object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 2 - P'#225'gina 133'
  ClientHeight = 181
  ClientWidth = 242
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
    Left = 17
    Top = 24
    Width = 82
    Height = 13
    Caption = 'Valor do Produto:'
  end
  object edtValorProduto: TEdit
    Left = 105
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalcular: TButton
    Left = 17
    Top = 64
    Width = 209
    Height = 25
    Caption = 'Calcular o Valor do Produto'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object pnlValorProduto: TPanel
    Left = 0
    Top = 112
    Width = 242
    Height = 41
    Align = alCustom
    TabOrder = 2
  end
end
