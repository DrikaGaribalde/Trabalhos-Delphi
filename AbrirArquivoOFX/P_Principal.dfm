object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 415
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 0
    Top = 48
    Width = 701
    Height = 105
    ItemHeight = 13
    TabOrder = 1
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 159
    Width = 685
    Height = 186
    Cursor = crDrag
    ColCount = 4
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GridLineWidth = 2
    Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 572
    Top = 351
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
end
