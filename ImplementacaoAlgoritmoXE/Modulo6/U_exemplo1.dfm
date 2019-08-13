object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Resto da Divis'#227'o'
  ClientHeight = 148
  ClientWidth = 229
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
    Left = 3
    Top = 10
    Width = 51
    Height = 13
    Caption = 'Dividendo:'
  end
  object lbl2: TLabel
    Left = 22
    Top = 42
    Width = 32
    Height = 13
    Caption = 'Divisor'
  end
  object lbl3: TLabel
    Left = 26
    Top = 114
    Width = 28
    Height = 13
    Caption = 'Resto'
  end
  object edtDividendo: TEdit
    Left = 66
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edtDividendoKeyPress
  end
  object edtDivisor: TEdit
    Tag = 1
    Left = 66
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtResto: TEdit
    Left = 66
    Top = 114
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object btnCalculo: TBitBtn
    Left = 26
    Top = 74
    Width = 161
    Height = 25
    Caption = 'Calcular o resto da divis'#227'o'
    TabOrder = 2
    OnClick = btnCalculoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
end
