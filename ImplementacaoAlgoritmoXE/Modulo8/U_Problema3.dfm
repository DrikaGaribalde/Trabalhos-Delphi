object Form1: TForm1
  Left = 229
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consumo de Energia'
  ClientHeight = 395
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object strgrInfo: TStringGrid
    Left = 0
    Top = 0
    Width = 324
    Height = 313
    Align = alTop
    ColCount = 3
    FixedCols = 0
    RowCount = 12
    TabOrder = 0
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
  object btnCalcular: TButton
    Left = 0
    Top = 320
    Width = 324
    Height = 25
    Caption = 'Informe o consumo'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
end
