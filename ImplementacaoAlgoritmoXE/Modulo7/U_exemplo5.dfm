object Form1: TForm1
  Left = 251
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 171
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 210
    Height = 171
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 13
      Caption = '1'#186' Valor:'
    end
    object lbl2: TLabel
      Left = 16
      Top = 48
      Width = 40
      Height = 13
      Caption = '2'#186' Valor:'
    end
    object lbl3: TLabel
      Left = 64
      Top = 80
      Width = 9
      Height = 48
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edt1: TEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 0
      Top = 144
      Width = 209
      Height = 25
      Caption = 'Compare os dois n'#250'meros'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
end
