object Form1: TForm1
  Left = 226
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Identifica'#231#227'o da Categoria do Nadador'
  ClientHeight = 128
  ClientWidth = 332
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
    Left = 25
    Top = 26
    Width = 30
    Height = 13
    Caption = 'Idade:'
  end
  object lbl2: TLabel
    Left = 137
    Top = 26
    Width = 106
    Height = 13
    Caption = 'Categoria Identificada:'
  end
  object lblCategoria: TLabel
    Left = 249
    Top = 26
    Width = 72
    Height = 13
    Caption = 'lblCategoria'
    Color = clRed
    ParentColor = False
    Visible = False
  end
  object edtIdade: TEdit
    Left = 65
    Top = 26
    Width = 65
    Height = 21
    TabOrder = 0
    OnChange = edtIdadeChange
  end
  object btn1: TButton
    Left = 49
    Top = 58
    Width = 217
    Height = 25
    Caption = 'Identificar a categoria do nadador'
    TabOrder = 1
    OnClick = btn1Click
  end
end
